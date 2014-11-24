using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Login
{
    public partial class SeleccionFuncionalidad : NavegableForm
    {       
        public SeleccionFuncionalidad(NavegableForm owner):base(owner)
        {
            agregarPadreAFuncionalidades();
            InitializeComponent();
        }

        private void SeleccionFuncionalidad_Load(object sender, EventArgs e)
        {
            bindCombo(comboFuncionalidad, Funcionalidades);
        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            VentanaFuncionalidad.StandaloneOpen();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Sesion.Usuario = null;
            Close();
        }

    }
}
