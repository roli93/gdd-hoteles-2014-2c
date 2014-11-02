using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.ABM_de_Usuario
{

    public class TipoDocumento
    {
        public int Id;
        public string Descripcion;

        public TipoDocumento(int id, string descripcion)
        {
            Id = id;
            Descripcion = descripcion;
        }
    }

    public partial class AltaUsuario
    {
        private string confirmarPassword, password, nombre, apellido, nroDocumento, mail, telefono, direccion,username;
        DateTime fechaNacimiento;
        private Hotel hotel;
        private Rol rol;
        private TipoDocumento tipoDni;

        private void Guardar()
        {
            ValidarErrores();
            DatabaseAdapter.insertarDatosEnTabla("usuario", username, password, rol.Id, nombre, apellido, tipoDni.Id, nroDocumento, mail, telefono, direccion, fechaNacimiento, hotel.Id);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(
                new string[]{"Password","Nombre","Apellido","Documento","Mail","Teléfono","Dirección","Nombre de Usuario","Hotel","Rol","Tipo Documento"},
                new object[]{password, nombre, apellido, nroDocumento, mail, telefono, direccion, username, hotel, rol, tipoDni});
            ValidarDoblePassword();
            ValidarNumericos(nroDocumento, telefono);
        }

        public void ValidarDoblePassword()
        {
            if (password != confirmarPassword)
                errorMessage += "Las contraseñas ingresadas no coinciden\n";
        }


    }
}
