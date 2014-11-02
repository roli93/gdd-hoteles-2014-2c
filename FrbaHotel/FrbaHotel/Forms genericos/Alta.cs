using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Forms_genericos
{
    public class Alta : NavegableForm
    {
        private static Dictionary<Type, Action<Control>> cleaners = new Dictionary<Type, Action<Control>>() { 
            {typeof(TextBox), c => ((TextBox)c).Clear()},
            {typeof(CheckBox), c => ((CheckBox)c).Checked = false},
            {typeof(ListBox), c =>{} },
            {typeof(RadioButton), c => ((RadioButton)c).Checked = false},
            {typeof(GroupBox), c => ClearControls(((GroupBox)c).Controls)},
            {typeof(Panel), c => ClearControls(((Panel)c).Controls)},
            {typeof(NumericUpDown), c => ((NumericUpDown)c).Value=0},
            {typeof(DomainUpDown), c => {}},
            {typeof(Button), c => {}},
            {typeof(Label), c => {}},
            {typeof(ComboBox), c => {}}
    };

        protected string errorMessage = "";

        public Alta(NavegableForm owner)
            : base(owner)
        {
        }

        public Alta()
        {
        }

        public static void ClearControls(Control.ControlCollection controls)
        {
            foreach (Control control in controls)
                cleaners[control.GetType()].Invoke(control);
        }

        public void Limpiar()
        {
            ClearControls(this.Controls);
        }

        public void ValidarNumericos(params string[] campos)
        {
            int i;
            foreach (string campo in campos)
                if (!int.TryParse(campo, out i))
                    errorMessage += ("\""+campo + "\" no es un número válido \n");
        }

        public void ValidarFechas(int dia, int mes, int anio)
        {
            try
            {
                new DateTime(anio, mes, dia);
            }
            catch (ArgumentOutOfRangeException e)
            {
                errorMessage += "La fecha es inválida\n";
            }
        }

        public void ValidarVacios(string[] nombresCampos, object[] campos)
        {
            int i;
            for (i = 0; i < campos.Length;i++ )
                if (campos[i]==null)
                    errorMessage += ("El campo "+nombresCampos[i] + " no ha sido completado\n");
        }

        public bool HuboErrores()
        {
            errorMessage = "";
            ValidarErroresConcretos();
            return errorMessage != "";
        }

        public void ValidarErrores()
        {
            if (HuboErrores())
                throw new ExcepcionFrbaHoteles(errorMessage);

        }

        public virtual void ValidarErroresConcretos()
        {
        }

        public void AddElementos(string tablaIntermedia, int idOneSide, List<int> idsManySide)
        {
            foreach(int id in idsManySide)
                DatabaseAdapter.insertarDatosEnTabla(tablaIntermedia,idOneSide,id);
        }


    }
}
