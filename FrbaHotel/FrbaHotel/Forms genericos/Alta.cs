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
        protected static Dictionary<Type, Action<Control>> cleaners = new Dictionary<Type, Action<Control>>() { 
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
            {typeof(ComboBox), c => ((ComboBox)c).SelectedIndex=-1},
            {typeof(CheckedListBox), c => ClearItems((CheckedListBox)c)},
            {typeof(DateTimePicker), c => ((DateTimePicker)c).Value=DateTime.Now},
            {typeof(DataGridView), c => ((DataGridView)c).DataSource=null},
    };

        public delegate NavegableForm ConstructorModificacion(int IdElemento);
        protected ConstructorModificacion constructorEdicion;

        public Alta(NavegableForm owner)
            : base(owner)
        {
        }

        public Alta(NavegableForm owner,ConstructorModificacion constructorEdicion)
            : base(owner)
        {
            this.constructorEdicion = constructorEdicion;
        }

        public Alta()
        {
        }

        public static void ClearControls(Control.ControlCollection controls)
        {
            foreach (Control control in controls)
                cleaners[control.GetType()].Invoke(control);
        }

        public virtual void Limpiar()
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
            catch (ArgumentOutOfRangeException)
            {
                errorMessage += "La fecha es inválida\n";
            }
        }

        public void ValidarVaciosYLongitud(string[] nombresCampos, object[] campos)
        {
            int i;
            for (i = 0; i < campos.Length; i++)
            {
                if (campos[i] == null)
                {
                    errorMessage += ("El campo " + nombresCampos[i] + " no ha sido completado\n");
                }
                else if (campos[i].GetType() == typeof(string))
                {
                    if (campos[i].ToString() == "")
                        errorMessage += ("El campo " + nombresCampos[i] + " no ha sido completado\n");
                    else if (campos[i].ToString().Length > 35)
                        errorMessage += ("El campo " + nombresCampos[i] + " es demasiado largo\n");
                }
            }
        }

        public void ValidarCollecionVacia<T>(string nombreCampo, List<T> campo)
        {
            if (campo.Count==0)
                    errorMessage += ("No se han seleccionado opciones para " + nombreCampo + "\n");
        }

        public bool HuboErrores()
        {

            ValidarErroresConcretos();
            return errorMessage != "";
        }

        public void ValidarErrores()
        {
            errorMessage = "";
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

        //Métodos de listado, los pongo aca porque el VS se puso en puto y no me diseña si le hago una subclase a esta

        public void cargarBotonModificarDatos(DataGridView grilla, string boton)
        {
            DataGridViewButtonColumn col = new DataGridViewButtonColumn();
            col.Text = boton;
            col.Name = "Operación";
            col.UseColumnTextForButtonValue = true;
            grilla.Columns.Add(col);
        }

        public void cargarGrilla(DataGridView grid, DataTable dataTable)
        {
            grid.DataSource = dataTable;
            grid.AutoResizeColumns(); //ajusta el tamaño de las columnas y filas a su contenido
            grid.AutoResizeRows();
        }

        public void operacionConSeleccionado(DataGridView grilla, DataGridViewCellEventArgs e, Func<DataGridViewCellEventArgs, DataGridViewCellCollection,Boolean> condicion)
        {
            if (e != null)
            {
                try
                {
                    if (grilla[0, e.RowIndex].Value == null)
                    {

                    }
                }
                catch (ArgumentOutOfRangeException)
                {
                }
                try
                {
                    DataGridViewCellCollection celdas = grilla.Rows[e.RowIndex].Cells;
                    if (condicion(e, celdas))
                    {
                        gridClickAction(celdas);
                    }
                }
                catch (ArgumentOutOfRangeException)
                {
                }
            }
            else
            {
                try
                {
                    DataGridViewCellCollection celdas = grilla.Rows[grilla.SelectedRows[0].Index].Cells;
                    if (condicion(e, celdas))
                    {
                        gridClickAction(celdas);
                    }
                }
                catch (ArgumentOutOfRangeException)
                {
                }
            }
        }

        public void operacionConSeleccionado(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            this.operacionConSeleccionado(grilla, e, (ev, c) => true);
        }


        public void operacionBotonConSeleccionado(DataGridView grilla, DataGridViewCellEventArgs e)
        {
            operacionConSeleccionado(grilla, e, (ev,celdas) => ev.ColumnIndex == celdas["Operación"].ColumnIndex);
        }



        public virtual void gridClickAction(DataGridViewCellCollection celdas)
        {
            int aModificar = Convert.ToInt32(celdas["ID"].Value);
            constructorEdicion(aModificar).StandaloneOpen();
        }

        //Métodos de reservas, los pongo aca porque el VS se puso en puto y no me diseña si le hago una subclase a esta

        public void ChequearInconsistenciaEstadia(ExceptionableTask afterCheckTask, int idReserva)
        {
            if (Homes.HomeReservas.hayInconsistencia(idReserva))
            {
                if (Sesion.Usuario.esGuest())
                    MessageBox.Show("Se ha detectado una inconsitencia en la reserva y su estadía\n Contáctese con personal de la empresa para solucionar el problema");
                else
                {
                    MessageBox.Show("Se ha detectado que en el sistema existe una estadía ya\n" +
                                "registrada para la reserva. Dicha estadía se anuló\n" +
                                "por referenciar una fecha futura. A continuación se le\n" +
                                "presentara con los datos de la estadía para que decida\n" +
                                "si eliminarla definitivamente o restaurarala", "Inconsistencia");
                    new Registrar_Estadia.EstadiaInconsistente(this, idReserva).StandaloneOpen();
                }
            }
            else
                afterCheckTask();
        }


    }
}
