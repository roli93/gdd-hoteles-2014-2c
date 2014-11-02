using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    public class HomeUsuarios: Home
    {
        public static void registrarUsuario(string username, string password, List<Rol> roles, string nombre, string apellido, TipoDocumento tipoDni, string dni, string mail, string telefono, string direccion, DateTime fechaNacimiento, List<Hotel> hoteles)
        {
            DatabaseAdapter.insertarDatosEnTabla("usuario", username, password, nombre, apellido, tipoDni.Id, dni, mail, telefono, direccion, fechaNacimiento);
            int id = idParaUsername(username);
            agregarElementos("usuario_x_rol",id,roles.ConvertAll(rol=>rol.Id));
            agregarElementos("usuario_x_hotel", id, hoteles.ConvertAll(hotel => hotel.Id));
        }

        public static int idParaUsername(string username)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("id_username", username);
        }
    }
}
