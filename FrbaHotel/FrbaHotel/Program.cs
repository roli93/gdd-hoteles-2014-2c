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
            //Carga de fecha actual
            string stringFecha = System.Configuration.ConfigurationManager.AppSettings["fechaSistema"];
            Sesion.FechaActual = DateTime.Parse(stringFecha);
            //Asociación funcionalidad-vista
            Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator> funcionalidadesSistema = new Dictionary<int, SeleccionFuncionalidad.NavegableFormInstanciator>();
            funcionalidadesSistema.Add(1,(owner) => new ABMRol(owner));
            funcionalidadesSistema.Add(2, (owner) => new ABMUsuario(owner));
            funcionalidadesSistema.Add(3, (owner) => new ABMClientes(owner));
            funcionalidadesSistema.Add(4, (owner) => new ABMHotel(owner));
            funcionalidadesSistema.Add(5, (owner) => new ABMHabitacion(owner));
            funcionalidadesSistema.Add(6, (owner) => new ABMReservas(owner));
            funcionalidadesSistema.Add(7, (owner) => new RegistrarEstadia(owner));
            funcionalidadesSistema.Add(9, (owner) => new Facturar(owner));
            funcionalidadesSistema.Add(8, (owner) => new ListadoEstadistico(owner));
            SeleccionFuncionalidad.FuncionalidadesPosibles= funcionalidadesSistema;
            //Excepciones globales
            DatabaseAdapter.Excepciones.Add(-2, new ExcepcionFrbaHoteles("El usuario no existe o fue dado de baja"));
            DatabaseAdapter.Excepciones.Add(-1, new ExcepcionFrbaHoteles("La contraseña ingresada es incorrecta"));
            DatabaseAdapter.Excepciones.Add(-3, new ExcepcionFrbaHoteles("Se ha inhabilitado al usuario por realizarse 3 intentos fallidos de login"));
            DatabaseAdapter.Excepciones.Add(-4, new ExcepcionFrbaHoteles("El nombre de usuario ingresado no se encuentra disponible"));
            DatabaseAdapter.Excepciones.Add(-5, new ExcepcionFrbaHoteles("La direccion de mail ingresada ya ha sido registrada"));
            DatabaseAdapter.Excepciones.Add(-6, new ExcepcionFrbaHoteles("El tipo y número de identifiación ingresados ya pertenecen a un cliente de la cadena"));
            DatabaseAdapter.Excepciones.Add(-10, new ExcepcionFrbaHoteles("El código de reserva indicado no corresponde a ninguna reserva registrada en el sistema"));
            DatabaseAdapter.Excepciones.Add(-8, new ExcepcionFrbaHoteles("No existe una habitación con ese número en el hotel"));
            DatabaseAdapter.Excepciones.Add(-9, new ExcepcionFrbaHoteles("La habitación seleccionada debe ser del mismo tipo que la anterior"));
            DatabaseAdapter.Excepciones.Add(-11, new ExcepcionFrbaHoteles("La reserva es inmodificable dado que su fecha de inicio es hoy o ya ha pasado"));
            DatabaseAdapter.Excepciones.Add(-12, new ExcepcionFrbaHoteles("La reserva es inmodificable porque ya ha sido cancelada"));
            DatabaseAdapter.Excepciones.Add(-13, new ExcepcionFrbaHoteles("La reserva es inmodificable porque ya ha sido realizado el check-in sobre ella"));
            DatabaseAdapter.Excepciones.Add(-14, new ExcepcionFrbaHoteles("La reserva solo es modificable por usuarios logueados en el hotel donde se realizó o invitados"));
            DatabaseAdapter.Excepciones.Add(-15, new ExcepcionFrbaHoteles("Solo se puede registrar el ingreso el día que la reserva comienza"));
            DatabaseAdapter.Excepciones.Add(-16, new ExcepcionFrbaHoteles("No se puede cargar varias veces al mismo cliente en la misma habitación"));
            DatabaseAdapter.Excepciones.Add(-17, new ExcepcionFrbaHoteles("No se puede realizar el check-out ya que aún no se ha realizado el ckeck-in"));
            DatabaseAdapter.Excepciones.Add(-18, new ExcepcionFrbaHoteles("Ya fue realizado el check-out y la reserva fue facturada"));
            DatabaseAdapter.Excepciones.Add(-19, new ExcepcionFrbaHoteles("La habitación seleccionada ya pertenece a la reserva"));
            DatabaseAdapter.Excepciones.Add(-20, new ExcepcionFrbaHoteles("El país indicado no existe"));
            DatabaseAdapter.Excepciones.Add(-21, new ExcepcionFrbaHoteles("La fecha de salida no puede ser mayor que la fecha de fin de la reserva"));
            DatabaseAdapter.Excepciones.Add(-22, new ExcepcionFrbaHoteles("Aún no se ha realizado el check-out sobre la reserva indicada"));
            DatabaseAdapter.Excepciones.Add(-23, new ExcepcionFrbaHoteles("La reserva ya ha sido facturada"));
            DatabaseAdapter.Excepciones.Add(-24, new ExcepcionFrbaHoteles("La reserva ha sido invalidada dado que el titular fue inhabilitado"));
            DatabaseAdapter.Excepciones.Add(-25, new ExcepcionFrbaHoteles("Ya se ha registrado una habitacion con esa configuración de hotel, piso y numero"));
            DatabaseAdapter.Excepciones.Add(-26, new ExcepcionFrbaHoteles("No se puede cerrar el hotel en ese período dado que existen reservas que se superponen con él"));
            DatabaseAdapter.Excepciones.Add(-27, new ExcepcionFrbaHoteles("Imposible volver a habilitar al cliente dado que sus datos son inconsistentes (identificación o mail repetidos)"));
            DatabaseAdapter.Excepciones.Add(-28, new ExcepcionFrbaHoteles("Ya existe un período de cierre que se superpone con el indicado"));
            DatabaseAdapter.Excepciones.Add(-29, new ExcepcionFrbaHoteles("Al menos una de las habitaciones originales de la reserva no está disponible en las nuevas fechas especificadas\n Puede intentar volvíendolas a cargar"));
            DatabaseAdapter.Excepciones.Add(-31, new ExcepcionFrbaHoteles("No se puede quitar el régimen \"Pensión Completa\" ya que hay reservas presentes o futuras hechas con él"));
            DatabaseAdapter.Excepciones.Add(-32, new ExcepcionFrbaHoteles("No se puede quitar el régimen \"Media Pensión\" ya que hay reservas presentes o futuras hechas con él"));
            DatabaseAdapter.Excepciones.Add(-33, new ExcepcionFrbaHoteles("No se puede quitar el régimen \"All Inclusive\" ya que hay reservas presentes o futuras hechas con él"));
            DatabaseAdapter.Excepciones.Add(-34, new ExcepcionFrbaHoteles("No se puede quitar el régimen \"All Inclusive Moderado\" ya que hay reservas presentes o futuras hechas con él"));

            //------------------CONFIGURACIONES------------------->>

            Application.Run(new PantallaBienvenida());

        }
    }
}
