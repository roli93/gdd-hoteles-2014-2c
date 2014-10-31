using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Login
{
    public partial class SeleccionFuncionalidad : NavegableForm
    {
        private static Dictionary<int, NavegableForm> funcionalidadesPosibles = new Dictionary<int, NavegableForm>();

        public static Dictionary<int, NavegableForm> FuncionalidadesPosibles
        {
            get
            {
                return funcionalidadesPosibles;
            }
            set
            {
                funcionalidadesPosibles=value;
            }
        }

        private void agregarPadreAFuncionalidades()
        {
            foreach (KeyValuePair<int, NavegableForm> entrada in funcionalidadesPosibles)
                entrada.Value.Owner = this;
        }

        public List<Object> Funcionalidades
        {
            get
            {
                return Sesion.Usuario.RolActual.Funcionalidades.Cast<Object>().ToList();
            }
        }

         public NavegableForm VentanaFuncionalidad
        {
            get
            {
                NavegableForm ventanaFuncionalidad;
                Funcionalidad funcionalidadSeleccionada = (Funcionalidad)comboFuncionalidad.SelectedItem;
                funcionalidadesPosibles.TryGetValue(funcionalidadSeleccionada.Id, out ventanaFuncionalidad);
                return ventanaFuncionalidad;
            }
        }

    }
}
