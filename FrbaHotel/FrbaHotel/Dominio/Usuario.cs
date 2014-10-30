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
        private int id;
        private string username;


        public Usuario(int id, string username)
        {
            this.username = username;
            this.id = id;
        }

        public List<Rol> Roles
        {
            get
            {/*
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_roles", id);
                List<Rol> roles = new List<Rol>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    roles.Add(new Rol((int) elemento["id_rol"],(string) elemento["descripcion"]));
                }
                return roles;*/
                return new List<Rol> { new Rol(1, "admin"), new Rol(2, "recep") };
            }
        }
        public List<Hotel>Hoteles
        {
            get
            {
                /*DataTable elementos = DatabaseAdapter.traerDataTable("obtener_hoteles", id);
                List<Hotel> hoteles = new List<Hotel>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    hoteles.Add(new Hotel((int)elemento["id_rol"],(string) elemento["nombre"]));
                }
                return hoteles;*/
                return new List<Hotel> { new Hotel(1, "SuperHote"), new Hotel(2, "HotelFeo") };
            }
        }
        public int Id {get;set;}
        public string Username { get; set; }
        public Hotel HotelActual {get;set;}
        public Rol RolActual {get;set;}

  

    }
}
