using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class AltaHabitacion : Alta
    {
        public AltaHabitacion()
        {
            InitializeComponent();
        }

        public AltaHabitacion(NavegableForm owner)
            : base(owner)
        {
            InitializeComponent();
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void Aceptar(object sender, EventArgs e)
        {

        }

        private void Cancelar(object sender, EventArgs e)
        {

        }
            

    }
}
