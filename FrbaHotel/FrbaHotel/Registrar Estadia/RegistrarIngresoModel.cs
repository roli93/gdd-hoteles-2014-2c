using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class RegistrarIngreso
    {
        protected int idReserva;
        protected List<Habitacion> habitaciones;

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            if (inicio)
                new CambiarHabitacion(this, Convert.ToInt32(celdas["id"].Value), Convert.ToInt32(celdas["Número de habitación"].Value)).StandaloneOpen();
            else
            {
                if (MessageBox.Show("¿El cliente a ingresar ya está registrado?", "Ingresar Cliente", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    new ClienteParaReserva(this, Convert.ToInt32(celdas["id"].Value)).OpenDialogue();
                }
                else
                {
                    new AltaClientePorReserva(this, Convert.ToInt32(celdas["id"].Value)).OpenDialogue();

                }
            }
        }

        public void ActualizarGrilla()
        {
            cargarGrilla(dataGridView1,HomeReservas.habitacionesReserva(idReserva));
            dataGridView1.Columns["id"].Visible = false;
        }



    }
}