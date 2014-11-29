using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Listado_Estadistico
{
    public partial class Formato : Alta
    {
        public Formato()
        {
            InitializeComponent();
        }
        private int anio;
        private int trimestre;
        private string procedureAEjecutar;
        private Dictionary<int, string> proceduresPorIdFormato = new Dictionary<int,string>();
        private DataTable resultados;

        public Formato(NavegableForm owner, int anioIngresado, int trimestreElegido)
            : base(owner)
        {
            anio = anioIngresado;
            trimestre = trimestreElegido;

            proceduresPorIdFormato.Add(1, "top5estadistico_hoteles_mas_reservas_canceladas");
            proceduresPorIdFormato.Add(2, "top5estadistico_hoteles_mas_consumibles_facturados");
            proceduresPorIdFormato.Add(3, "top5estadistico_hoteles_con_mas_periodo_inactivo");
            proceduresPorIdFormato.Add(4, "top5estadistico_habitaciones_mas_ocupadas");
            proceduresPorIdFormato.Add(5, "top5estadistico_clientes_por_puntaje");
            
            InitializeComponent();

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            proceduresPorIdFormato.TryGetValue(comboBox1.SelectedIndex, out procedureAEjecutar);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            resultados = DatabaseAdapter.traerDataTable(procedureAEjecutar, trimestre, anio);

            cargarGrilla(dataGridView1, resultados);

        }



    }
}
