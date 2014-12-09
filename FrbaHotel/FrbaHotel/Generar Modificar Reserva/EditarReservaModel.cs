using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;
using FrbaHotel.Dominio;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class EditarReserva : GenerarReserva
    {
        protected int idReserva;

        List<Habitacion> habitacionesOriginales;

        public void CargarReserva()
        {
            Hotel hotel;
            Regimen regimen;
            DateTime finicio, ffin;
            HomeReservas.buscarReservaPorId(idReserva,out hotel, out regimen,out finicio, out ffin, out habitacionesOriginales);
            Hotel=hotel;
            Regimen = regimen;
            Habitaciones.AddRange(habitacionesOriginales);
            FechaFin = ffin;
            FechaInicio = finicio;
        }

        public override void Guardar()
        {
            ValidarErrores();
            ValidarHabitacionesOriginalesDisponibles();
            if (MessageBox.Show("¿Confirma la reserva realizada?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeReservas.actualizarReserva(idReserva, Regimen, FechaInicio, FechaFin, Habitaciones, habitacionesOriginales);
                InformarYFinalizar();
                MessageBox.Show(successMessage);
            }            
        }

        public void ValidarHabitacionesOriginalesDisponibles()
        {
            List<Habitacion> habitacionesElegidas = new List<Habitacion>();
            habitacionesElegidas.AddRange(Habitaciones);
            Habitaciones = new List<Habitacion>();
            Agregar_Habitación agregador = new Agregar_Habitación(this);
            agregador.informar = false;
            foreach (Habitacion habitacion in habitacionesElegidas)
            {
                agregador.hotel = Hotel;
                agregador.fechaFin = FechaFin;
                agregador.fechaInicio = FechaInicio;
                agregador.cantidad = 1;
                agregador.tipoHabitacion = habitacion.tipo;
                try
                {
                    agregador.Agregar();
                }
                catch (ExcepcionFrbaHoteles e)
                {
                    Habitaciones = new List<Habitacion>();
                    Habitaciones.AddRange(habitacionesElegidas);
                    ActualizarHabitaciones();
                    throw e;
                }
            }
            ActualizarHabitaciones();
       }



    }
}