using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class Pais:Entidad
    {
        public string Descripcion;

        public Pais(int id, string descripcion)
        {
            Id = id;
            Descripcion = descripcion;
        }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
