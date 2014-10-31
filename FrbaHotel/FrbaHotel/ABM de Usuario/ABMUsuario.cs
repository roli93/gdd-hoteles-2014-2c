using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class ABMUsuario : ABM
    {
        public ABMUsuario()
        {
            InitializeComponent();
        }

        public ABMUsuario(NavegableForm owner):base(owner,"un","usuario")
        {
            InitializeComponent();
        }
        
        private void ABMUsuario_Load(object sender, EventArgs e)
        {

        }

        public override void alta()
        {
            new AltaUsuario(this).FinalStandaloneOpen();
        }
    }
}
