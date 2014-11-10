using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Dominio
{
    public class Reserva:Entidad
    {
        public Reserva (int id)
        {
            this.Id=id;
        }
    }
}
