using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;

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

    }
}
