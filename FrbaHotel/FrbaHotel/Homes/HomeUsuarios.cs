using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;

namespace FrbaHotel.Homes
{
    public class HomeUsuarios: Home
    {
        public static void registrarUsuario(string username, string password, List<Rol> roles, string nombre, string apellido, TipoDocumento tipoDni, string dni, string mail, string telefono, string direccion, DateTime fechaNacimiento, List<Hotel> hoteles)
        {
            DatabaseAdapter.insertarDatosEnTabla("usuario", username, password, nombre, apellido, tipoDni.Id, dni, mail, telefono, direccion, fechaNacimiento);
            int id = DatabaseAdapter.getIdUltimaInsercion("Usuario");
            agregarElementos("usuario_x_rol",id,IdsDe<Rol>(roles));
            agregarElementos("usuario_x_hotel", id, IdsDe<Hotel>(hoteles));
        }

        public static int idParaUsername(string username)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("id_username", username);
        }

        public static DataTable buscarUsuarios(string nombre, string apellido,string email, string username, Rol rol, Hotel Hotel)
        {/*TODO
            return DatabaseAdapter.traerDataTable("buscar_usuarios", nombre, apellido, email, username, rol.Id, Hotel.Id);
          */DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("Nombre");
            ej.Columns.Add("ID");
            ej.Columns.Add("Edad");
            ej.Columns.Add("apellido");
            ej.Rows.Add(new object[] { "Juan", 1, 23,"Perez" });
            return ej;
        }

        public static void buscarPorId(int id, out string username, out string password, out  List<Rol> roles, out  string nombre, out  string apellido, out  TipoDocumento tipoDni, out  string dni, out  string mail, out  string telefono, out  string direccion, out  DateTime fechaNacimiento, out  List<Hotel> hoteles)
        {/*TODO
            DataRow usuario = DatabaseAdapter.traerDataTable("buscar_usuario_por_id", id).Rows[0];
            username = usuario["username"].ToString();
            password = usuario["password"].ToString();
            nombre = usuario["nombre"].ToString();
            apellido = usuario["apellido"].ToString();
            dni = usuario["numero_documento"].ToString();
            mail = usuario["mail"].ToString();
            direccion = usuario["direccion"].ToString();
            telefono = usuario["telefono"].ToString();
            fechaNacimiento = Convert.ToDateTime(usuario["fecha_nacimiento"]);
            Usuario user = new Usuario(id, username);
            tipoDni = user.TipoDocumento;
            roles = user.Roles;
            hoteles = user.Hoteles;         */

            username = "juanLoco34";
            password = "sss";
            nombre = "Juan";
            apellido = "Perez";
            dni = "37777777";
            mail = "juanLoco@mimail.com";
            direccion = "Mi casa";
            telefono = "45556659";
            fechaNacimiento = new DateTime(1999,12,15);
            Usuario user = new Usuario(id, username);
            tipoDni = user.TipoDocumento;
            roles = user.Roles;
            hoteles = user.Hoteles; 

        }

        public static void actualizarUsuario(int id,string username, string password, List<Rol> rolesOriginales, List<Rol> roles, string nombre, string apellido, TipoDocumento tipoDni, string dni, string mail, string telefono, string direccion, DateTime fechaNacimiento, List<Hotel> hotelesOriginales, List<Hotel> hoteles)
        {
            DatabaseAdapter.insertarDatosEnTabla("usuario", username, password, nombre, apellido, tipoDni.Id, dni, mail, telefono, direccion, fechaNacimiento);
            agregarElementos("usuario_x_rol", id,IdsDe<Rol>(diferencia<Rol>(roles,rolesOriginales)));
            agregarElementos("usuario_x_hotel", id,IdsDe<Hotel>(diferencia<Hotel>(hoteles, hotelesOriginales)));
            removerElementos("usuario_x_rol", id, IdsDe<Rol>(diferencia<Rol>(rolesOriginales, roles)));
            removerElementos("usuario_x_hotel", id, IdsDe<Hotel>(diferencia<Hotel>(hotelesOriginales, hoteles)));
        }

        public static void bajaLogica(int id)
        {/*TODO
            DatabaseAdapter.ejecutarProcedure("baja_usuario", id);*/
        }

    }
}
