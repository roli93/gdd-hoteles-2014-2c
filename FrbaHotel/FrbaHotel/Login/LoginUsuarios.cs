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
            secondSet = new object[]{groupBox1,groupBox2,botonAcceder,comboRoles,comboHoteles};
            firstSet = new object[] { label1, label2, userTextBox, passTextBox, botonIniciarSesion, botonVolver };
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void login_Load(object sender, EventArgs e)
        {
            foreach (Control control in secondSet)
                control.Hide();
            passTextBox.UseSystemPasswordChar = true;
            passTextBox.KeyDown += new KeyEventHandler(passTextBox_KeyDown);
            userTextBox.KeyDown += new KeyEventHandler(userTextBox_KeyDown);
        }

        void userTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                Execute(iniciarSesion);
        }

        void passTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode==Keys.Enter)
                Execute(iniciarSesion);
        }


        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.rol = (Rol)comboRoles.SelectedItem;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Execute(iniciarSesion);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Execute(acceder);
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.hotel = (Hotel)comboHoteles.SelectedItem;
        }

        private void passTextBox_TextChanged(object sender, EventArgs e)
        {
            password = passTextBox.Text;
        }

        private void userTextBox_TextChanged(object sender, EventArgs e)
        {
            username = userTextBox.Text;
        }

        private void groupBox1_Enter_1(object sender, EventArgs e)
        {

        }

 
    }
}
