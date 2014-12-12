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
        protected Regimen regimen;

        List<Habitacion> habitacionesOriginales;

        public void CargarReserva()
        {
            Hotel hotel;
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
    }
}