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
        protected List<Funcionalidad> Funcionalidades =new List<Funcionalidad>();
        private bool EstaActivo;

        protected virtual void Guardar()
        {
          Funcionalidades = CheckListToList<Funcionalidad>(_funcionalidadesCLB);  
          ValidarErrores();
          HomeRoles.registrarRol(nombre, Funcionalidades, EstaActivo);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Nombre" }, new object[] { nombre });
            ValidarCollecionVacia<Funcionalidad>("Funcionalidades",Funcionalidades);
        }
            
        }

}

