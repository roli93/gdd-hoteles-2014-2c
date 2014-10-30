using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Login;

namespace FrbaHotel
{
    public partial class ABM : NavegableForm
    {
        private string article;
        public ABM()
        {
            this.entityName = "un algo";
            InitializeComponent();
        }

        public ABM(NavegableForm owner, string article,string entityName) : base(owner)
        {
            this.entityName = entityName;
            this.article = article;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //TODO: Negrada, mejorar si hay tiempo
            if (this.radioButton1.Checked)
                MessageBox.Show("Proximamente Alta");
            if (this.radioButton2.Checked)
                MessageBox.Show("Proximamente Modificacion");
            if (this.radioButton3.Checked)
                MessageBox.Show("Proximamente Baja");
        }

        private void ABM_Load(object sender, EventArgs e)
        {
            radioButton1.Text = "Crear " + article + " " + entityName + " desde cero";
            radioButton2.Text = "Modificar " + article + " " + entityName + " existente";
            radioButton3.Text = "Eliminar " + article + " " + entityName;
            this.Text = entityName.Substring(0, 1).ToUpper() + entityName.Substring(1)+"s";
        }
    }
}
