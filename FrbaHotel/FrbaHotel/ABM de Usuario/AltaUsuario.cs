using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class AltaUsuario : NavegableForm
    {
        public AltaUsuario()
        {
            InitializeComponent();
        }

        public AltaUsuario(NavegableForm owner)
            : base(owner)
        {
            InitializeComponent();
        }

        private void usernameLabel_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            password= textBox2.Text;
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            username=textBox1.Text;
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            confirmarPassword = textBox5.Text;
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            rol = (Rol) listBox1.SelectedItem;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            nombre = textBox3.Text;
        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {
            nroDocumento = textBox9.Text;
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            apellido = textBox8.Text;
        }

        private void domainUpDown1_SelectedItemChanged(object sender, EventArgs e)
        {
            tipoDni = (TipoDocumento) domainUpDown1.SelectedItem;
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {
            mail = textBox6.Text;
        }

        private void textBox10_TextChanged(object sender, EventArgs e)
        {
            telefono = textBox10.Text;
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {
            direccion = textBox1.Text;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            hotel = (Hotel) comboBox1.SelectedItem;
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            dia = numericUpDown1.Value;
        }

        private void numericUpDown3_ValueChanged(object sender, EventArgs e)
        {
            mes = numericUpDown3.Value;
        }

        private void numericUpDown2_ValueChanged(object sender, EventArgs e)
        {
            anio = numericUpDown2.Value;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }


    }
}
