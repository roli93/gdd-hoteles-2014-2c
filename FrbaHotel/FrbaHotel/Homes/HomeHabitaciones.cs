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

        static public DataTable buscarHabitaciones(Hotel unHotel, int unNumero, int unPiso, string unaUbicacion, TipoHabitacion unTipo, string unaDescripcion)
        {
            /*TODO
            return DatabaseAdapter.traerDataTable("buscar_habitaciones", unHotel, unNumero, unPiso, unaUbicacion, unTipo, unaDescripcion);
          */
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("Hotel");
            ej.Columns.Add("Numero");
            ej.Columns.Add("Piso");
            ej.Columns.Add("Ubicacion");
            ej.Rows.Add(new object[] { new Hotel(1,"Hotel Aca no vuelvo ni en pedo"), 23, 1, "Interior" });
            return ej;
        }

        static public Habitacion buscarPorId(int unIdHabitacion,out Hotel unHotel,out int unNumero,out int unPiso,out TipoHabitacion unTipo, out string unaUbicacion, out string unaDescripcion)
        {
            Habitacion laHabitacion = new Habitacion();
            laHabitacion.Id = unIdHabitacion;
            unHotel = new Hotel(1, "Hotel Aca no vuelvo ni en pedo");
            laHabitacion.hotel = unHotel;
            laHabitacion.numeroHabitacion = 23;
            unNumero = 23;
            laHabitacion.piso = 1;
            unPiso = 1;
            unTipo = new TipoHabitacion(1, "Habitacion fea");
            laHabitacion.tipo = unTipo;
            unaUbicacion = "Interior";
            laHabitacion.ubicacion = unaUbicacion;
            unaDescripcion = "Desastre";
            laHabitacion.descripcion = unaDescripcion;

            return laHabitacion;
            
            
        }

        static public void actualizarHabitacion(int idHabitacion,Hotel unHotel,int unNumero,int unPiso,TipoHabitacion unTipo,string unaUbicacion,string unaDescripcion)
        {
        }

    }
}
