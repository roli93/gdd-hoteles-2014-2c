using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class SeleccionarUsuario
    {
        private string nombre="", apellido="", email="",username="";
        private Rol rol;
        private Hotel hotel;
        private DataTable usuarios;

        public void Buscar()
        {
            ValidarErrores();
            usuarios= HomeUsuarios.buscarUsuarios(nombre, apellido, email, username, rol, hotel);
        }


    }
}