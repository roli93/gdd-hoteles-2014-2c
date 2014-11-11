using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Registrar_Consumible;
using FrbaHotel.Homes;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Dominio;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class RegistrarEgreso : Alta
    {
        protected int idReserva;
        public ModoPago modoPago=null;

        public RegistrarEgreso()
        {
            InitializeComponent();
        }

        public RegistrarEgreso(NavegableForm o, int idReserva):base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new RegistrarConsumibles(this, idReserva).StandaloneOpen() ;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            new ElegirMetodoPago(this).StandaloneOpen(); 
        }

        public void Facturar()
        {
            if (modoPago != null)
            {
                HomeReservas.facturar(idReserva, dateTimePicker1.Value, modoPago);
                new Factura(this, DatabaseAdapter.getIdUltimaInsercion()).FinalStandaloneOpen();
            }
        }

    }
}
