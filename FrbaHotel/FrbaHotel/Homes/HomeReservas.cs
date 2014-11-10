using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;
using System.Windows.Forms;

namespace FrbaHotel.Homes
{
    public class HomeReservas:Home
    {
        public static int registrarReserva(Regimen regimen, DateTime fechaInicio, DateTime fechaFin, List<Habitacion> habitaciones, int IdCliente)
        {
            DatabaseAdapter.insertarDatosEnTabla("reserva", regimen.Id,fechaInicio,fechaFin, IdCliente,DateTime.Now);
            int id = DatabaseAdapter.getIdUltimaInsercion();
            agregarElementos("habitacion_reservada", id, IdsDe<Habitacion>(habitaciones));
            /*TODO SACAR*/id = 238423879;
            return id;
        }

        public static void buscarReservaPorId(int id, out Hotel hotel, out Regimen regimen, out DateTime fechaInicio, out DateTime fechaFin, out List<Habitacion> habitaciones)
        {
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("fecha_fin");
            ej.Columns.Add("fecha_inicio");
            ej.Columns.Add("id_hotel_habitacion");
            ej.Columns.Add("nombre_hotel_habitacion");
            ej.Columns.Add("id_regimen_habitacion");
            ej.Columns.Add("descripcion_regimen_habitacion");
            ej.Rows.Add(new object[] {DateTime.Now, new DateTime(2014,1,2),3,"Hotelucho",1, "Media Pension"});

            DataRow reserva = ej/*TODODatabaseAdapter.traerDataTable("buscar_reserva_por_id", id)*/.Rows[0];

            fechaFin = Convert.ToDateTime(reserva["fecha_fin"]);
            fechaInicio = Convert.ToDateTime(reserva["fecha_inicio"]);
            hotel = new Hotel(Convert.ToInt32(reserva["id_hotel_habitacion"]), reserva["nombre_hotel_habitacion"].ToString());
            regimen = new Regimen(Convert.ToInt32(reserva["id_regimen_habitacion"]), reserva["descripcion_regimen_habitacion"].ToString());
            habitaciones = HabitacionesParaReserva(id);

       }

        public static List<Habitacion> HabitacionesParaReserva(int idReserva)
        {
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("id_tipo_habitacion");
            ej.Columns.Add("id_habitacion");
            ej.Columns.Add("descripcion_tipo_habitacion");
            ej.Rows.Add(new object[] {1,5,"Doble"});
            ej.Rows.Add(new object[] { 1, 6, "Doble" });
            ej.Rows.Add(new object[] { 2, 7, "Simple" });
            ej.Rows.Add(new object[] { 1, 8, "Doble" });
            ej.Rows.Add(new object[] { 1, 9, "Doble" });
            ej.Rows.Add(new object[] { 1, 10, "Doble" });
            
                DataTable elementos = ej/*DatabaseAdapter.traerDataTable("obtener_habitaciones", idReserva)*/;
                List<Habitacion> habitaciones = new List<Habitacion>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    TipoHabitacion tipoHab = new TipoHabitacion(Convert.ToInt32(elemento["id_tipo_habitacion"]), elemento["descripcion_tipo_habitacion"].ToString());
                    habitaciones.Add(new Habitacion(Convert.ToInt32(elemento["id_habitacion"]), tipoHab));
                }
                return habitaciones;
        }

        public static List<Habitacion> BuscarHabitaciones(Hotel hotel,TipoHabitacion tipo,int cantidad, DateTime finicio, DateTime ffin)
        {/*TODO
            DataTable habitaciones = DatabaseAdapter.traerDataTable("buscar_habitaciones", hotel.Id, tipo.Id,cantidad,finicio, ffin);
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

        public static void actualizarReserva(int idReserva, Regimen regimen, DateTime fechaInicio, DateTime fechaFin, List<Habitacion> habitacionesNuevas, List<Habitacion>  habitacionesOriginales)
        {
            DatabaseAdapter.actualizarDatosEnTabla("reserva", idReserva, regimen.Id, fechaInicio, fechaFin);
            agregarElementos("habitacion_reservada", idReserva, IdsDe<Habitacion>(diferencia<Habitacion>(habitacionesNuevas,habitacionesOriginales)));
            removerElementos("habitacion_reservada", idReserva, IdsDe<Habitacion>(diferencia<Habitacion>(habitacionesOriginales, habitacionesNuevas)));
            DatabaseAdapter.insertarDatosEnTabla("modificacion", DateTime.Now, idReserva, Sesion.Usuario.Id, "Modificación usual",0);
        }

        public static bool reservaEsEditable(int idReserva)
        {/*TODO
            if (DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_editable", idReserva) == 1)
                return true;
            else
                return false;*/
            return true;
        }

        public static void cancelarReserva(int idReserva, bool esPorNoShow, string motivo)
        {/*TODO
            if (esPorNoShow)
            {
                DatabaseAdapter.ejecutarProcedure("cancelar_reserva_no_show", idReserva);
                DatabaseAdapter.insertarDatosEnTabla("modificacion", DateTime.Now, idReserva, Sesion.Usuario.Id, motivo,1);
            }
            else
            {   if(Sesion.Usuario.esGuest())
                    DatabaseAdapter.ejecutarProcedure("cancelar_reserva_cliente", idReserva);
                else
                    DatabaseAdapter.ejecutarProcedure("cancelar_reserva_recepcion", idReserva);
                DatabaseAdapter.insertarDatosEnTabla("modificacion", DateTime.Now, idReserva, Sesion.Usuario.Id, motivo,1);
            }*/
        }

        public static DataTable habitacionesReserva(int idReserva)
        {/* TODO
            return DatabaseAdapter.traerDataTable("habitaciones_de_reserva", idReserva);*/
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("id");
            ej.Columns.Add("Numero");
            ej.Columns.Add("Clientes");
            ej.Rows.Add(new object[] { 142, 2, 0 });
            ej.Rows.Add(new object[] { 24242, 12, 2 });
            return ej;
        }

        public static void cambiarHabitacion(int idHabitacionreservada, int numero)
        {/*TODO
            int error = DatabaseAdapter.ejecutarProcedureWithReturnValue("cambiar_habitacion", idHabitacionreservada, numero);
            DatabaseAdapter.CheckExcepcionPara(error);*/
        }

        public static void agregarClienteHabitacion(int idHabitacionReservada, int idCliente)
        {/*TODO
            DatabaseAdapter.insertarDatosEnTabla("cliente_x_habitacion", idHabitacionReservada, idCliente);*/
        }

        public static bool reservaEsIngresable(int idReserva)
        {
            /*TODO
            if (DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_ingresable", idReserva, Sesion.Usuario.Hotel.Id) == 1)
                return true;
            else
                return false;*/
            return true;
        }

        public static bool reservaEsEgresable(int idReserva)
        {
            /*TODO
            if (DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_egresable", idReserva, Sesion.Usuario.Hotel.Id) == 1)
                return true;
            else
                return false;*/
            return true;
        }

        public static void ingresarReserva(int idReserva)
        {/*TODO
            DatabaseAdapter.ejecutarProcedure("registrar_ingreso_reserva", idReserva);*/
        }

    }
}
