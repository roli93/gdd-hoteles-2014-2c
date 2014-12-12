using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class ClienteParaReserva : ABM_de_Cliente.SeleccionarCliente
    {
        protected int idhabitacion;

        public ClienteParaReserva()
        {
            InitializeComponent();
        }

        public ClienteParaReserva(NavegableForm o, int idHabitacionreservada):base(o)
        {
            this.idhabitacion = idHabitacionreservada;
            accion="Seleccionar";
            InitializeComponent();
        }

        public override void  gridClickAction(DataGridViewCellCollection celdas)
        {
            if (celdas["correcto"].Value.ToString() == "N")
                MessageBox.Show("Existen varios clientes con el tipo\n" +
                                "y número de identificacion del cliente\n" +
                                "seleccionado. Por favor corriga esto desde\n" +
                                "el Administrador de Clientes o contáctese\n" +
                                "con el personal de la compañía para que\n" +
                                "resuelvan esta inconsistencia", "Error");
            else
            {
                try
                {
                    HomeReservas.agregarClienteHabitacion(idhabitacion, Convert.ToInt32(celdas["id"].Value));
                    ((RegistrarIngreso)this.Owner).ActualizarGrilla();
                    Close();
                }
                catch (ExcepcionFrbaHoteles e)
                {
                    MessageBox.Show(e.Message, "Error");
                }
            }
 	         
        }

        private void ClienteParaReserva_Load(object sender, EventArgs e)
        {
            labelApellido.Hide();
            labelNombre.Hide();
            _apellido.Hide();
            _nombre.Hide();
        }

    }
}
