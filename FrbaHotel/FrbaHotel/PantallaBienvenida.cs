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
        ExcepcionFrbaHoteles exc = new ExcepcionFrbaHoteles("caca");


        public PantallaBienvenida():base()
        {
            InitializeComponent();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Sesion.iniciar("Guest", "");
            Sesion.Usuario.Rol = Sesion.Usuario.Roles.ElementAt<Rol>(0);//Asigna el único rol del usuario Guest que es Guest :P
            new SeleccionFuncionalidad(this).StandaloneOpen(); ;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new LoginUsuarios(this).StandaloneOpen();
        }
    }
}
            