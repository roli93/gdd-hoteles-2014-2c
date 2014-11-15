using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.ABM_de_Cliente;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class AltaClientePorReserva : AltaCliente
    {
        public AltaClientePorReserva()
        {
            InitializeComponent();
        }

        public AltaClientePorReserva(NavegableForm o, int idHabitacion): base(o)
        {
            this.idHabitacion = idHabitacion;
            InitializeComponent();
        }

        protected int idHabitacion;


        private void button2_Click(object sender, EventArgs e)
        {
            if (!HuboErrores())
            {
                HomeReservas.agregarClienteHabitacion(idHabitacion, DatabaseAdapter.getIdUltimaInsercion("Cliente"));
                ((RegistrarIngreso)this.Owner).ActualizarGrilla();
                Close();
            }
        }
    }
}
