using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class SeleccionarCliente
    {
        private string nombre="", apellido="", mail="", nroId="";
        private TipoDocumento tipoId=new TipoDocumento(-1,"");
        DataTable clientes;

        public void Buscar()
        {
            ValidarErrores();
            clientes = HomeClientes.buscarClientes(nombre, apellido, mail, nroId, tipoId);
            cargarGrilla(dataGridView1, clientes);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarNumericos(nroId);
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            if (celdas["correcto"].Value.ToString() == "N")
                corregirClienteRepetido(Convert.ToInt32(celdas["Número Identificación"].Value));
            else
                base.gridClickAction(celdas);
        }

        public void corregirClienteRepetido(int nroIdClienteRepetido)
        {
            string mensaje =
                "El sistema ha detectado una inconsistencia de datos\n" +
                "Hay varios clientes con el mismo tipo y número de identificación\n" +
                "que el cliente que seleccionó. Para acceder a esos datos deberá\ncorregir esta inconsistencia\n" +
                "¿Desea comenzar el asistente y solucionar la inconsistencia ahora?";                            
            if (MessageBox.Show(mensaje, "Inconsistencia de datos", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                
            }
        }

    }
}