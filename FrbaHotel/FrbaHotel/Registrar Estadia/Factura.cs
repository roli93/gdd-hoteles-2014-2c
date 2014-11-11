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
    public partial class Factura : Alta
    {
        protected int idFactura;


        public Factura()
        {
            InitializeComponent();
        }

        public Factura(NavegableForm o , int idFactura):base(o)
        {
            this.idFactura = idFactura;
            InitializeComponent();
        }

        private void Factura_Load(object sender, EventArgs e)
        {
            _nroFact.Text = idFactura.ToString();
            cargarGrilla(dataGridView1, HomeFacturas.itemsFactura(idFactura));
            _total.Text = HomeFacturas.totalFactura(idFactura).ToString();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
