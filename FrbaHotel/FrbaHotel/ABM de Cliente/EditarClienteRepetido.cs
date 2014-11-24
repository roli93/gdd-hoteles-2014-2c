using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Dominio;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class EditarClienteRepetido : Alta
    {
        Cliente cliente;

        public EditarClienteRepetido()
        {
            InitializeComponent();
        }

        public EditarClienteRepetido(NavegableForm o, Cliente cliente):base(o)
        {
            this.cliente = cliente;
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cliente.TipoIdentificacion = (TipoDocumento)comboBox1.SelectedItem;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            cliente.NumeroId = textBox1.Text;
        }

        private void EditarClienteRepetido_Load(object sender, EventArgs e)
        {
            textBox1.Text = cliente.NumeroId;
            bindCombo<TipoDocumento>(comboBox1, Sesion.TiposDocumentoDisponibles);
            comboBox1.SelectedIndex = comboBox1.FindStringExact(cliente.TipoIdentificacion.Descripcion, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ((AsistenteClientesRepetidos)Owner).ActualizarGrilla();
            Close();
        }


    }
}
