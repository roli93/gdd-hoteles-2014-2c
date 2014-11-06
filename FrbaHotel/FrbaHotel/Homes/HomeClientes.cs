using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;
using FrbaHotel.Dominio;

namespace FrbaHotel.Homes
{
    public class HomeClientes:Home
    {
        public static void registrarCliente(string nombre, string apellido, TipoDocumento tipoId, string nroId, string mail, string telefono, string calle,string localidad, DateTime fechaNacimiento, Pais pais)
        {
            DatabaseAdapter.insertarDatosEnTabla("cliente", nombre, apellido, tipoId.Id, nroId, mail, telefono, calle, localidad, fechaNacimiento);
        }

    }
}
