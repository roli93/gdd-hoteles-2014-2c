using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Rol
{
    public partial class ABMRol : ABM
    {
        public ABMRol()
        {
            InitializeComponent();
        }

        public ABMRol(NavegableForm owner)
            : base(owner, "un", "Rol")
        {
            InitializeComponent();
        }

        private void ABMRol_Load(object sender, EventArgs e)
        {

        }

        public override void alta()
        {
            new AltaRol(this).FinalStandaloneOpen();
        }

        public override void baja()
        {
            new SeleccionarRol(this, "Eliminar").StandaloneOpen();
        }

        public override void modificacion()
        {
            new SeleccionarRol(this, "Editar").StandaloneOpen();
        }

    }
}
