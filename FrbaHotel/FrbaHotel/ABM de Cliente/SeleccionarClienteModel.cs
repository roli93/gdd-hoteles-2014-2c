using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class SeleccionarCliente
    {
        private string nombre="", apellido="", mail="", nroId="";
        private TipoDocumento tipoId=new TipoDocumento(-1,"");
        DataTable clientes;

        public void Buscar()
        {
            ValidarErrores();
            clientes = HomeClientes.buscarClientes(nombre, apellido, mail, nroId, tipoId);
            cargarGrilla(dataGridView1, clientes);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarNumericos(nroId);
        }

    }
}