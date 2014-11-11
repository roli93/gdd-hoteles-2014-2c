using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel
{
    public class Rol:Entidad
    {
        private string descripcion;

        public Rol(int id, string descripcion)
        {
            this.Id = id;
            this.descripcion = descripcion;
        }
        
        public List<Funcionalidad> Funcionalidades
        {
            get
            {
                /*DataTable elementos = DatabaseAdapter.traerDataTable("obtener_funcionalidades", id);
                List<Funcionalidad> funcionalidades = new List<Funcionalidad>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    funcionalidades.Add(new Funcionalidad((int)elemento["id_funcionalidad"], (string)elemento["descripcion"]));
                }
                return funcionalidades;*/
                if(Id==0)
                    return new List<Funcionalidad> { new Funcionalidad(1, "Reserva Hotelera") };
                return new List<Funcionalidad> { new Funcionalidad(1, "Reservas"), new Funcionalidad(2, "Echar gente"), new Funcionalidad(5, "ABM clientes"), new Funcionalidad(6, "ABM habitaciones"), new Funcionalidad(7, "ABM de Rol"), new Funcionalidad(8, "ABM de Hotel"), new Funcionalidad(9, "Listados Estadisticos") };
            }
        }

        public string Descripcion { get; set; }

        public override string ToString()
        {
            return descripcion;
        }
    }
}
