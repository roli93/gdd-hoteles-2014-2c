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
            {typeof(ComboBox), c => {}},
            {typeof(CheckedListBox), c => ClearItems((CheckedListBox)c)},
            {typeof(DateTimePicker), c => ((DateTimePicker)c).Value=DateTime.Now}
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
                if ((!int.TryParse(campo, out i)) && (campo != null) && (campo != ""))
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

        public void ValidarCollecionVacia<T>(string nombreCampo, List<T> campo)
        {
            if (campo.Count==0)
                    errorMessage += ("No se han seleccionado opciones para " + nombreCampo + "\n");
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

        public List<T> CheckListToList<T>(CheckedListBox checkedList)
        {
            List<T> lista = new List<T>();
            foreach (T elemento in checkedList.CheckedItems)
                lista.Add(elemento);
            return lista;
        }

        public static void ClearItems(CheckedListBox checkedListBox)
        {
            object[] items = new object[checkedListBox.Items.Count];
            checkedListBox.Items.CopyTo(items, 0);
            checkedListBox.Items.Clear();
            checkedListBox.Items.AddRange(items);
        }
    }
}
