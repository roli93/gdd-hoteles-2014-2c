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
            DatabaseAdapter.Excepciones.Add(-5, new ExcepcionFrbaHoteles("La direccion de mail ingresada ya ha sido registrada"));
            DatabaseAdapter.Excepciones.Add(-6, new ExcepcionFrbaHoteles("El tipo y número de identifiación ingresados ya pertenecen a un cliente de la cadena"));
            DatabaseAdapter.Excepciones.Add(-10, new ExcepcionFrbaHoteles("El código de reserva indicado no corresponde a ninguna reserva registrada en el sistema"));
            DatabaseAdapter.Excepciones.Add(-11, new ExcepcionFrbaHoteles("La reserva es inmodificable dado que su fecha de inicio es hoy o ya ha pasado"));
            DatabaseAdapter.Excepciones.Add(-12, new ExcepcionFrbaHoteles("La reserva es inmodificable porque ya ha sido cancelada"));
            DatabaseAdapter.Excepciones.Add(-13, new ExcepcionFrbaHoteles("La reserva es inmodificable porque ya ha sido realizado el check-in sobre ella"));
            DatabaseAdapter.Excepciones.Add(-14, new ExcepcionFrbaHoteles("La reserva solo es modificable por usuarios logueados en el hotel donde se realizó o invitados"));
            DatabaseAdapter.Excepciones.Add(-15, new ExcepcionFrbaHoteles("Solo se puede registrar el ingreso el día que la reserva comienza"));
            DatabaseAdapter.Excepciones.Add(-20, new ExcepcionFrbaHoteles("El pais indicado no existe"));

            //------------------CONFIGURACIONES------------------->>

            Application.Run(new PantallaBienvenida());

        }
    }
}
