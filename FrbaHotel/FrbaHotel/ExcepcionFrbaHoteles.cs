using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel
{
    class ExcepcionFrbaHoteles:Exception
    {
        public ExcepcionFrbaHoteles()
            : base()
        {
        }

        public ExcepcionFrbaHoteles(String message)
            : base(message)
        {
        }
    }


}
