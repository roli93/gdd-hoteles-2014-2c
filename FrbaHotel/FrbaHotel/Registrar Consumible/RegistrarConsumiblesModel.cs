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

namespace FrbaHotel.Registrar_Consumible
{
    public partial class RegistrarConsumibles : Alta
    {
        int idReserva;

        public void ActualizarGrilla()
        {
            DataTable consumibles =HomeReservas.consumiblesReserva(idReserva);
            cargarGrilla(dataGridView1, consumibles );
            if (consumibles.Rows.Count > 0)
            {
                dataGridView1.Columns["ID"].Visible = false;
                dataGridView1.Columns["IDHR"].Visible = false;
            }
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            HomeReservas.removerConsumible(Convert.ToInt32(celdas["IDHR"].Value), Convert.ToInt32(celdas["id"].Value));
            ActualizarGrilla();
        }

   
    }
}