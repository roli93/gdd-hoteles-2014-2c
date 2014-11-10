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
        public Regimen Regimen { get; set; }
        protected DateTime fechaInicio, fechaFin;
        public Hotel Hotel { get; set; }
        public List<Habitacion> Habitaciones { get; set; }
        public int ClienteId { get; set; }

        public void Guardar()
        {
            ValidarErrores();
            ObtenerCliente();
        }

        public void FinalizarGuardado()
        {
            if (MessageBox.Show("¿Confirma la reserva realizada?", "Ingresar Cliente", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                ExcecuteAndShow(PersistirReserva);
            }
            
        }

        public void PersistirReserva()
        {
            HomeReservas.registrarReserva(Hotel, Regimen, fechaInicio, fechaFin, Habitaciones, ClienteId);
            Close();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Régimen", "Fecha Inicio", "Fecha Fin" }, new object[] { Regimen, fechaInicio, fechaFin });
            ValidarCollecionVacia<Habitacion>("Habitaciones", Habitaciones); 
        }

        public void ObtenerCliente()
        {
            if (MessageBox.Show("Necesita indicar sus datos como cliente titular de la reserva\n¿Es usted cliente de la cadena?", "Ingresar Cliente", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                new ClienteParaReserva(this).OpenDialogue();
            }
            else
            {
                new AltaClientePorReserva(this).OpenDialogue();
                
            }

        }

        public void AgregarHabitaciones(List<Habitacion> habitaciones)
        {
            Habitaciones.AddRange(habitaciones);
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
            
            List<TipoHabitacion> tiposHabitacion = Habitaciones.ConvertAll<TipoHabitacion>(h=>h.tipo);

            List<TipoHabitacion> tiposHabitacionDistintos = tiposHabitacion.Distinct<TipoHabitacion>(new TipoHabitacionEqComparer()).ToList();

            foreach (TipoHabitacion t in tiposHabitacionDistintos)
            {
                int cantidad = tiposHabitacion.Count<TipoHabitacion>(tipo => tipo.Equals(t));
                table.Rows.Add(new object[] { t, cantidad });
            }

            return table;
        }

        public void CambiarRegimen(Regimen regimen)
        {
            Regimen = regimen;
            _regimen.Text = Regimen.ToString();
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