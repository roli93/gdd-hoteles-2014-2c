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
            Excecute(Continuar);
        }

        private void ABM_Load(object sender, EventArgs e)
        {
            radioAlta.Text = "Crear " + article + " " + entityName + " desde cero";
            radioModificacion.Text = "Modificar " + article + " " + entityName + " existente";
            radioBaja.Text = "Eliminar " + article + " " + entityName;
            this.Text = entityName.Substring(0, 1).ToUpper() + entityName.Substring(1)+"s";
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
