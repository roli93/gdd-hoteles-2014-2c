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
        public DateTime FechaInicio{ get; set; }
        public DateTime FechaFin{ get; set; }
        public Hotel Hotel { get; set; }
        public List<Habitacion> Habitaciones { get; set; }
        public int ClienteId { get; set; }
        public DataTable habitacionesTable;

        public virtual void Guardar()
        {
            ValidarErrores();
            ObtenerCliente();
        }

        public void FinalizarGuardado()
        {
            if (MessageBox.Show("¿Confirma la reserva realizada?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                ExcecuteAndShow(PersistirReserva);
            }
            
        }

        public void PersistirReserva()
        {
            int id = HomeReservas.registrarReserva(Regimen, FechaInicio, FechaFin, Habitaciones, ClienteId);
            InformarYFinalizar();
            successMessage += "\n\nIMPORTANTE: Su código de reserva para futuras modificaciones es " + id.ToString();
        }
            

        public void InformarYFinalizar()
        {
            double costo = Habitaciones.Sum<Habitacion>(h => h.Costo);
            successMessage += "\nEl costo de la reserva es de $" + costo + " por día por " + Convert.ToInt32((FechaFin - FechaInicio).TotalDays) +
                            " dias totalizando: $" + costo * Convert.ToInt32((FechaFin - FechaInicio).TotalDays);
            Close();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Régimen" }, new object[] { Regimen });
            ValidarCollecionVacia<Habitacion>("Habitaciones", Habitaciones);
            if (FechaInicio.Date < Sesion.FechaActual.Date)
                errorMessage += "La fecha de inicio debe ser futura\n";
            if (FechaFin.Date < Sesion.FechaActual.Date)
                errorMessage += "La fecha de fin debe ser futura\n";
            if (FechaFin.Date < FechaInicio.Date)
                errorMessage += "La fecha de inicio debe ser anterior a la fecha de fin\n";
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
            habitacionesTable = GenerarTableHabitaciones();
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

        public override void Limpiar()
        {
            base.Limpiar();
            Regimen = null;
            Habitaciones= new List<Habitacion>();
            _seleccionarRegimen.Enabled = false;
        }

        public override void gridClickAction(DataGridViewCellCollection celdas)
        {
            Habitaciones.RemoveAll(h => h.tipo.Descripcion.Equals(celdas["tipo"].Value.ToString()));
            ActualizarHabitaciones();
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