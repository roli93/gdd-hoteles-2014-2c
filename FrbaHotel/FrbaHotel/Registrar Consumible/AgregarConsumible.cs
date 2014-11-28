using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Consumible
{
    public partial class AgregarConsumible : Alta
    {
        public AgregarConsumible()
        {
            InitializeComponent();
        }

        public AgregarConsumible(NavegableForm o, int idReserva):base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void AgregarConsumible_Load(object sender, EventArgs e)
        {
            bindCombo<Producto>(comboBox1, Sesion.ProductosDisponibles);
            bindCombo<Habitacion>(comboBox2, HomeReservas.habitacionesReservadas(idReserva));
            numericUpDown1.Minimum = 1;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            producto = (Producto)comboBox1.SelectedItem;
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            cantidad = Convert.ToInt32(numericUpDown1.Value);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(Agregar);
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            habitación = (Habitacion)comboBox2.SelectedItem;
        }
    }
}
