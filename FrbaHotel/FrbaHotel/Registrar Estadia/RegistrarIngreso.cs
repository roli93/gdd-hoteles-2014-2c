using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class RegistrarIngreso : Alta
    {

        bool inicio = true;

        public RegistrarIngreso()
        {
            InitializeComponent();
        }

        public RegistrarIngreso(NavegableForm o, int idReserva):base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void RegistrarIngreso_Load(object sender, EventArgs e)
        {
            MessageBox.Show("Las siguientes habitaciones fueron asignadas automáticamente por el sistema\n Pulse \"Moficiar\" para cambairlas");
            cargarBotonModificarDatos(dataGridView1, "Modificar");
            button2.Hide();
            ActualizarGrilla();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            operacionBotonConSeleccionado(dataGridView1, e);
        }

        private void toolTip1_Popup(object sender, PopupEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            inicio = false;
            dataGridView1.DataSource = null;
            ((DataGridViewButtonColumn)dataGridView1.Columns["Operación"]).Text = "Agregar Cliente";
            ActualizarGrilla();
            button1.Hide();
            button2.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            HomeReservas.ingresarReserva(idReserva);
            MessageBox.Show("El check-in se realizó con éxito");
            Close();
        }
    }
}
