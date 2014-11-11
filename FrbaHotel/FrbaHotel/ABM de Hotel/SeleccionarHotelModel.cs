using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;
using System.Data;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class SeleccionarHotel
    {
        protected string nombre = "";
        protected int estrellas = 0;
        protected Pais pais = new Pais(-1,"");
        protected string ciudad = "";
        protected DataTable hoteles;

        public virtual void Buscar()
        {
            ValidarErrores();
            hoteles = HomeHoteles.buscarHoteles(nombre,estrellas,pais,ciudad);
            cargarGrilla(dataGridView1, hoteles);
        }

        public void EliminarHotel(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            string nombreAux = celdas["nombre"].Value.ToString();
            if (MessageBox.Show("¿Realmente desea dar de baja el rol " + nombreAux + "?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeHoteles.bajaLogica(aModificar);
                cargarGrilla(grilla, hoteles);
            }
        }


    }
}
