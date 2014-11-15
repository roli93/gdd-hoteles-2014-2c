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
            //Asociación funcionalidad-vista
            Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator> funcionalidadesSistema = new Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator>();
            funcionalidadesSistema.Add(1,(owner) => new ABMRol(owner));
            funcionalidadesSistema.Add(2, (owner) => new ABMUsuario(owner));
            funcionalidadesSistema.Add(3, (owner) => new ABMClientes(owner));
            funcionalidadesSistema.Add(4, (owner) => new ABMHotel(owner));
            funcionalidadesSistema.Add(5, (owner) => new ABMHabitacion(owner));
            funcionalidadesSistema.Add(6, (owner) => new ABMReservas(owner));
            funcionalidadesSistema.Add(7, (owner) => new RegistrarEstadia(owner));
            SeleccionFuncionalidad.FuncionalidadesPosibles= funcionalidadesSistema;
            //Excepciones globales
            DatabaseAdapter.Excepciones.Add(-2, new ExcepcionFrbaHoteles("El usuario no existe o fue dado de baja"));
            DatabaseAdapter.Excepciones.Add(-1, new ExcepcionFrbaHoteles("La contraseña ingresada es incorrecta"));
            DatabaseAdapter.Excepciones.Add(-3, new ExcepcionFrbaHoteles("Se ha inhabilitado al usuario por realizarse 3 intentos fallidos de login"));
            DatabaseAdapter.Excepciones.Add(-4, new ExcepcionFrbaHoteles("El nombre de usuario ingresado no se encuentra disponible"));

            //------------------CONFIGURACIONES------------------->>

            Application.Run(new PantallaBienvenida());

        }
    }
}
