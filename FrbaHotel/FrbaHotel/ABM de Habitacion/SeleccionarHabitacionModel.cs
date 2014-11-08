using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Habitacion
{
    public partial class SeleccionarHabitacion
    {
        private string descripcion = "", ubicacion = "";
        private int numero = 0, piso = 0;
        private TipoHabitacion tipo = new TipoHabitacion(-1, "");
        private Hotel hotel = new Hotel(-1, "");
        private DataTable habitaciones;

        public void Buscar()
        {
            ValidarErrores();
            habitaciones = HomeHabitaciones.buscarHabitacionesEnHotel(hotel, numero, piso, ubicacion, tipo, descripcion);
            cargarGrilla(dataGridView1, habitaciones);
        }

        public void EliminarHabitacion(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            string numeroString = celdas["numero"].Value.ToString();
            if (MessageBox.Show("¿Realmente desea dar de baja la habitacion " + numeroString + "?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeHabitaciones.bajaLogica(aModificar);
                cargarGrilla(grilla, habitaciones);
            }
        }


    }
}
