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

        public static void removerElementos(string tablaIntermedia, int idOneSide, List<int> idsManySide)
        {
            foreach (int id in idsManySide)
                DatabaseAdapter.borrarDatosEnTabla(tablaIntermedia, idOneSide, id);
        }

        public static List<T> diferencia<T>(List<T> original, List<T> nuevo)
        {
            return original.Cast<Entidad>().ToList().Except(nuevo.Cast<Entidad>().ToList()).ToList<Entidad>().Cast<T>().ToList();
        }

        public static List<int> IdsDe<T>(List<T> entidades)
        {
            return entidades.Cast<Entidad>().ToList().ConvertAll(entidad => entidad.Id);
        }

        public static string like(string patron)
        {
            if (patron == null)
                return "%";
            else if (patron.Equals(""))
                return "%";
            else
                return patron;
        }

        public static int idDe(Entidad entidad)
        {
            if (entidad != null)
                return entidad.Id;
            else
                return -1;
        }
    }
}
