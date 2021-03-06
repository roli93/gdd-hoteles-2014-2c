﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Homes;
using FrbaHotel.Dominio;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class AltaHabitacion
    {
        protected Hotel hotel;
        protected string piso="";
        protected string numero = "";
        protected string ubicacion = "";
        protected TipoHabitacion tipo;
        protected string descripcion = "";

        protected virtual void Guardar()
        {
            ValidarErrores();
            HomeHabitaciones.agregarHabitacion(this.hotel,Convert.ToInt32(this.piso),Convert.ToInt32(this.numero),this.ubicacion,this.tipo,this.descripcion);
        }

        public override void  ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[]{"Hotel","Piso","Numero","Ubicacion","Tipo","Descripcion","Habilitada"},
                                   new object[]{hotel, piso, numero, ubicacion, tipo, descripcion,"S"});
 	        ValidarNumericos(piso.ToString(),numero.ToString());
        }

    }
}
