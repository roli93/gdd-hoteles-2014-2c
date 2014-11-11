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
            cargarGrilla(dataGridView1, HomeReservas.consumiblesReserva(idReserva));
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            HomeReservas.removerConsumible(idReserva, Convert.ToInt32(celdas["id"].Value));
            ActualizarGrilla();
        }

   
    }
}