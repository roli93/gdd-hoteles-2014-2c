using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class SeleccionarHabitacion
    {
        private string descripcion = "", ubicacion = "";
        private string numero = "", piso = "";
        private TipoHabitacion tipo = null;
        private Hotel hotel = null;
        private DataTable habitaciones;
        private string habilitacionString;

        public void Buscar()
        {
            ValidarErrores();
            if (ubicacion != null)
            {
                if (ubicacion.Equals("Interior"))
                    ubicacion = "N";
                else if (ubicacion.Equals("Exterior"))
                    ubicacion = "S";
            }
            habitaciones = HomeHabitaciones.buscarHabitaciones(hotel, numero, piso, ubicacion, tipo, descripcion,habilitacionString);
            bool vacia = false;
            if (habitaciones.Rows.Count.Equals(0))
                vacia = true;
            cargarGrilla(dataGridView1, habitaciones);
            if(!vacia)
            {
                dataGridView1.Columns["id_hotel"].Visible = false;
                dataGridView1.Columns["ID"].Visible = false;
            }
        }

        public void EliminarHabitacion(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            string numeroString = celdas["numero"].Value.ToString();
            if (MessageBox.Show("¿Realmente desea dar de baja la habitacion " + numeroString + "?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeHabitaciones.bajaLogica(aModificar);
                Execute(Buscar);
                cargarGrilla(grilla, habitaciones);
            }
        }

        public override void ValidarErroresConcretos()
        {
            ValidarNumericos(numero, piso) ;
        }

    }
}
