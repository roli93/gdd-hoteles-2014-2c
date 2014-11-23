using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class SeleccionarRegimen : Alta
    {
        private GenerarReserva generarReserva;

        public SeleccionarRegimen()
        {
            InitializeComponent();
        }

        public SeleccionarRegimen(GenerarReserva o):base(o)
        {
            this.generarReserva = o;
            InitializeComponent();

        }

        private void SeleccionarRegimen_Load(object sender, EventArgs e)
        {
            cargarGrilla(dataGridView1,HomeReservas.regimenesParaHotel(generarReserva.Hotel));
            cargarBotonModificarDatos(dataGridView1, "Elegir");
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            operacionBotonConSeleccionado(dataGridView1,e);
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            generarReserva.CambiarRegimen(new Regimen(Convert.ToInt32(celdas["ID"].Value), celdas["descripción"].Value.ToString()));
            Close();
        }


    }
}
