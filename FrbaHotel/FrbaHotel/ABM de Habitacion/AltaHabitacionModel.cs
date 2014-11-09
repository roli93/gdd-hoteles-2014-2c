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
        private Hotel hotel;
        private int piso;
        private int numero;
        private string ubicacion;
        private TipoHabitacion tipo;
        private string descripcion;

        public Hotel Hotel { get; set; }
        public int Piso { get; set; }
        public int Numero { get; set; }
        public string Ubicacion { get; set; }
        public TipoHabitacion Tipo { get; set; }
        public string Descripcion { get; set; }

        protected virtual void Guardar()
        {
            ValidarErrores();
          //TODO  HomeHoteles.AgregarHabitacionA(this.Hotel,this.Piso,this.Numero,this.Ubicacion,this.Tipo,this.Descripcion);
        }

        public override void  ValidarErroresConcretos()
        {
            ValidarVacios(
            new string[]{"Hotel","Piso","Numero","Ubicacion","Tipo","Descripcion"},
                new object[]{hotel, piso, numero, ubicacion, tipo, descripcion});
 	       // TODO ValidarNumericos(piso,numero);
        }

    }
}
