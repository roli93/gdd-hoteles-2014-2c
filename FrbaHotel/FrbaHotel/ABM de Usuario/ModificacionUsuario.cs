using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FrbaHotel.ABM_de_Usuario
{
    public partial class ModificacionUsuario : AltaUsuario
    {
        public ModificacionUsuario()
        {
            InitializeComponent();
        }

        public ModificacionUsuario(NavegableForm owner, int IdUsuario)
            : base(owner)
        {
            this.IdUsuario = IdUsuario;
        }

        private void ModificacionUsuario_Load(object sender, EventArgs e)
        {
            CargarUsuario();
            SelectCheckBoxes<Rol>(checkedListBox1, rolesOriginales);
            SelectCheckBoxes<Hotel>(checkedListBox2, hotelesOriginales);
        }

        private void SelectCheckBoxes<T>(CheckedListBox box,List<T> items)
        {
           for (int count = 0; count < checkedListBox1.Items.Count; count++)
            {
              if (items.Contains<T>((T)checkedListBox1.Items[count]))
                checkedListBox1.SetItemChecked(count, true);
            }
        }
    }
}
