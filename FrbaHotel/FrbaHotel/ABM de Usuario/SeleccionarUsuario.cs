using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class SeleccionarUsuario :Alta
    {
        public SeleccionarUsuario()
        {
            InitializeComponent();
            constructorEdicion = (id) => { return new ModificacionUsuario(this, id); };
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Execute(Buscar);
            cargarGrilla(dataGridView1, usuarios);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void SeleccionarUsuario_Load(object sender, EventArgs e)
        {
            cargarBotonModificarDatos(dataGridView1, "Editar");
        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {
            username = textBox1.Text;
        }

        private void textBox3_TextChanged_1(object sender, EventArgs e)
        {
            nombre = textBox3.Text;
        }

        private void textBox8_TextChanged_1(object sender, EventArgs e)
        {
            apellido = textBox8.Text;
        }

        private void textBox6_TextChanged_1(object sender, EventArgs e)
        {
            email = textBox6.Text;
        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            rol = (Rol) comboBox1.SelectedItem;
        }

        private void comboBox2_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            hotel = (Hotel)comboBox2.SelectedItem;
        }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            abrirVentanaEdicion(dataGridView1, e);
        }
    }
}
