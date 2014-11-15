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

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class SeleccionarUsuario
    {
        private string nombre="", apellido="", email="",username="";
        private Rol rol= new Rol(-1,"");
        private Hotel hotel = new Hotel(-1, "");
        private DataTable usuarios;

        public void Buscar()
        {
            ValidarErrores();
            usuarios= HomeUsuarios.buscarUsuarios(nombre, apellido, email, username, rol, hotel);
            cargarGrilla(dataGridView1, usuarios);
        }

        public void EliminarUsuario(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            if (MessageBox.Show("¿Realmente desea dar de baja a "+celdas["nombre"].Value.ToString() +" "+celdas["apellido"].Value.ToString()+"?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeUsuarios.bajaLogica(aModificar);
                MessageBox.Show("La baja fue efectuada con éxito");
                cargarGrilla(grilla, HomeUsuarios.buscarUsuarios(nombre, apellido, email, username, rol, hotel));
            }
        }

    }
}