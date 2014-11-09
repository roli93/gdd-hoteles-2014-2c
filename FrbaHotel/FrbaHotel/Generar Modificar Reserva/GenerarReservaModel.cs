using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Dominio;
using FrbaHotel.ABM_de_Cliente;
using FrbaHotel.Homes;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class GenerarReserva : Alta
    {
        protected Regimen regimen;
        protected DateTime fechaInicio, fechaFin;
        protected Hotel hotel;
        protected List<Habitacion> habitaciones;
        public int ClienteId { get; set; }

        public void Guardar()
        {
            ValidarErrores();
            ObtenerCliente();
            HomeReservas.registrarReserva(hotel, regimen, fechaInicio, fechaFin, habitaciones, ClienteId);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Régimen", "Fecha Inicio", "Fecha Fin" }, new object[] { regimen, fechaInicio, fechaFin });
            ValidarCollecionVacia<Habitacion>("Habitaciones", habitaciones); 
        }

        public void ObtenerCliente()
        {
            if (MessageBox.Show("Necesita indicar sus datos como cliente titular de la reserva\n¿Es usted cliente de la cadena?", "Ingresar Cliente", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                new ClienteParaReserva(this).StandaloneOpen();
            }
            else
            {
                new AltaCliente(this).StandaloneOpen();
                this.ClienteId = DatabaseAdapter.getIdUltimaInsercion();
            }

        }



    }
}