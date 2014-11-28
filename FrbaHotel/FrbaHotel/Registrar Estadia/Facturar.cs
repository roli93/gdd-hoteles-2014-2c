using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Generar_Modificar_Reserva;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class Facturar : Alta
    {
        int codigo;
        string cod;

        public Facturar()
        {
            InitializeComponent();
        }

        public Facturar(NavegableForm o):base(o)
        {
            InitializeComponent();
        }


        private void Facturar_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(ComenzarFacturacion);
        }

        public void ComenzarFacturacion()
        {
            ValidarErrores();
            codigo = Convert.ToInt32(cod);
            HomeReservas.verificarReservaEsFacturable(codigo, Sesion.Usuario.Hotel.Id);
            RegistrarEgreso RE = new RegistrarEgreso(this, codigo);
            RE.FinalStandaloneOpen();
            RE.Hide();
            RE.ElegirPago();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Código de reserva" }, new object[] { cod });
            ValidarNumericos(textBox1.Text);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            cod = textBox1.Text;
        }
    }
}
