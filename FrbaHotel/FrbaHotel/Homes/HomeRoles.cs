using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;

namespace FrbaHotel.Homes
{
    class HomeRoles:Home
    {
        public static void registrarRol(string nombre, List<Funcionalidad> funcionalidades, bool estaActivo)
        {
            DatabaseAdapter.insertarDatosEnTabla("rol", nombre, estaActivo);
            int id = idParaNombre(nombre);
            agregarElementos("funcionalidad_x_rol", id, IdsDe<Funcionalidad>(funcionalidades));        
        }

        public static int idParaNombre(string nombre)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("id_rol", nombre);
        }

        public static DataTable buscarRoles(int id, string nombre,bool estaActivo)
        {/*TODO
            return DatabaseAdapter.traerDataTable("buscar_roles",id , nombre, estaActivo);
          */
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("ID"); 
            ej.Columns.Add("Nombre");
            ej.Columns.Add("EstaActivo");
            ej.Rows.Add(new object[] { 1, "Healer", true });
            return ej;
        }

        public static void buscarPorId(int id, out string nombre, out bool estaActivo, out  List<Funcionalidad> funcionalidades)
        {/*TODO
            DataRow rol = DatabaseAdapter.traerDataTable("buscar_rol_por_id", id).Rows[0];
            nombre = usuario["nombre"].ToString();
            estaActivo = usuario["estaActivo"].ToString();
            
            Rol rol = new Rol(id, nombre);
            funcionalidades = rol.Funcionalidades      */

            nombre = "rolPiola";
            estaActivo = true;
            
            Rol rol = new Rol(id, nombre);
            funcionalidades = rol.Funcionalidades;

        }

        public static void actualizarRol(string nombre, bool estaActivo, List<Funcionalidad> funcionalidadesOriginales,List<Funcionalidad> funcionalidades)
        {
            DatabaseAdapter.insertarDatosEnTabla("rol", nombre, estaActivo);
            int id = idParaNombre(nombre);
            agregarElementos("funcionalidad_x_rol", id, IdsDe<Funcionalidad>(diferencia<Funcionalidad>(funcionalidades, funcionalidadesOriginales)));

            removerElementos("funcionalidad_x_rol", id, IdsDe<Funcionalidad>(diferencia<Funcionalidad>(funcionalidadesOriginales, funcionalidades)));
            
        }

        public static void bajaLogica(int id)
        {/*TODO
            DatabaseAdapter.ejecutarProcedure("baja_rol", id);*/
        }


    }
}
