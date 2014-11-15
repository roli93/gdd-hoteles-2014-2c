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
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(Facturar);
        }

        public void Facturar()
        {
            ValidarErrores();
            ((RegistrarEgreso)Owner).modoPago = (ModoPago)comboBox1.SelectedItem;
            ((RegistrarEgreso)Owner).Facturar();
            Close();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Método de pago" }, new object[] { comboBox1.SelectedItem });
        }

    }
}
