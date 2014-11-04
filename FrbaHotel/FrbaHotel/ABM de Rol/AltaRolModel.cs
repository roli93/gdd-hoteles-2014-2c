using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Rol
{
       public partial class AltaRol:Alta
       {
   
        private string nombre;
        private List<Funcionalidad> Funcionalidades =new List<Funcionalidad>();
        private bool EstaActivo;

        private virtual void Guardar()
        {
            // TODO ValidarErrores();
           // object[] o = new object[] { null };
            //DatabaseAdapter.insertarDatosEnTabla("rol", nombre);

        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Nombre" }, new object[] { nombre });
        }
            
        }

}

