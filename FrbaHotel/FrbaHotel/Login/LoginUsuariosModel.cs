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
            if (username == null || password == null)
                throw new ExcepcionFrbaHoteles("Debe ingresar su nombre de usuario y contraseña");
            Sesion.iniciar(username, password);
            bindCombo(comboRoles, Roles);
            bindCombo(comboHoteles, Hoteles);
            foreach (Control control in firstSet)
                control.Hide();
            foreach (Control control in secondSet)
                control.Show();
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