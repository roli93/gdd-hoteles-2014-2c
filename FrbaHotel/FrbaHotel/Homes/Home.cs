using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    public class Home
    {
        public static void agregarElementos(string tablaIntermedia, int idOneSide, List<int> idsManySide)
        {
            foreach (int id in idsManySide)
                DatabaseAdapter.insertarDatosEnTabla(tablaIntermedia, idOneSide, id);
        }
    }
}
