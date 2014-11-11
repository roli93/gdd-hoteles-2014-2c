using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using FrbaHotel.Login;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.ABM_de_Usuario;
using FrbaHotel.ABM_de_Cliente;
using FrbaHotel.Generar_Modificar_Reserva;
using FrbaHotel.ABM_de_Habitacion;
using FrbaHotel.ABM_de_Rol;
using FrbaHotel.Registrar_Estadia;
using FrbaHotel.ABM_de_Hotel;
using FrbaHotel.Listado_Estadistico;

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
            Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator> funcionalidadesSistema = new Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator>();
            funcionalidadesSistema.Add(1,(owner) => new RegistrarEstadia(owner));
            funcionalidadesSistema.Add(5, (owner) => new ABMClientes(owner));
            funcionalidadesSistema.Add(6, (owner) => new ABMHabitacion(owner));
            funcionalidadesSistema.Add(7, (owner) => new ABMRol(owner));
            funcionalidadesSistema.Add(8, (owner) => new ABMHotel(owner));
            funcionalidadesSistema.Add(9, (owner) => new ListadoEstadistico(owner));


            SeleccionFuncionalidad.FuncionalidadesPosibles= funcionalidadesSistema;
            // DatabaseAdapter.Excepciones=...
            //------------------CONFIGURACIONES------------------->>

            Application.Run(new PantallaBienvenida(0));

        }
    }
}
