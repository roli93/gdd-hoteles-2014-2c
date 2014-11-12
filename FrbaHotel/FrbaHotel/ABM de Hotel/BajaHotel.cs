using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class BajaHotel : NavegableForm
    {
        private int idHotel;
        private string fechaDesde;
        private string fechaHasta;

        public BajaHotel()
        {
            InitializeComponent();
        }

        public BajaHotel(NavegableForm owner, int idIngresado):base(owner)
        {
            InitializeComponent();
            this.idHotel = idIngresado;
        }

        private void _desde_ValueChanged(object sender, EventArgs e)
        {
            fechaDesde = _desde.Value.ToShortDateString();
        }

        private void _hasta_ValueChanged(object sender, EventArgs e)
        {
            fechaHasta = _hasta.Value.ToShortDateString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(BajaLogicaHotel);
        }

        private void BajaLogicaHotel()
        {
            HomeHoteles.bajaLogica(idHotel,fechaDesde,fechaHasta);
            this.Close();
        }
    }
}
