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
    public partial class ModificarCliente : AltaCliente
    {
        public ModificarCliente()
        {
            InitializeComponent();
        }

        public ModificarCliente(NavegableForm o,int id):base(o)
        {
            this.id = id;
            InitializeComponent();
        }

        private void ModificarCliente_Load(object sender, EventArgs e)
        {
            CargarCliente();
            _nombre.Text = nombre;
            _apellido.Text = apellido;
            _telefono.Text = telefono;
            _mail.Text = mail;
            _direccion.Text = calle;
            textBox1.Text = localidad;
            _pais.SelectedIndex = _pais.FindStringExact(pais.Descripcion, 0);
            comboBox1.SelectedIndex = comboBox1.FindStringExact(tipoId.Descripcion, 0);
            _nroDocumento.Text = nroId;
            dateTimePicker1.Value = fechaNacimiento;
            checkBox1.Checked = habilitado;
        }

    }
}
