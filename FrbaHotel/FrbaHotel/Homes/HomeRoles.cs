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
            string habilitado = "N";
            if(estaActivo)
                habilitado="S";
            DatabaseAdapter.insertarDatosEnTabla("rol", nombre, habilitado);
            int id = DatabaseAdapter.getIdUltimaInsercion("Rol");
            agregarElementos("funcionalidad_x_rol", id, IdsDe<Funcionalidad>(funcionalidades));        

        }


        public static int idParaNombre(string nombre)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("id_rol", nombre);
        }

        public static DataTable buscarRoles(string nombre,bool estaActivo)
        {
            string habilitado = "N";
            if (estaActivo)
                habilitado = "S";
            return DatabaseAdapter.traerDataTable("buscar_roles", like(nombre), like(habilitado));
        }

        public static void buscarPorId(int id, out string nombre, out bool estaActivo, out  List<Funcionalidad> funcionalidades)
        {
            DataRow rolTraido = DatabaseAdapter.traerDataTable("buscar_rol_por_id", id).Rows[0];
            nombre = rolTraido["nombre"].ToString();
            string habilitado = rolTraido["habilitado"].ToString();

            estaActivo = true;
            if (habilitado=="N")
                estaActivo=false;


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
        {
            DatabaseAdapter.ejecutarProcedure("baja_rol", id);
        }


    }
}
