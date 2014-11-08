using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class SeleccionarCliente : Alta
    {
        public SeleccionarCliente()
        {
            InitializeComponent();
        }

        public SeleccionarCliente(NavegableForm owner):base(owner)
        {
            InitializeComponent();
            constructorEdicion = (id) => { return new ModificarCliente(this,id); };
            accion = "Editar";
        }

        protected string accion;

        private void SeleccionarCliente_Load(object sender, EventArgs e)
        {
            bindCombo<TipoDocumento>(comboBox1, Sesion.TiposIdDisponibles);
            cargarBotonModificarDatos(dataGridView1, accion);
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            apellido = _apellido.Text;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            mail = textBox2.Text;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipoId = (TipoDocumento) comboBox1.SelectedItem;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            nroId = textBox1.Text;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Execute(Buscar);
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            abrirVentanaEdicion(dataGridView1, e);
        }
    }
}
