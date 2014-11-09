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
            DatabaseAdapter.insertarDatosEnTabla("cliente", nombre, apellido, tipoId.Id, nroId, mail, telefono, calle, localidad, fechaNacimiento,true);
        }

        public static DataTable buscarClientes(string nombre, string apellido, string email, string nroId, TipoDocumento tipoId )
        {/*TODO
            return DatabaseAdapter.traerDataTable("buscar_clientes", nombre, apellido, email, nroId, tipoId.Id);
          */
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("Nombre");
            ej.Columns.Add("ID");
            ej.Columns.Add("Edad");
            ej.Columns.Add("apellido");
            ej.Rows.Add(new object[] { "Juan", 1, 23, "Perez" });
            return ej;
        }

        public static void buscarPorId(int id, out  string nombre, out  string apellido, out  TipoDocumento tipoId, out  string nroId, out  string mail, out  string telefono, out  string calle, out string localidad, out DateTime fechaNacimiento,out Pais pais, out bool habilitado)
        {/*TODO
            DataRow usuario = DatabaseAdapter.traerDataTable("buscar_cliente_por_id", id).Rows[0];
            nombre = cliente["nombre"].ToString();
            apellido = cliente["apellido"].ToString();
            nroId = cliente["numero_documento"].ToString();
            mail = cliente["mail"].ToString();
            calle = cliente["direccion"].ToString();
            telefono = cliente["telefono"].ToString();
            fechaNacimiento = Convert.ToDateTime(cliente["fecha_nacimiento"]);
            localidad = cliente["localidad"].ToString();
            habilitado = Convert.ToBoolean(cliente["habilitado"]);
            Cliente c = new Cliente(id);
            tipoId = c.TipoId;
            pais = c.Pais;       */

            nombre = "Juan";
            apellido = "Perez";
            nroId = "37777777";
            mail = "juanLoco@mimail.com";
            calle = "Avenida Siemrpeviva";
            localidad = "Esprinfil";
            telefono = "45556659";
            fechaNacimiento = new DateTime(1999, 12, 15);
            habilitado = true;
            Cliente c = new Cliente(id);
            tipoId = c.TipoId;
            pais = c.Pais;
        }

        public static void actualizarCliente(string nombre, string apellido, string mail, string telefono, string calle, string localidad, DateTime fechaNacimiento, Pais pais, bool habilitado)
        {
            DatabaseAdapter.actualizarDatosEnTabla("cliente", nombre, apellido, mail, telefono, calle, localidad, fechaNacimiento, habilitado);
        }

    }
}
