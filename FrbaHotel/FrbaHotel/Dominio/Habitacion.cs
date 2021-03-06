﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class Habitacion : Entidad
    {
        public Habitacion(int id,TipoHabitacion tipo)
        {
            this.Id = id;
            this.tipo = tipo;
        }

        public Habitacion(int id, TipoHabitacion tipo, int costo)
        {
            this.Id = id;
            this.tipo = tipo;
            this.Costo = costo;
        }

        public Habitacion()
        {
        }

        public Hotel hotel { get; set; }
        public int numeroHabitacion { get; set; }
        public int piso { get; set; }
        public string ubicacion { get; set; }
        public TipoHabitacion tipo { get; set; }
        public string descripcion { get; set; }
        public int IdHabitacionReservada { get; set; }
        public double Costo { get; set; }

        public override string ToString()
        {
            return numeroHabitacion.ToString();
        }
    }
}
