using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using FrbaHotel.ABM_de_Habitacion;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class ModificacionHabitacion : AltaHabitacion
    {
        public ModificacionHabitacion()
        {
            InitializeComponent();
        }

        public ModificacionHabitacion(NavegableForm owner, int unIdHabitacion):base(owner)
        {
            idHabitacion = unIdHabitacion;
            InitializeComponent();
            
        }

        private void ModificacionHabitacion_Load(object sender, EventArgs e)
        {
            CargarHabitacion();
            _hotel.SelectedIndex = _hotel.FindStringExact(hotel.Nombre, 0);
            _descripcion.Text = descripcion.ToString();
            _numero.Text = numero.ToString();
            _piso.Text = piso.ToString();
            _tipo.SelectedIndex = _tipo.FindStringExact(tipo.Descripcion,0);
            _ubicacion.SelectedIndex = _ubicacion.FindStringExact(ubicacion,0);
            _tipo.Enabled = false;
            this.checkBox1.Checked = habilitada;
               
            
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            habilitada = checkBox1.Checked;
        }

       

    }
}
