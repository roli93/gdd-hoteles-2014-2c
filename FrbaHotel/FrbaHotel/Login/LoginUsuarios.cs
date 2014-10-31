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
            iniciarSesion();
            bindCombo(comboRoles,Roles);
            bindCombo(comboHoteles, Hoteles);
            foreach (Control control in firstSet)
                control.Hide();
            foreach (Control control in secondSet)
                control.Show();
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

 
    }
}
