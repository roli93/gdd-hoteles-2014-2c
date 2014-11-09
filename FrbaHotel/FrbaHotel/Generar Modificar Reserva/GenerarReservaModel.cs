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


        //TODO BORRAR
        public List<Habitacion> caca()
        {
            Habitacion h1 = new Habitacion();
            Habitacion h2 = new Habitacion();
            Habitacion h3 = new Habitacion();
            h1.tipo = new TipoHabitacion(1,"Doble");
            h2.tipo = new TipoHabitacion(2,"Simple");
            h3.tipo = new TipoHabitacion(1,"Doble");
            
            List<Habitacion> l = new List<Habitacion>();
            l.Add(h1);
            l.Add(h2);
            l.Add(h3);

            return l;
        }

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

            List<TipoHabitacion> tiposHabitacionDistintos = tiposHabitacion.Distinct<TipoHabitacion>(new TipoHabitacionEqComparer()).ToList();

            foreach (TipoHabitacion t in tiposHabitacionDistintos)
            {
                int cantidad = tiposHabitacion.Count<TipoHabitacion>(tipo => tipo.Equals(t));
                table.Rows.Add(new object[] { t, cantidad });
            }

            return table;
        }



    }
}

class TipoHabitacionEqComparer : IEqualityComparer<TipoHabitacion>
{

    public bool Equals(TipoHabitacion t1, TipoHabitacion t2)
    {
        return t1.Equals(t2);
    }


    public int GetHashCode(TipoHabitacion t)
    {
        return t.GetHashCode();
    }

}