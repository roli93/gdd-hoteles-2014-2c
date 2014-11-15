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

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class AltaClientePorReserva : AltaCliente
    {
        public AltaClientePorReserva()
        {
            InitializeComponent();
        }

        public AltaClientePorReserva(NavegableForm o): base(o)
        {
            InitializeComponent();
        }


        private void button2_Click(object sender, EventArgs e)
        {
            if (!HuboErrores())
            {
                ((GenerarReserva)this.Owner).ClienteId = DatabaseAdapter.getIdUltimaInsercion("Cliente");
                ((GenerarReserva)this.Owner).FinalizarGuardado();
                Close();
            }
        }
    }
}
