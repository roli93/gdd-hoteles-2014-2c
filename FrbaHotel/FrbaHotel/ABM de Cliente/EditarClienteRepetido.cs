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
        string nroId;
        TipoDocumento tipoID;
        string mail;

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
            tipoID = (TipoDocumento)comboBox1.SelectedItem;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            nroId = textBox1.Text;
        }

        private void EditarClienteRepetido_Load(object sender, EventArgs e)
        {
            textBox1.Text = cliente.NumeroId;
            bindCombo<TipoDocumento>(comboBox1, Sesion.TiposDocumentoDisponibles);
            comboBox1.SelectedIndex = comboBox1.FindStringExact(cliente.TipoIdentificacion.Descripcion, 0);
            textBox2.Text = cliente.Mail;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cliente.TipoIdentificacion = tipoID;
            cliente.NumeroId = nroId;
            cliente.Mail = mail;
            ((AsistenteClientesRepetidos)Owner).ActualizarGrilla();
            Close();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            mail = textBox2.Text;
        }


    }
}
