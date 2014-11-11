﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Consumible
{
    public partial class AgregarConsumible
    {
        protected int cantidad;
        protected Producto producto;
        protected int idReserva;

        public void Agregar()
        {
            ValidarErrores();
            HomeReservas.agregarConsumible(idReserva, producto, cantidad);
            ((RegistrarConsumibles)this.Owner).ActualizarGrilla();
            Close();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Producto" }, new object[] { producto });
        }

    }
}