using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;

namespace FrbaHotel.Homes
{
    public class HomeReservas:Home
    {
        public static void registrarReserva(Hotel hotel, Regimen regimen, DateTime fechaInicio, DateTime fechaFin, List<Habitacion> habitaciones, int IdCliente)
        {
            DatabaseAdapter.insertarDatosEnTabla("reserva", hotel, regimen,fechaInicio,fechaFin, IdCliente);
            int id = DatabaseAdapter.getIdUltimaInsercion();
            agregarElementos("habitacion_reservada", id, IdsDe<Habitacion>(habitaciones));
        }

        public static List<Habitacion> BuscarHabitaciones(Hotel hotel,TipoHabitacion tipo,int cantidad)
        {/*TODO
            DataTable habitaciones = DatabaseAdapter.traerDataTable("buscar_habitaciones", hotel.Id, tipo.Id,cantidad);
            List<Habitacion> listaHabitaciones = new List<Habitacion>();

            foreach (DataRow habitacion in habitaciones.Rows)
                listaHabitaciones.Add(new Habitacion(Convert.ToInt32(habitacion["id_habitacion"]),tipo));

            return listaHabitaciones;*/

        
            Habitacion h1 = new Habitacion(1,new TipoHabitacion(1,"Doble"));
            Habitacion h2 = new Habitacion(2,new TipoHabitacion(2,"Simple"));
            Habitacion h3 = new Habitacion(3, new TipoHabitacion(1, "Doble"));
            
            List<Habitacion> l = new List<Habitacion>();
            l.Add(h1);
            l.Add(h2);
            l.Add(h3);

            return l;
        }

        public static DataTable regimenesParaHotel(Hotel hotel)
        {
            /*TODO return DatabaseAdapter.traerDataTable("regimenes_dipsonibles", hotel.Id);*/
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("ID");
            ej.Columns.Add("Descripcion");
            ej.Columns.Add("Precio ($)");
            ej.Rows.Add(new object[] {1,"Media pension", 100.40});
            ej.Rows.Add(new object[] {2, "All inclusive", 500.40 });
            return ej;

        }

    }
}
