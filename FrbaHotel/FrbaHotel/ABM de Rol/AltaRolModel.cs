using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Rol
{
       public partial class AltaRol:Alta
       {
   
        private string nombre;
        private List<Funcionalidad> Funcionalidades =new List<Funcionalidad>();
        private bool EstaActivo;

        protected virtual void Guardar()
        {
          ValidarErrores();
          HomeRoles.registrarRol(nombre, Funcionalidades, EstaActivo);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Nombre" }, new object[] { nombre });
        }
            
        }

}

