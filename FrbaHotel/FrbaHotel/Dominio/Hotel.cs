using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel
{
    public class Hotel:Entidad
    {

        public Hotel(int id, string nombre)
        {
            this.Id = id;
            this.Nombre = nombre;
        }

        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public int Estrellas { get; set; }
        public string Pais { get; set; }
        public string Ciudad { get; set; }
     
        public string FechaCreacion { get; set; }
        public List<Regimen> Regimenes
        {
            get
            {
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_regimenes", Id);
                List<Regimen> regimenes = new List<Regimen>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    regimenes.Add(new Regimen(Convert.ToInt32(elemento["ID"]), elemento["Descripción"].ToString()));
                }
                return regimenes;
            }
        }

        public override string ToString()
        {
            return Nombre;
        }

    }
}
