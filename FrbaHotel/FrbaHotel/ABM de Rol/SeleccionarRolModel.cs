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

namespace FrbaHotel.ABM_de_Rol
{
    public partial class SeleccionarRol
    {
        private string nombre = "";
        private bool estaActivo;
        private DataTable roles;

        public virtual void Buscar()
        {
            ValidarErrores();
            roles = HomeRoles.buscarRoles(nombre, estaActivo);
            cargarGrilla(_gridRoles, roles);
        }

        public void EliminarRol(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            string nombre = celdas["nombre"].Value.ToString();
            if (MessageBox.Show("¿Realmente desea dar de baja el rol "+nombre +"?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeRoles.bajaLogica(aModificar);
                cargarGrilla(grilla, roles);
            }
        }

    }
}
    

