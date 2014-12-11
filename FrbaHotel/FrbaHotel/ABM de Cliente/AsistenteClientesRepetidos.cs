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
        List<Cliente> clientes,clientesEliminados=new List<Cliente>();
        int idCliente;
        Action<DataGridViewCellCollection> gridAction;
        DataGridViewCellEventArgs clienteSeleccionado;
        TipoDocumento tipoID;
        string nroID,Mail;

        public AsistenteClientesRepetidos()
        {
            InitializeComponent();
        }

        public AsistenteClientesRepetidos(NavegableForm o, int idCliente, string mail):base(o)
        {
            this.idCliente=idCliente;
            this.Mail=mail;
            InitializeComponent();
        }

        private void AsistenteClientesRepetidos_Load(object sender, EventArgs e)
        {
            clientes = HomeClientes.clientesRepetidos(idCliente);
            tipoID=clientes[0].TipoIdentificacion;
            nroID = clientes[0].NumeroId;
            ActualizarGrilla();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            gridAction = borrarCliente;
            operacionConSeleccionado(dataGridView1, clienteSeleccionado);
        }

        public void borrarCliente(DataGridViewCellCollection celdas)
        {
            Cliente aBorrar;
            aBorrar = clientes.Find((c) => c.Id.Equals(Convert.ToInt32(celdas["Código"].Value)));
            clientesEliminados.Add(aBorrar);
            clientes.Remove(aBorrar);
            ActualizarGrilla();
        }

        public void editarCliente(DataGridViewCellCollection celdas)
        {
            new EditarClienteRepetido(this, clientes.Find((c) => c.Id.Equals(Convert.ToInt32(celdas["Código"].Value)))).OpenDialogue();
        }


        public void ActualizarGrilla()
        {
            DataTable datos = new DataTable();
            datos.Clear();
            datos.Columns.Add("Código");
            datos.Columns.Add("Tipo Identificación");
            datos.Columns.Add("Número Identificación");
            datos.Columns.Add("Nombre");
            datos.Columns.Add("Apellido");
            datos.Columns.Add("Mail");

            foreach (Cliente cliente in clientes)
            {
                datos.Rows.Add(new object[] {cliente.Id, cliente.TipoIdentificacion.Descripcion, cliente.NumeroId, cliente.Nombre, cliente.Apellido, cliente.Mail });
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
                errorMessage+="Los clientes siguen teniendo número y tipo de ID o mail repetidos";
        }

        private Boolean estaRepetido(Cliente cliente)
        {
            return clientes
                .Where<Cliente>((c) => { return (c.NumeroId.Equals(cliente.NumeroId) && c.TipoIdentificacion.Equals(cliente.TipoIdentificacion))||c.Mail.Equals(cliente.Mail); })
                .Count()>1;
        }

        public override void ValidarErroresConcretos()
        {
            ValidarRepetidos();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Persistir);
        }

        public void Persistir()
        {
            ValidarErrores();
            foreach (Cliente cliente in clientesEliminados)
                HomeClientes.bajaClienteRepetido(cliente.Id);
            foreach (Cliente cliente in clientes)
            {
                int error = 0;
                if (cliente.NumeroId != nroID || !cliente.TipoIdentificacion.Equals(tipoID))
                    error = HomeClientes.validarUnicidadClienteARepararID(cliente.Id, cliente.TipoIdentificacion, cliente.NumeroId);
                if (error == 1)
                    throw new ExcepcionFrbaHoteles("El numero de identificación " + cliente.NumeroId +
                                                    " y el tipo de identificación  " + cliente.TipoIdentificacion.Descripcion +
                                                    "\n ya han sido utilizados por otro cliente almacenado. Por favor, cámbielos");
                if (!cliente.Mail.Equals(Mail))
                    error = HomeClientes.validarUnicidadClienteARepararMail(cliente.Id, cliente.Mail);
                if (error == 1)
                    throw new ExcepcionFrbaHoteles("El mail " + cliente.Mail +
                                                   "\n ya ha sido utilizado por otro cliente almacenado.\nPor favor, cámbielo");
            }
            foreach (Cliente cliente in clientes)
                HomeClientes.repararClienteRepetido(cliente.Id,cliente.TipoIdentificacion,cliente.NumeroId,cliente.Mail);
            HomeClientes.limpiarExRepetidos(tipoID,nroID,Mail);
            ((SeleccionarCliente)Owner).Buscar();
            Close();
        }

    }
}
