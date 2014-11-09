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

        public void AgregarHabitacion(Habitacion habitacion)
        {
            habitaciones.Add(habitacion);
            ActualizarHabitaciones();
        }

        public void ActualizarHabitaciones()
        {
            DataTable habitacionesTable = GenerarTableHabitaciones();
            cargarGrilla(dataGridView1, habitacionesTable);
        }

        public DataTable GenerarTableHabitaciones()
        {
            DataTable table = new DataTable();
            table.Clear();
            table.Columns.Add("Tipo");
            table.Columns.Add("Cantidad");
            
            List<TipoHabitacion> tiposHabitacion = habitaciones.ConvertAll<TipoHabitacion>(h=>h.tipo);

            List<TipoHabitacion> tiposHabitacionDistintos = tiposHabitacion.Distinct<TipoHabitacion>().ToList();

            foreach (TipoHabitacion t in tiposHabitacionDistintos)
            {
                int cantidad = tiposHabitacionDistintos.Count<TipoHabitacion>(tipo => tipo.Equals(t));
                table.Rows.Add(new object[] { t, cantidad });
            }

            return table;
        }



    }
}