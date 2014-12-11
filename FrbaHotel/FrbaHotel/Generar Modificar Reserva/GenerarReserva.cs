using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

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
            Habitaciones = new List<FrbaHotel.Dominio.Habitacion>();
            successMessage = "La reserva se realizó con éxito";
            InitializeComponent();
        }

        public GenerarReserva(NavegableForm o,Hotel hotel)
            : base(o)
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            new SeleccionarRegimen(this).StandaloneOpen();
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            FechaInicio = dateTimePicker2.Value;
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            FechaFin = dateTimePicker1.Value;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Hotel = (Hotel)_hotel.SelectedItem;
            _regimen.Text = null;
            Regimen = null;
            if(_hotel.SelectedIndex.Equals(-1))
                _seleccionarRegimen.Enabled = false;
            else
                _seleccionarRegimen.Enabled = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void GenerarReserva_Load(object sender, EventArgs e)
        {
            HomeReservas.bajaReservasViejas();
            _seleccionarRegimen.Enabled = false;
            bindCombo<Hotel>(_hotel, Sesion.HotelesDisponiblesUsuario);
            if (!Sesion.Usuario.esGuest())
            {
                _hotel.SelectedIndex = 0;
                _hotel.Enabled = false;
            }
            cargarBotonModificarDatos(dataGridView1, "Eliminar");
            FechaFin = Sesion.FechaActual;
            FechaInicio = Sesion.FechaActual;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Execute(Guardar);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Agregar_Habitación ventana =  new Agregar_Habitación(this);
            try
            {
                ventana.StandaloneOpen();
            }
            catch(ExcepcionFrbaHoteles exc)
            {
                MessageBox.Show(exc.Message);
                ventana.Close();
            }
        }

        private void _regimen_TextChanged(object sender, EventArgs e)
        {
            Regimen.Descripcion = _regimen.Text;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            operacionBotonConSeleccionado(dataGridView1, e);
        }



    }
}
