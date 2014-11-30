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
            HomeHoteles.buscarPorId(idHotel, out nombre, out email, out telefono, out calle,out altura, out estrellas, out pais, out ciudad, out regimenes, out fechaCreacion,out recargoEstrellas);
            regimenesOriginales.AddRange(regimenes);
            _nombre.Text = nombre;
        }

        protected override void Guardar()
        {
            regimenes = CheckListToList<Regimen>(_regimenes); //Y forzando esto evitamos que se omita la actualizacion antes del guardado
            string Oldemail = email; //Con esto evitamos un error de chequeo incorrecto
            email = "a";
            ValidarErrores();
            email = Oldemail;

            HomeHoteles.actualizarHotel(idHotel, nombre, email, telefono, calle, altura, estrellas, pais, ciudad, regimenes, fechaCreacion.ToShortDateString(),Convert.ToInt32(recargoEstrellas));
            
        }


    }
}
