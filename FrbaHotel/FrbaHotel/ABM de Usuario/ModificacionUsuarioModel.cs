using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class ModificacionUsuario 
    {
        private int IdUsuario;
        private List<Rol> rolesOriginales= new List<Rol>();
        private List<Hotel> hotelesOriginales= new List<Hotel>();
        private string passOriginalEncriptado;

        public void CargarUsuario()
        {
            HomeUsuarios.buscarPorId(IdUsuario, out username, out password, out roles, out nombre, out apellido, out tipoDni, out nroDocumento, out mail, out telefono, out direccion, out fechaNacimiento, out hoteles);
            rolesOriginales.AddRange(roles);
            hotelesOriginales.AddRange(hoteles);
            _username.Text = username;
            passOriginalEncriptado = password;
          
        }

        protected override void Guardar()
        {
            if (noCambioPW())
            {                               //Esta mierda es para q no tire q el string es muy alrgo al validar
                string oldPW = password;
                confirmarPassword = password = "a";
                ValidarErrores();
                confirmarPassword = password = oldPW;
            }
            else
                ValidarErrores();
            HomeUsuarios.actualizarUsuario(IdUsuario, username, passwordEncriptado(), rolesOriginales, roles, nombre, apellido, tipoDni, nroDocumento, mail, telefono, direccion, fechaNacimiento, hotelesOriginales, hoteles);
        }

        public string passwordEncriptado()
        {
            if (noCambioPW())
                return passOriginalEncriptado;
            else
                return getSha256(password);
        }

        public bool noCambioPW()
        {
            return password.Equals(passOriginalEncriptado);
        }

    }
}
