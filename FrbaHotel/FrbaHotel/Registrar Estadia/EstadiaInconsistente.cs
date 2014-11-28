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
    public partial class EstadiaInconsistente : Alta
    {
        int idReserva;

        public EstadiaInconsistente()
        {
            InitializeComponent();
        }

        public EstadiaInconsistente(NavegableForm o, int idr):base(o)
        {
            this.idReserva = idr;
            InitializeComponent();
        }

        private void EstadiaInconsistente_Load(object sender, EventArgs e)
        {
            cargarGrilla(dataGridView1, HomeReservas.habitacionesReserva(idReserva));
            dataGridView1.Columns["ID"].Visible = false;
            cargarGrilla(dataGridView2, HomeReservas.consumiblesReserva(idReserva));
            dataGridView2.Columns["ID"].Visible = false;
            dataGridView2.Columns["IDHR"].Visible = false;
            cargarGrilla(dataGridView3, HomeReservas.fechasEstadia(idReserva));
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Borrar);
            Close();
        }

        public void Borrar()
        {
            if (MessageBox.Show("¿Seguro desea DESCARTAR estos datos?\nEsta accion no puede revertirse", "Continuar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                HomeReservas.borrarEstadiaMala(idReserva);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Restaurar);
            Close();
        }

        public void Restaurar()
        {
            if (MessageBox.Show("¿Seguro desea RESTAURAR estos datos inmodificables?\nEsta accion no puede revertirse", "Continuar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                HomeReservas.restaurarEstadiaMala(idReserva);
        }
    }
}
