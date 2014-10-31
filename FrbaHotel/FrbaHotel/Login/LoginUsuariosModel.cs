using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.Login
{
    public partial class LoginUsuarios
    {
        private string username, password;
        private Hotel hotel;
        private Rol rol;

        public List<Object> Roles
        {
            get
            {
                return Sesion.Usuario.Roles.Cast<Object>().ToList();
            }
        }

        public List<Object> Hoteles
        {
            get
            {
                return Sesion.Usuario.Hoteles.Cast<Object>().ToList();
            }
        }

        public void iniciarSesion()
        {
            Sesion.iniciar(username, password);
        }

        public void acceder()
        {
            if (rol == null || hotel == null)
                throw new ExcepcionFrbaHoteles("Debe seleccionar un Rol y un Hotel para acceder");
            Sesion.Usuario.Rol = rol;
            Sesion.Usuario.Hotel = hotel;
            new SeleccionFuncionalidad(this).StandaloneOpen();
        }
    }
}