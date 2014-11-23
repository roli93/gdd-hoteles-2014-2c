using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.ABM_de_Cliente;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class AsistenteClientesRepetidos : Alta
    {
        List<Cliente> clientes,clientesEliminados;
        int idCliente;
        Action<DataGridViewCellCollection> gridAction;
        DataGridViewCellEventArgs clienteSeleccionado;

        public AsistenteClientesRepetidos()
        {
            InitializeComponent();
        }

        public AsistenteClientesRepetidos(NavegableForm o, id idCliente):base(o)
        {
            this.idCliente=idCliente;
            InitializeComponent();
        }

        private void AsistenteClientesRepetidos_Load(object sender, EventArgs e)
        {
            clientes = HomeClientes.clientesRepetidos(idCliente);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            gridAction = borrarCliente;
            operacionConSeleccionado(dataGridView1, clienteSeleccionado);
        }

        public void borrarCliente(DataGridViewCellCollection celdas)
        {
            Cliente aBorrar;
            aBorrar = clientes.Find((c) => c.Id.Equals(Convert.ToInt32(celdas["ID"].Value)));
            clientesEliminados.Add(aBorrar);
            clientes.Remove(aBorrar);
            ActualizarGrilla();
        }

        public void editarCliente(DataGridViewCellCollection celdas)
        {
            new EditarClienteRepetido(this, clientes.Find((c) => c.Id.Equals(Convert.ToInt32(celdas["ID"].Value)))).OpenDialogue();
        }


        public void ActualizarGrilla()
        {
            DataTable datos = new DataTable();
            datos.Clear();
            datos.Columns.Add("Tipo ID");
            datos.Columns.Add("Número ID");
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Apellido");
            datos.Columns.Add("Mail");

            foreach (Cliente cliente in clientes)
            {
                datos.Rows.Add(new object[] { cliente.TipoIdentificacion.Descripcion, cliente.NumeroId, cliente.Nombre, cliente.Apellido, cliente.Mail });
            }

            cargarGrilla(dataGridView1, datos);
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            clienteSeleccionado = e;
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            gridAction.Invoke(celdas);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            gridAction = editarCliente;
            operacionConSeleccionado(dataGridView1, clienteSeleccionado);
        }

        public void ValidarRepetidos()
        {
            if(clientes.Exists((cliente) => estaRepetido(cliente)))
                errorMessage+="Los clientes siguen teniendo nímero y tipo de ID repetidos";
        }

        private Boolean estaRepetido(Cliente cliente)
        {
            return clientes
                .Where<Cliente>((c) => { return c.NumeroId.Equals(cliente.NumeroId) && c.TipoIdentificacion.Equals(cliente.TipoIdentificacion); })
                .Count()>1;
        }

        public override void ValidarErroresConcretos()
        {
            ValidarRepetidos();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            

        }

        public void Persistir()
        {
            ValidarErrores();
            foreach (Cliente cliente in clientesEliminados)
                HomeClientes.bajaCliente(cliente.Id);

        }

    }
}
