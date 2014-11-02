using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class AltaUsuario : Alta
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
 
        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Guardar);
        }

        private void AltaUsuario_Load(object sender, EventArgs e)
        {
            dateTimePicker1.Value = DateTime.Now;
            bindCheckedListBox(checkedListBox1, Sesion.ObjectRoles);
            bindCheckedListBox(checkedListBox2, Sesion.ObjectHoteles);
            bindCombo(comboBox1, new List<object>(new object[] { new TipoDocumento(1, "DNI") })/*TODO: new List<object>(DatabaseAdapter.dataTableToString("obtener_tipo_documento", "descripcion",null))*/);
            textBox2.UseSystemPasswordChar = true;
            textBox5.UseSystemPasswordChar = true;
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            fechaNacimiento = dateTimePicker1.Value;            
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipoDni = (TipoDocumento)comboBox1.SelectedItem;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            roles = CheckListToList<Rol>(checkedListBox1);
        }

        private void checkedListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            hoteles = CheckListToList<Hotel>(checkedListBox2);
        }


    }
}
