using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Registrar_Consumible
{
    public partial class RegistrarConsumibles : Alta
    {
        public RegistrarConsumibles()
        {
            InitializeComponent();
        }

        public RegistrarConsumibles(NavegableForm o,int idReserva):base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            new AgregarConsumible(this, idReserva).OpenDialogue();
        }

        private void RegistrarConsumibles_Load(object sender, EventArgs e)
        {
            cargarBotonModificarDatos(dataGridView1, "Eliminar");
            ActualizarGrilla();
            dataGridView1.Columns["ID"].Visible = false;
            dataGridView1.Columns["IDHR"].Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Los consumibles fueron agregados");
            Close();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            operacionBotonConSeleccionado(dataGridView1, e);
        }
    }
}
