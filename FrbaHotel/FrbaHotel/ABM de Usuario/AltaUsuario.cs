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
            password= _password.Text;
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            username=_username.Text;
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            confirmarPassword = _confirmarPassword.Text;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {
            nroDocumento = _nroDocumento.Text;
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            apellido = _apellido.Text;
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {
            mail = _mail.Text;
        }

        private void textBox10_TextChanged(object sender, EventArgs e)
        {
            telefono = _telefono.Text;
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {
            direccion = _username.Text;
        }
 
        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            hoteles = CheckListToList<Hotel>(checkedListBox2);
            roles = CheckListToList<Rol>(checkedListBox1);
            ExcecuteAndShow(Guardar);
        }

        private void AltaUsuario_Load(object sender, EventArgs e)
        {
            dateTimePicker1.Value = Sesion.FechaActual;
            bindCheckedListBox<Rol>(checkedListBox1, Sesion.RolesDisponibles);
            bindCheckedListBox<Hotel>(checkedListBox2, Sesion.HotelesDisponibles);
            bindCombo<TipoDocumento>(comboBox1, Sesion.TiposDocumentoDisponibles);            
            _password.UseSystemPasswordChar = true;
            _confirmarPassword.UseSystemPasswordChar = true;
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
            
        }

        private void checkedListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


    }
}
