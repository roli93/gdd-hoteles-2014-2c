using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class SeleccionarHabitacion : Alta
    {
        public SeleccionarHabitacion()
        {
            InitializeComponent();
            //todo constructorEdicion = (id) => { return new ModificacionHabitacion(this, id); };
        }

        public SeleccionarHabitacion(NavegableForm owner, string accion)
            : base(owner)
        {
            InitializeComponent();
           //TODO  constructorEdicion = (id) => { return new ModificacionHabitacion(this, id); };
           //TODO  this.accion = accion;
        }

        private void _hotel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void _tipo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void _ubicacion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void _numero_TextChanged(object sender, EventArgs e)
        {

        }

        private void _piso_TextChanged(object sender, EventArgs e)
        {

        }

        private void _descripcion_TextChanged(object sender, EventArgs e)
        {

        }

        private void _limpiar_Click(object sender, EventArgs e)
        {

        }

        private void _aceptar_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

    }
}
