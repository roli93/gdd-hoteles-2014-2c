using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Cancelar_Reserva;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class ABMReservas : ABM
    {
        public ABMReservas()
        {
            InitializeComponent();
        }

        public ABMReservas(NavegableForm owner):base(owner,"una","reserva")
        {
            InitializeComponent();
        }

        public override void alta()
        {
            new GenerarReserva(this).FinalStandaloneOpen();
        }

        public override void modificacion()
        {
            new InsertarCodigoReserva(this, "Editar Reserva", id => new EditarReserva(this, id)).StandaloneOpen();
        }

        public override void baja()
        {
            new InsertarCodigoReserva(this, "Cancelar Reserva", id => new CancelarReserva(this, id)).StandaloneOpen();
        }

    }
}
