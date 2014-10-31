using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using FrbaHotel.Login;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            //<<------------------CONFIGURACIONES-------------------
            Dictionary<int, NavegableForm> funcionalidadesSistema = new Dictionary<int, NavegableForm>();
            funcionalidadesSistema.Add(1, new ABM(null, "una", "reserva"));
            SeleccionFuncionalidad.FuncionalidadesPosibles= funcionalidadesSistema;
            // DatabaseAdapter.Excepciones=...
            //------------------CONFIGURACIONES------------------->>
            
                Application.Run(new PantallaBienvenida());
        }
    }
}
