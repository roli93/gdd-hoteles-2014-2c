﻿using System;
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
        public Hotel Hotel { get; set; }
        public Rol Rol { get; set; }
               
        public Usuario(int id, string username)
        {
            Username = username;
            Id = id;
        }

        public List<Rol> Roles
        {
            get
            {/*     TODO
                DataTable elementos = DatabaseAdapter.traerDataTable("obtener_roles", Id);
                List<Rol> roles = new List<Rol>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    roles.Add(new Rol((int) elemento["id_rol"],(string) elemento["descripcion"]));
                }
                return roles;*/
                return new List<Rol> { new Rol(1, "admin"), };
            }
        }
        public List<Hotel>Hoteles
        {
            get
            {
                /*  TODO DataTable elementos = DatabaseAdapter.traerDataTable("obtener_hoteles", id);
                List<Hotel> hoteles = new List<Hotel>();

                foreach (DataRow elemento in elementos.Rows)
                {
                    hoteles.Add(new Hotel((int)elemento["id_rol"],(string) elemento["nombre"]));
                }
                return hoteles;*/
                return new List<Hotel> { new Hotel(1, "SuperHote"), new Hotel(2, "HotelFeo") };
            }
        }
        public TipoDocumento TipoDocumento
        {
            get
            {
               /*TODO  DataRow documento = DatabaseAdapter.traerDataTable("obtener_documento", Id).Rows[0];
                return new TipoDocumento(Convert.ToInt32(documento["id_tipo_documento"]), documento["descripcion"].ToString());*/
                return new TipoDocumento(1, "DNI");
            }
        }
    }
}
