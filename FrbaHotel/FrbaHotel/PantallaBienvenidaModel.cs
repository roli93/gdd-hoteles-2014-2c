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
        public void loginHuesped()
        {
            Rol rol = new Rol(codigoGuest,"Guest");
            Usuario huesped = new Usuario(-1, "Guest");
            huesped.Rol = rol;
            Sesion.Usuario = huesped;
        }
    }
}
