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

    public struct TipoDocumento
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
        int dia=1, mes=1, anio=1999;
        private Hotel hotel=new Hotel(-1,"");
        private Rol rol=new Rol(-1,"");
        private TipoDocumento tipoDni=new TipoDocumento(-1,"");

        private void Guardar()
        {
            //ValidarErrores();
            object[] o = new object[] { null };
            DatabaseAdapter.insertarDatosEnTabla("usuario", username, password, rol.Id, nombre, apellido, tipoDni.Id, nroDocumento, mail, telefono, direccion, new DateTime(anio, mes, dia), hotel.Id);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(
                new string[]{"Password","Nombre","Apellido","Documento","Mail","Teléfono","Dirección","Nombre de Usuario","Hotel","Rol","Tipo Documento"},
                new object[]{password, nombre, apellido, nroDocumento, mail, telefono, direccion, username, hotel, rol, tipoDni});
            ValidarNumericos(nroDocumento, telefono);
            ValidarFechas(dia, mes, anio);
        }
    }
}
