using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class SeleccionarHotel : Alta
    {
        private string accion;

        public SeleccionarHotel()
        {
            InitializeComponent();
        }

        public SeleccionarHotel(NavegableForm owner, string accion)
            : base(owner)
        {
        
                InitializeComponent();
                constructorEdicion = (id) => { return new ModificarHotel(this, id); };
                this.accion = accion;
        
        }

    }
}
