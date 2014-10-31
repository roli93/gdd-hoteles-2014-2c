using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

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

    public partial class AltaUsuario : NavegableForm
    {
        private string confirmarPassword, password, nombre, apellido, nroDocumento, mail, telefono, direccion,username;
        decimal dia, mes, anio;
        private Hotel hotel;
        private Rol rol;
        private TipoDocumento tipoDni;

        public void Limpiar()
        {
            new AltaUsuario(this).FinalStandaloneOpen();
        }

    }
}
