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
        public static void bajaLogica(int unId)
        {
            
         DatabaseAdapter.ejecutarProcedure("baja_logica_habitacion",unId);
        }

        public static DataTable buscarHabitaciones(Hotel unHotel, int unNumero, int unPiso, string unaUbicacion, TipoHabitacion unTipo, string unaDescripcion)
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

    }
}
