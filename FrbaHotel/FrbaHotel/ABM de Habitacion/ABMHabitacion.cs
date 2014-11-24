using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class ABMHabitacion : ABM
    {
        public ABMHabitacion()
        {
            InitializeComponent();
        }

        public ABMHabitacion(NavegableForm owner)
            : base(owner, "una", "habitacion")
        {
            InitializeComponent();
        }

        private void ABMHabitacion_Load(object sender, EventArgs e)
        {

        }

        public override void alta()
        {
            new AltaHabitacion(this).FinalStandaloneOpen();
        }

        public override void modificacion()
        {
           new SeleccionarHabitacion(this, "Editar").StandaloneOpen();
        }

        public override void baja()
        {
           new SeleccionarHabitacion(this, "Eliminar").StandaloneOpen();
        }


    }
}
