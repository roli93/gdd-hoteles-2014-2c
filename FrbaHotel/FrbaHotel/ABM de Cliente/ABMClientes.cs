using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class ABMClientes : ABM
    {
        public ABMClientes()
        {
            InitializeComponent();
        }

        public ABMClientes(NavegableForm owner)
            : base(owner,"un","cliente")
        {
            InitializeComponent();
        }

        public override void alta()
        {
            new AltaCliente(this).FinalStandaloneOpen();
        }

        public override void modificacion()
        {
            new SeleccionarCliente(this).StandaloneOpen();
        }

        public override void baja()
        {
            new SeleccionarCliente(this, false, "Rehabilitar").StandaloneOpen();
        }

        private void ABMClientes_Load(object sender, EventArgs e)
        {
            radioBaja.Text="Volver a habilitar un cliente inhabilitado";
            radioModificacion.Text = "Editar o inhabilitar un cliente existente";
        }
    }
}
