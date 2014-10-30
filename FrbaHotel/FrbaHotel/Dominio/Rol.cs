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
    public class Rol
    {
        private int id;
        private string descripcion;

        public Rol(int id, string descripcion)
        {
            this.id = id;
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
                return new List<Funcionalidad> { new Funcionalidad(1, "Reservas"), new Funcionalidad(2, "Echar gente") };
            }
        }

        public int Id { get; set; }
        public string Descripcion { get; set; }

        public override string ToString()
        {
            return descripcion;
        }

    }
}
