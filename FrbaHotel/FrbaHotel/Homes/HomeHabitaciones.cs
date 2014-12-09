using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    public class HomeHabitaciones : Home
    {
        static public void bajaLogica(int unId)
        {
            DatabaseAdapter.ejecutarProcedure("baja_logica_habitacion",unId);
        }

        static public DataTable buscarHabitaciones(Hotel unHotel, string unNumero, string unPiso, string unaUbicacion, TipoHabitacion unTipo, string unaDescripcion, string unaHabilitacionString)
        {
            return DatabaseAdapter.traerDataTable("buscar_habitaciones", idDe(unHotel), like(unNumero), like(unPiso), like(unaUbicacion), idDe(unTipo), like(unaDescripcion), like(unaHabilitacionString));
         
        }

        static public Habitacion buscarPorId(int unIdHabitacion,out Hotel unHotel,out int unNumero,out int unPiso,out TipoHabitacion unTipo, out string unaUbicacion, out string unaDescripcion, out bool habilitada)
        {
            DataRow laHabitacion = DatabaseAdapter.traerDataTable("buscar_habitacion_por_id", unIdHabitacion).Rows[0];
            
            //Auxiliares Begin
            string nombreHotel = "foo",auxa,auxb,auxc,auxd,aux5;
            int aux2;
            Pais aux2a = new Pais(-1,"foo");
            List<Regimen> aux3 = new List<Regimen>();
            DateTime aux4 = new DateTime();
            //Auxiliares End

            HomeHoteles.buscarPorId(Convert.ToInt32(laHabitacion["id_hotel"]),out nombreHotel,out auxa,out auxb,out auxc,out aux2,out aux2,out aux2a,out auxd,out aux3,out aux4,out aux5);

            unHotel = new Hotel(Convert.ToInt32(laHabitacion["id_hotel"]), nombreHotel);
            unNumero = Convert.ToInt32(laHabitacion["numero"]);
            unPiso = Convert.ToInt32(laHabitacion["piso"]);

            unTipo = new TipoHabitacion(-1, "Tipo no encontrado");
            unTipo = Sesion.TiposHabitacionDisponibles.Find((e) => e.Id == Convert.ToInt32(laHabitacion["id_tipo_habitacion"]));

            unaUbicacion = "Exterior";
            if (laHabitacion["frente"].ToString() == "N")
                unaUbicacion = "Interior";

            unaDescripcion = laHabitacion["descripcion"].ToString();

            Habitacion habitacion = new Habitacion(unIdHabitacion, unTipo);

            habilitada = true;
            if (laHabitacion["habilitada"].ToString() == "N")
                habilitada = false;

            return habitacion;
            
        }

        static public void actualizarHabitacion(int idHabitacion,Hotel unHotel,int unNumero,int unPiso,TipoHabitacion unTipo,string unaUbicacion,string unaDescripcion,bool habilitada)
        {
            string frente;
            if (unaUbicacion == "Interior")
                frente = "N";
            else
                frente = "S";

            string habilitacion;
            if (habilitada)
                habilitacion = "S";
            else
                habilitacion = "N";


          DatabaseAdapter.actualizarDatosEnTabla("habitacion", idHabitacion, unHotel.Id, unNumero, unPiso, unTipo.Id, frente, unaDescripcion,habilitacion);
        }

        static public void agregarHabitacion(Hotel unHotel, int unPiso, int unNumero, string unaUbicacion, TipoHabitacion unTipo, string unaDescripcion)
        {
            string frente;
            if (unaUbicacion == "Interior")
                frente = "N";
            else
                frente = "S";


            DatabaseAdapter.insertarDatosEnTabla("habitacion", unHotel.Id, unNumero, unPiso, unTipo.Id, frente, unaDescripcion,"S");
        }


    }
}
