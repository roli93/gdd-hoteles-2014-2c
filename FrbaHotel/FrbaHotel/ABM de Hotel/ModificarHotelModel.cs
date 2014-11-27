using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Homes;
using FrbaHotel.Dominio;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class ModificarHotel
    {

        private List<Regimen> regimenesOriginales = new List<Regimen>();


        public void CargarHotel()
        {
            HomeHoteles.buscarPorId(idHotel, out nombre, out email, out telefono, out calle,out altura, out estrellas, out pais, out ciudad, out regimenes, out fechaCreacion);
            regimenesOriginales.AddRange(regimenes);
            _nombre.Text = nombre;
        }

        protected override void Guardar()
        {
            ValidarErrores();
            HomeHoteles.actualizarHotel(idHotel, nombre, email, telefono, calle, altura, estrellas, pais, ciudad, regimenesOriginales, fechaCreacion.ToShortDateString());
            
        }


    }
}
