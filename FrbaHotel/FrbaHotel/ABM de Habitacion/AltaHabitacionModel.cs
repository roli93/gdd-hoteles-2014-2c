using System;
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
        protected int piso;
        protected int numero;
        protected string ubicacion;
        protected TipoHabitacion tipo;
        protected string descripcion;

        protected virtual void Guardar()
        {
            ValidarErrores();
            HomeHabitaciones.agregarHabitacion(this.hotel,this.piso,this.numero,this.ubicacion,this.tipo,this.descripcion);
        }

        public override void  ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(
            new string[]{"Hotel","Piso","Numero","Ubicacion","Tipo","Descripcion"},
                new object[]{hotel, piso, numero, ubicacion, tipo, descripcion});
 	   //TODO esta validacion no funca bien     ValidarNumericos(new string[]{"Piso","Numero"});
        }

    }
}
