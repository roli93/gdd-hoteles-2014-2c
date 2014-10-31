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
        private static Dictionary<int, NavegableFormInstanciator> funcionalidadesPosibles = new Dictionary<int, NavegableFormInstanciator>();
        public delegate NavegableForm NavegableFormInstanciator(NavegableForm owner);

        public static Dictionary<int, NavegableFormInstanciator> FuncionalidadesPosibles
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
            /*foreach (KeyValuePair<int, NavegableFormInstanciator> entrada in funcionalidadesPosibles)
               entrada.Value.Owner = this;*/
        }

        public List<Object> Funcionalidades
        {
            get
            {
                return Sesion.Usuario.Rol.Funcionalidades.Cast<Object>().ToList();
            }
        }

         public NavegableForm VentanaFuncionalidad
        {
            get
            {
                NavegableFormInstanciator constructor;
                Funcionalidad funcionalidadSeleccionada = (Funcionalidad)comboFuncionalidad.SelectedItem;
                funcionalidadesPosibles.TryGetValue(funcionalidadSeleccionada.Id, out constructor);
                return constructor(this);
            }
        }

    }
}
