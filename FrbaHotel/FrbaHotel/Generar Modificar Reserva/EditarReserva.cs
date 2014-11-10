using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class EditarReserva : GenerarReserva
    {
        public EditarReserva()
        {
            InitializeComponent();
        }

        public EditarReserva(NavegableForm o,int idReserva)
            : base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void EditarReserva_Load(object sender, EventArgs e)
        {
            CargarReserva();
            _hotel.SelectedIndex = _hotel.FindStringExact(Hotel.Nombre,0);
            _regimen.Text = Regimen.Descripcion;
            dateTimePicker1.Value = FechaInicio;
            dateTimePicker2.Value = FechaFin;
            ActualizarHabitaciones();
        }

    }
}
