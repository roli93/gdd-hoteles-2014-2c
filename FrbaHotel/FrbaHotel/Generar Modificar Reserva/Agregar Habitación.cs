using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class Agregar_Habitación : Alta
    {
        public Agregar_Habitación()
        {
            InitializeComponent();
        }

        public Agregar_Habitación(GenerarReserva o):base(o)
        {
            generarReserva = o;
            InitializeComponent();
            numericUpDown1.Minimum = 1;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipoHabitacion = (TipoHabitacion) comboBox1.SelectedItem;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(Agregar);
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            cantidad = Convert.ToInt32(numericUpDown1.Value);
        }

        private void Agregar_Habitación_Load(object sender, EventArgs e)
        {
            if(generarReserva.Hotel==null||generarReserva.FechaFin==null || generarReserva.FechaInicio==null||generarReserva.Regimen==null)
            {
                throw new ExcepcionFrbaHoteles("Debe seleccionar un hotel, un régimen y dos fechas");
            }
            bindCombo<TipoHabitacion>(comboBox1,Sesion.TiposHabitacionDisponibles);
            numericUpDown1.Value = 1;
            hotel = generarReserva.Hotel;
            fechaFin = generarReserva.FechaFin;
            fechaInicio = generarReserva.FechaInicio;
        }


    }
}
