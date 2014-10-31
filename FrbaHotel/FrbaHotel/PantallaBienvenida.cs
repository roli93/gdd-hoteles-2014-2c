using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Login;

namespace FrbaHotel
{
    public partial class PantallaBienvenida : NavegableForm
    {
        public PantallaBienvenida():base()
        {
            
            InitializeComponent();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
           new ABM(this, "un", "cliente").StandaloneOpen();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoginUsuarios l= new LoginUsuarios(this);
            l.StandaloneOpen();
        }
    }
}
            