using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class ABMHotel : ABM
    {
        public ABMHotel()
        {
            InitializeComponent();
        }

        public ABMHotel(NavegableForm owner)
            : base(owner,"un","Hotel")
        {
            InitializeComponent();
        }

        public override void alta()
        {
            new AltaHotel(this).FinalStandaloneOpen();
        }

        public override void modificacion()
        {
            new SeleccionarHotel(this, "Editar").StandaloneOpen();
        }

        public override void baja()
        {
            new SeleccionarHotel(this, "Eliminar").StandaloneOpen();
        }

    }
}
