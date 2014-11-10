using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class ClienteParaReserva : ABM_de_Cliente.SeleccionarCliente
    {
        public ClienteParaReserva()
        {
            InitializeComponent();
        }

        public ClienteParaReserva(NavegableForm o):base(o)
        {
            accion="Seleccionar";
            InitializeComponent();
        }

        public override void  gridClickAction(DataGridViewCellCollection celdas)
        {
 	         ((GenerarReserva) this.Owner).ClienteId=Convert.ToInt32(celdas["id"].Value);
             ((GenerarReserva)this.Owner).FinalizarGuardado();
             Close();
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
