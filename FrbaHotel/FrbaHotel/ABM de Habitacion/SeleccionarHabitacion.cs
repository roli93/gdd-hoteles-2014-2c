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
    public partial class SeleccionarHabitacion : Alta
    {
         private string accion;
    
        public SeleccionarHabitacion()
        {
            InitializeComponent();
            constructorEdicion = (id) => { return new ModificacionHabitacion(this, id); };
        }

        public SeleccionarHabitacion(NavegableForm owner, string accion)
            : base(owner)
        {
            InitializeComponent();
            constructorEdicion = (id) => { return new ModificacionHabitacion(this, id); };
            this.accion = accion;
        }

        private void _hotel_SelectedIndexChanged(object sender, EventArgs e)
        {
            hotel = (Hotel)_hotel.SelectedItem;
        }

        private void _tipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipo = (TipoHabitacion)_tipo.SelectedItem;
        }

        private void _ubicacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            ubicacion = (string)_ubicacion.SelectedItem;
        }

        private void _numero_TextChanged(object sender, EventArgs e)
        {
            numero = _numero.Text;
        }

        private void _piso_TextChanged(object sender, EventArgs e)
        {
            piso = _piso.Text;
        }

        private void _descripcion_TextChanged(object sender, EventArgs e)
        {
            descripcion = _descripcion.Text;
        }

        private void _limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void _aceptar_Click(object sender, EventArgs e)
        {
            Execute(Buscar);
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (accion == "Editar") operacionBotonConSeleccionado(dataGridView1, e);
            else if (accion == "Eliminar") EliminarHabitacion(dataGridView1, e);
        }

        private void SeleccionarHabitacion_Load(object sender, EventArgs e)
        {
            habilitacionString = "S";
            checkBox1.Checked = true;
            cargarBotonModificarDatos(dataGridView1, accion);
            bindCombo<Hotel>(_hotel, Sesion.HotelesDisponibles);
            bindCombo<TipoHabitacion>(_tipo, Sesion.TiposHabitacionDisponibles);
            bindCombo<string>(_ubicacion,new List<string>( new string[]{"Interior","Exterior"} ));
            if (!Sesion.Usuario.esGuest())
            {
                _hotel.SelectedIndex = _hotel.FindStringExact(Sesion.Usuario.Hotel.Nombre);
                _hotel.Enabled = false;
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
           if (checkBox1.Checked)
               habilitacionString="S";
           else 
               habilitacionString="N";

        }

    }
}
