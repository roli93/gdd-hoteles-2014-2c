using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel
{
    public class Entidad:IEquatable<Entidad>
    {
        public int Id { get; set; }

        public bool Equals(Entidad entidad)
        {
            return entidad.Id.Equals(Id);
        }

        public bool equals(Entidad entidad)
        {
            return entidad.Id.Equals(Id);
        }        

        public override int GetHashCode()
        {
            return Id;
        }

    }
}
