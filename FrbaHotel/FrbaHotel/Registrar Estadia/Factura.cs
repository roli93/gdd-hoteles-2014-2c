﻿using System;
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
        protected int idFactura,idReserva;
        DataTable items;


        public Factura()
        {
            InitializeComponent();
        }

        public Factura(NavegableForm o , int idFactura,int idr):base(o)
        {
            this.idFactura = idFactura;
            this.idReserva = idr;
            InitializeComponent();
        }

        private void Factura_Load(object sender, EventArgs e)
        {
            _nroFact.Text = idFactura.ToString();
            items= HomeFacturas.itemsFactura(idReserva,idFactura);
            cargarGrilla(dataGridView1, items);
            AgregarDescuentoAI();
            _total.Text = Total().ToString();
        }

        public double Total()
        {
            double total=0;
            foreach (DataRow item in items.Rows)
                total += Convert.ToInt32(item["total"]);
            HomeFacturas.GuardarTotal(idFactura, total);
            return total;
        }

        public void AgregarDescuentoAI()
        {
            if (HomeReservas.tieneAI(idReserva))
            {
                double total = 0;
                foreach (DataRow item in items.Rows)
                    if (!item["Descripción"].ToString().Equals("*Días Alojado") && !item["Descripción"].ToString().Equals("*Días No Alojado"))
                        total -= Convert.ToInt32(item["total"]);
                items.Rows.Add(new object[] { "*Descuento All Inclusive", 1, total, total });
            }
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
