using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.Login
{
    public partial class LoginUsuarios : NavegableForm
    {
        private object[] firstSet, secondSet;

        public LoginUsuarios()
        {
            InitializeComponent();
        }

        public LoginUsuarios(NavegableForm owner) : base(owner)
        {
            InitializeComponent();
            secondSet = new object[]{groupBox1,groupBox2,button3,comboBox1,comboBox2};
            firstSet = new object[] { label1, label2, textBox1, textBox2, button1, button2 };
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void login_Load(object sender, EventArgs e)
        {
            foreach (Control control in secondSet)
                control.Hide();
        }


        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {           
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Sesion.iniciar(textBox1.Text, textBox2.Text);
            this.comboBox1.Items.AddRange(Sesion.Usuario.Roles.ToArray());
            this.comboBox2.Items.AddRange(Sesion.Usuario.Hoteles.ToArray());
            foreach (Control control in firstSet)
                control.Hide();
            foreach (Control control in secondSet)
                control.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Sesion.Usuario.RolActual = (Rol)comboBox1.SelectedItem;
            Sesion.Usuario.HotelActual = (Hotel)comboBox2.SelectedItem;
            new SeleccionFuncionalidad(this).StandaloneOpen();
        }

 
    }
}
