using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Login;
using FrbaHotel.ABM_de_Usuario;

namespace FrbaHotel
{
    public partial class PantallaBienvenida : NavegableForm
    {
        private int codigoGuest;

        public PantallaBienvenida(int codigoGuest):base()
        {
            this.codigoGuest = codigoGuest;
            InitializeComponent();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            /*loginHuesped();
            new SeleccionFuncionalidad(this).StandaloneOpen();*/
            new ABMUsuario(this).StandaloneOpen();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new LoginUsuarios(this).StandaloneOpen();
        }
    }
}
            