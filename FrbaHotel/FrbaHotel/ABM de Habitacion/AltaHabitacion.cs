﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class AltaHabitacion : Alta
    {
        public AltaHabitacion()
        {
            InitializeComponent();
        }

        public AltaHabitacion(NavegableForm owner)
            : base(owner)
        {
            InitializeComponent();
        }

        private void Aceptar(object sender, EventArgs e)
        {
            ExcecuteAndShow(Guardar);
        }

        private void Cancelar(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void _hotel_SelectedIndexChanged(object sender, EventArgs e)
        {
            hotel = (Hotel)_hotel.SelectedItem;
        }

        private void _numero_TextChanged(object sender, EventArgs e)
        {
            numero = _numero.Text;
        }

        private void _ubicacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            ubicacion = (string)_ubicacion.SelectedItem;
        }

        private void _tipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipo = (TipoHabitacion)_tipo.SelectedItem;
        }

        private void _descripcion_TextChanged(object sender, EventArgs e)
        {
            descripcion = _descripcion.Text;
        }

        private void AltaHabitacion_Load(object sender, EventArgs e)
        {
            bindCombo<Hotel>(_hotel, Sesion.HotelesDisponibles);
            bindCombo<TipoHabitacion>(_tipo, Sesion.TiposHabitacionDisponibles);
            if (!Sesion.Usuario.esGuest())
            {
                _hotel.SelectedIndex = _hotel.FindStringExact(Sesion.Usuario.Hotel.Nombre);
                _hotel.Enabled = false;
            }

        }

        private void _piso_TextChanged(object sender, EventArgs e)
        {
            piso = _piso.Text;
        }
            

    }
}
