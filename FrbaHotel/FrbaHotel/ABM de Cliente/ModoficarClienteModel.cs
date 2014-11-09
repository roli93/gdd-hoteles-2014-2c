using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class ModificarCliente : AltaCliente
    {

        private int id;
        private bool habilitado;

        public void CargarCliente()
        {
            HomeClientes.buscarPorId(id, out nombre, out apellido, out tipoId, out nroId, out mail, out telefono, out calle, out localidad, out fechaNacimiento, out pais, out habilitado);
        }

        public override void Guardar()
        {
            ValidarErrores();
            HomeClientes.actualizarCliente(nombre, apellido, mail, telefono, calle, localidad, fechaNacimiento, pais, habilitado);

        }


    }
}