using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Homes;
using FrbaHotel.ABM_de_Rol;

namespace FrbaHotel.ABM_de_Rol
{
    public partial class ModificarRol : AltaRol
    {
        public ModificarRol()
        {
            InitializeComponent();
        }

        public ModificarRol(NavegableForm owner, int IdRol)
            : base(owner)
        {
            this.IdRol = IdRol;
            InitializeComponent();
        }

        private void ModificarRol_Load(object sender, EventArgs e)
        {
            CargarRol();
            SelectCheckBoxes<Funcionalidad>(_funcionalidadesCLB, funcOriginales);
            _nombre.Text = nombre;
            _habilitado.Checked = estaActivo;
        }

        private void SelectCheckBoxes<T>(CheckedListBox box, List<T> items) where T : Entidad
        {
            for (int count = 0; count < box.Items.Count; count++)
            {
                if (items.Any(e => e.Equals(((T)box.Items[count]))))
                    box.SetItemChecked(count, true);
            }
        }
    }
}
