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
            int id = DatabaseAdapter.ejecutarProcedureWithReturnValue("proximo_id_reserva")-1;
            agregarElementos("habitacion_reservada", id, IdsDe<Habitacion>(habitaciones));
            return id;
        }

        public static void buscarReservaPorId(int id, out Hotel hotel, out Regimen regimen, out DateTime fechaInicio, out DateTime fechaFin, out List<Habitacion> habitaciones)
        {
            DataRow reserva = DatabaseAdapter.traerDataTable("buscar_reserva_por_id", id).Rows[0];

            fechaFin = Convert.ToDateTime(reserva["fecha_fin"]);
            fechaInicio = Convert.ToDateTime(reserva["fecha_inicio"]);
            hotel = new Hotel(Convert.ToInt32(reserva["id_hotel_habitacion"]), reserva["nombre_hotel_habitacion"].ToString());
            regimen = new Regimen(Convert.ToInt32(reserva["id_regimen_habitacion"]), reserva["descripcion_regimen_habitacion"].ToString());
            habitaciones = HabitacionesParaReserva(id);

       }

        public static List<Habitacion> HabitacionesParaReserva(int idReserva)
        {
            DataTable elementos = DatabaseAdapter.traerDataTable("obtener_habitacion", idReserva);
            List<Habitacion> habitaciones = new List<Habitacion>();

            foreach (DataRow elemento in elementos.Rows)
            {
                TipoHabitacion tipoHab = new TipoHabitacion(Convert.ToInt32(elemento["id_tipo_habitacion"]), elemento["descripcion"].ToString());
                habitaciones.Add(new Habitacion(Convert.ToInt32(elemento["id_habitacion"]), tipoHab));
            }
            return habitaciones;
        }

        public static List<Habitacion> BuscarHabitaciones(Hotel hotel,TipoHabitacion tipo, DateTime finicio, DateTime ffin,Regimen regimen)
        {
            DataTable habitaciones = DatabaseAdapter.traerDataTable("buscar_habitacion_reserva", hotel.Id, tipo.Id,finicio, ffin,regimen.Id);
            List<Habitacion> listaHabitaciones = new List<Habitacion>();

            if(habitaciones!=null)
                foreach (DataRow habitacion in habitaciones.Rows)
                    listaHabitaciones.Add(new Habitacion(Convert.ToInt32(habitacion["id_habitacion"]),tipo,Convert.ToInt32(habitacion["costo"])));
               
            return listaHabitaciones;
        }

        public static DataTable regimenesParaHotel(Hotel hotel)
        {
            return DatabaseAdapter.traerDataTable("obtener_regimenes", hotel.Id);
        }

        public static void actualizarReserva(int idReserva, Regimen regimen, DateTime fechaInicio, DateTime fechaFin, List<Habitacion> habitacionesNuevas, List<Habitacion>  habitacionesOriginales)
        {
            DatabaseAdapter.actualizarDatosEnTabla("reserva", idReserva, regimen.Id, fechaInicio, fechaFin);
            agregarElementos("habitacion_reservada", idReserva, IdsDe<Habitacion>(diferencia<Habitacion>(habitacionesNuevas,habitacionesOriginales)));
            removerElementos("habitacion_reservada", idReserva, IdsDe<Habitacion>(diferencia<Habitacion>(habitacionesOriginales, habitacionesNuevas)));
            DatabaseAdapter.insertarDatosEnTabla("modificacion", DateTime.Now, idReserva, Sesion.Usuario.Id, "Modificación usual",0);
        }

        public static void verificarReservaEsEditable(int idReserva,int idHotel)
        {
            int error = 0;
            error=DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_editable", idReserva,idHotel);
            DatabaseAdapter.CheckExcepcionPara(error);
        }

        public static void cancelarReserva(int idReserva, bool esPorNoShow, string motivo)
        {
            if (esPorNoShow)
            {
                DatabaseAdapter.ejecutarProcedure("cancelar_reserva_no_show", idReserva);
            }
            else
            {   if(Sesion.Usuario.esGuest())
                    DatabaseAdapter.ejecutarProcedure("cancelar_reserva_cliente", idReserva);
                else
                    DatabaseAdapter.ejecutarProcedure("cancelar_reserva_recepcion", idReserva);
            }
            DatabaseAdapter.insertarDatosEnTabla("modificacion", DateTime.Now, idReserva, Sesion.Usuario.Id, motivo, 1);
        }

        public static DataTable habitacionesReserva(int idReserva)
        {
            return DatabaseAdapter.traerDataTable("habitaciones_de_reserva", idReserva);
        }

        public static DataTable consumiblesReserva(int idReserva)
        {
            return DatabaseAdapter.traerDataTable("consumibles_de_reserva", idReserva);
        }

        public static void cambiarHabitacion(int idHabitacionreservada, int numero)
        {
            int error = DatabaseAdapter.ejecutarProcedureWithReturnValue("cambiar_habitacion", idHabitacionreservada, numero);
            DatabaseAdapter.CheckExcepcionPara(error);
        }

        public static void agregarClienteHabitacion(int idHabitacionReservada, int idCliente)
        {
            DatabaseAdapter.insertarDatosEnTabla("cliente_x_habitacion", idHabitacionReservada, idCliente);
        }

        public static void verificarReservaEsIngresable(int idReserva, int idHotel)
        {
            int error = 0;
            error = DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_ingresable", idReserva, idHotel);
            DatabaseAdapter.CheckExcepcionPara(error);
        }

        public static void verificarReservaEsEgresable(int idReserva, int idHotel)
        {
            int error = 0;
            error = DatabaseAdapter.ejecutarProcedureWithReturnValue("reserva_egresable", idReserva, idHotel);
            DatabaseAdapter.CheckExcepcionPara(error);
        }

        public static void ingresarReserva(int idReserva)
        {
            DatabaseAdapter.ejecutarProcedure("registrar_ingreso_reserva", idReserva);
        }

        public static void agregarConsumible(Habitacion habitacion, Producto producto, int cantidad)
        {
            DatabaseAdapter.insertarDatosEnTabla("producto_x_habitacion_reservada", habitacion.IdHabitacionReservada, producto.Id,cantidad);
        }

        public static void removerConsumible(int idHabitacionreservada, int idProducto)
        {
            DatabaseAdapter.borrarDatosEnTabla("producto_x_habitacion_reservada", idHabitacionreservada, idProducto);
        }

        public static void facturar(int idReserva, DateTime fechaSalida,ModoPago mp,string nombre, string apellido, string codigo)
        {/*
            DatabaseAdapter.ejecutarProcedure("facturar", idReserva, fechaSalida,mp.Id,nombre,apellido, codigo);*/
        }

        public static List<Habitacion> habitacionesReservadas(int idReserva)
        {
            DataTable tabla = DatabaseAdapter.traerDataTable("habitaciones_reservadas_para_consumibles", idReserva);
            List<Habitacion> habitaciones = new List<Habitacion>();

            //Esto no debería pasar nunca, y no sé si es más negrada oner este if... o el comentario que le agrego arriba.
            //Si alguien lee esto sepa que nunca programo así U.U
            if (tabla == null)
                return habitaciones;

            foreach(DataRow habitacion in tabla.Rows)
            {
                Habitacion h = new Habitacion();
                h.Id = Convert.ToInt32(habitacion["id_habitacion"]);
                h.IdHabitacionReservada = Convert.ToInt32(habitacion["id_habitacion_reservada"]);
                h.numeroHabitacion = Convert.ToInt32(habitacion["numero"]);
                habitaciones.Add(h);
            }
            return habitaciones;
        }
    }
}
