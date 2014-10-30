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
        private Dictionary<int, NavegableForm> funcionalidadesPosibles = new Dictionary<int, NavegableForm>();
              
        public SeleccionFuncionalidad(NavegableForm owner):base(owner)
        {
            populateFuncionalidadesPosibles();
            InitializeComponent();
        }

        public void populateFuncionalidadesPosibles()
        {
            funcionalidadesPosibles.Add(1, new ABM(this,"una","reserva"));
        }

        private void SeleccionFuncionalidad_Load(object sender, EventArgs e)
        {
            this.comboBox1.Items.AddRange(Sesion.Usuario.RolActual.Funcionalidades.ToArray());
        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            NavegableForm ventanaFuncionalidad;
            Funcionalidad funcionalidadSeleccionada = (Funcionalidad)comboBox1.SelectedItem;
            MessageBox.Show(funcionalidadSeleccionada.Id + " y " + funcionalidadSeleccionada.Descripcion);
            funcionalidadesPosibles.TryGetValue(funcionalidadSeleccionada.Id, out ventanaFuncionalidad);
            ventanaFuncionalidad.FinalStandaloneOpen();
        }

    }
}
