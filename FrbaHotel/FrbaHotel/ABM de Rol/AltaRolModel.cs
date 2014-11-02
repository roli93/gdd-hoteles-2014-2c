using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.ABM_de_Rol
{
       public partial class AltaRol
    {
        private string nombre;
        private List<Funcionalidad> Funcionalidades =new List();
        private bool EstaActivo;

        private void Guardar()
        {
            //ValidarErrores();
            object[] o = new object[] { null };
            DatabaseAdapter.insertarDatosEnTabla("rol", nombre,Id);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(
                new string[]{"Nombre"},
                new object[]{nombre});
        }
            
        }
    }
}

