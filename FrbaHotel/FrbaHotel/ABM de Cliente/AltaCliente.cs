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
    public partial class AltaCliente : Alta
    {
        public AltaCliente()
        {
            InitializeComponent();
        }

        public AltaCliente(NavegableForm owner):base(owner)
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void _nombre_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void _apellido_TextChanged(object sender, EventArgs e)
        {
            apellido = _apellido.Text;
        }

        private void _nroDocumento_TextChanged(object sender, EventArgs e)
        {
            nroId = _nroDocumento.Text;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tipoId = (TipoDocumento) comboBox1.SelectedItem;
        }

        private void _mail_TextChanged(object sender, EventArgs e)
        {
            mail = _mail.Text;
        }

        private void _telefono_TextChanged(object sender, EventArgs e)
        {
            telefono = _telefono.Text;
        }

        private void _pais_SelectedIndexChanged(object sender, EventArgs e)
        {
            pais = (Pais) _pais.SelectedItem;
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            fechaNacimiento = dateTimePicker1.Value;
        }

        private void _direccion_TextChanged(object sender, EventArgs e)
        {
            calle = _direccion.Text;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            localidad = textBox1.Text;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Guardar);
        }
    }
}
