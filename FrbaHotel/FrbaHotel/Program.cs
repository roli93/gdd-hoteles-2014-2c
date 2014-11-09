﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using FrbaHotel.Login;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.ABM_de_Usuario;
using FrbaHotel.ABM_de_Cliente;
using FrbaHotel.Generar_Modificar_Reserva;

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
            funcionalidadesSistema.Add(1,(owner) => new GenerarReserva(owner));
            funcionalidadesSistema.Add(5, (owner) => new ABMClientes(owner));
            SeleccionFuncionalidad.FuncionalidadesPosibles= funcionalidadesSistema;
            // DatabaseAdapter.Excepciones=...
            //------------------CONFIGURACIONES------------------->>

            Application.Run(new PantallaBienvenida(0));

        }
    }
}
