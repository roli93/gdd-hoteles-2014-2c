using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class AltaUsuario
    {
        protected string confirmarPassword, password, nombre, apellido, nroDocumento, mail, telefono, direccion,username;
        protected DateTime fechaNacimiento=DateTime.Now;
        protected List<Hotel> hoteles = new List<Hotel>();
        protected List<Rol> roles = new List<Rol>();
        protected TipoDocumento tipoDni;

        protected virtual void Guardar()
        {
            ValidarErrores();
            HomeUsuarios.registrarUsuario(username, getSha256(password), roles, nombre, apellido, tipoDni, nroDocumento, mail, telefono, direccion, fechaNacimiento, hoteles);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(
                new string[]{"Password","Nombre","Apellido","Documento","Mail","Teléfono","Dirección","Nombre de Usuario","Tipo Documento"},
                new object[]{password, nombre, apellido, nroDocumento, mail, telefono, direccion, username, tipoDni});
            ValidarDoblePassword();
            ValidarNumericos(nroDocumento, telefono);
            ValidarCollecionVacia<Rol>("Roles", roles);
            ValidarCollecionVacia<Hotel>("Hoteles", hoteles);
        }

        public void ValidarDoblePassword()
        {
            if (password != confirmarPassword)
                errorMessage += "Las contraseñas ingresadas no coinciden\n";
        }

    }
}
