using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class GenerarReserva : Alta
    {
        public GenerarReserva()
        {
            InitializeComponent();
        }

        public GenerarReserva(NavegableForm o):base(o)
        {
            InitializeComponent();
        }

        public GenerarReserva(NavegableForm o,Hotel hotel)
            : base(o)
        {
            this.hotel = hotel;
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            fechaInicio = dateTimePicker2.Value;
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            fechaFin = dateTimePicker1.Value;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            hotel = (Hotel)_hotel.SelectedItem;
            _seleccionarRegimen.Enabled = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void GenerarReserva_Load(object sender, EventArgs e)
        {
            if (hotel == null)
            {
                _seleccionarRegimen.Enabled = false;
                bindCombo<Hotel>(_hotel, Sesion.HotelesDisponibles);
            }
            else
            {
                hotel = Sesion.Usuario.Hotel;
                labelHotel.Hide();
                _hotel.Hide();
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Guardar);
        }



    }
}
