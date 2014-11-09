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
    public partial class SeleccionarRegimen : Alta
    {
        public SeleccionarRegimen()
        {
            InitializeComponent();
        }

        public SeleccionarRegimen(NavegableForm o,Hotel hotel):base(o)
        {
            InitializeComponent();
        }
    }
}
