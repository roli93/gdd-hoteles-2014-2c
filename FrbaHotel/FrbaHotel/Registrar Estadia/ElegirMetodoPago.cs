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
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class ElegirMetodoPago : Alta
    {

        public string nombre=null, apellido=null, codigo=null;

        public ElegirMetodoPago()
        {
            InitializeComponent();
        }

        public ElegirMetodoPago(NavegableForm o):base(o)
        {
            InitializeComponent();
        }

        private void ElegirMetodoPago_Load(object sender, EventArgs e)
        {
            bindCombo<ModoPago>(comboBox1, Sesion.ModosPagoDisponibles);
            textBox1.Enabled = false;
            textBox2.Enabled = false;
            textBox3.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(Facturar);
        }

        public void Facturar()
        {
            ValidarErrores();
            ((RegistrarEgreso)Owner).modoPago = (ModoPago)comboBox1.SelectedItem;
            ((RegistrarEgreso)Owner).Facturar(this,nombre,apellido,codigo);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Método de pago" }, new object[] { comboBox1.SelectedItem });
            if (comboBox1.SelectedItem != null)
                if (!((ModoPago)comboBox1.SelectedItem).Descripcion.Equals("Efectivo"))
                {
                    ValidarVaciosYLongitud(new string[] { "Nombre", "Apellido", "Código" }, new object[] { nombre, apellido, codigo });
                    ValidarNumericos(new string[] { codigo });
                }
                else
                    nombre=apellido=codigo="";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedItem != null)
                if (!((ModoPago)comboBox1.SelectedItem).Descripcion.Equals("Efectivo"))
                {
                    textBox1.Enabled = true;
                    textBox2.Enabled = true;
                    textBox3.Enabled = true;
                }
                else
                {
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            nombre = textBox1.Text;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            apellido = textBox2.Text;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            codigo = textBox3.Text;
        }

    }
}
