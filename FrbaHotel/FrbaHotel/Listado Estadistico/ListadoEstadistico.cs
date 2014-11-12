using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Listado_Estadistico
{
    public partial class ListadoEstadistico : Alta
    {
        public ListadoEstadistico()
        {
            InitializeComponent();
        }

        public ListadoEstadistico(NavegableForm owner):base(owner)
        {
            InitializeComponent();
        }

        private int anio;
        private int trimestre;


        private void _anio_TextChanged(object sender, EventArgs e)
        {
            
            anio = Convert.ToInt32(_anio.Text);
        }

        private void _trimestre_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (_trimestre.SelectedIndex != 0)
                trimestre = _trimestre.SelectedIndex;
        }

        private void _seleccionar_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Validar);
            
        }

        public virtual void Validar()
        {
            ValidarErrores();
            new Formato(this, anio, trimestre).FinalStandaloneOpen();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Año", "Trimestre" }, new object[] {_anio.Text, _trimestre.SelectedItem });
        }


        //Puesto aca para que no tire el msgBox de operacion finalizada.
        protected override void ExcecuteAndShow(ExceptionableTask task)
        {
            try
            {
                task();
            }
            catch (ExcepcionFrbaHoteles e)
            {
                MessageBox.Show(e.Message, "Error");
                errorMessage += "  ";
            }
            catch (SystemException e)
            {
                MessageBox.Show("Ha ocurrido un error desconocido. Estamos trabajando para solucionarlo");
                errorMessage += "  ";
            }
        }


    }
}
