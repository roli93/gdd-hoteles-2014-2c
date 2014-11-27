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
    public class Usuario
    {
        public int Id { get; set; }
        public string Username { get; set; }
        private Hotel hotel;
        public Rol Rol { get; set; }

        public Hotel Hotel
        {
            get
            {
                if (!this.esGuest())
                    return hotel;
                else
                    return new Hotel(-1, "HotelGuest");
            }
            set
            {
                hotel = value;
            }
        }


        public Usuario(int id, string username)
        {
            Username = username;
            Id = id;
        }

        public List<Rol> Roles
        {
            get
            {
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_roles", Id);
                List<Rol> roles = new List<Rol>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    roles.Add(new Rol(Convert.ToInt32(elemento["id_rol"]),elemento["nombre"].ToString()));
                }
                return roles;
            }
        }
        public List<Hotel>Hoteles
        {
            get
            {
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_hoteles", Id);
                List<Hotel> hoteles = new List<Hotel>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    hoteles.Add(new Hotel(Convert.ToInt32(elemento["id_hotel"]),elemento["nombre"].ToString()));
                }
                return hoteles;
            }
        }
        public TipoDocumento TipoDocumento
        {
            get
            {
               DataRow documento = DatabaseAdapter.traerDataTable("obtener_documento", Id).Rows[0];
               return new TipoDocumento(Convert.ToInt32(documento["id_tipo_documento"]), documento["descripcion"].ToString());
            }
        }

        public bool esGuest()
        {
            return Username.Equals("Guest");
        }
    }
}
