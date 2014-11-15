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
            InitializeComponent();
        }

        private void ModificacionUsuario_Load(object sender, EventArgs e)
        {
            CargarUsuario();
            SelectCheckBoxes<Rol>(checkedListBox1, rolesOriginales);
            SelectCheckBoxes<Hotel>(checkedListBox2, hotelesOriginales);
            _username.Text = username;
            _password.Text = password;
            _confirmarPassword.Text = password;
            _nombre.Text = nombre;
            _apellido.Text = apellido;
            _mail.Text = mail;
            _direccion.Text = direccion;
            _nroDocumento.Text = nroDocumento;
            _telefono.Text = telefono;
            dateTimePicker1.Value = fechaNacimiento;
            comboBox1.SelectedIndex = comboBox1.FindStringExact(tipoDni.Descripcion,0);
        }

        private void SelectCheckBoxes<T>(CheckedListBox box, List<T> items) where T : Entidad 
        {
           for (int count = 0; count < box.Items.Count; count++)
            {
              if (items.Any(e=>e.Equals(((T)box.Items[count]))))
                box.SetItemChecked(count, true);
            }
        }

        private void _direccion_TextChanged(object sender, EventArgs e)
        {
            direccion = _direccion.Text;
        }
    }
}
