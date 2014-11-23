using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Dominio;

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

        private void _nombre_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void _aceptar_Click(object sender, EventArgs e)
        {
            Execute(Buscar);
        }

        private void _limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (accion == "Editar") operacionBotonConSeleccionado(dataGridView1, e);
            else if (accion == "Eliminar") EliminarHotel(dataGridView1, e);
        }

        private void _estrellas_SelectedIndexChanged(object sender, EventArgs e)
        {
            estrellas = Convert.ToInt32(_estrellas.SelectedItem);
        }

        private void _paises_SelectedIndexChanged(object sender, EventArgs e)
        {
            pais = (Pais)_paises.SelectedItem;
        }

        private void _ciudades_SelectedIndexChanged(object sender, EventArgs e)
        {
            ciudad = (string)_ciudades.SelectedItem;
        }

        private void SeleccionarHotel_Load(object sender, EventArgs e)
        {
            cargarBotonModificarDatos(dataGridView1, accion);
            bindCombo<Pais>(_paises, Sesion.PaisesDisponibles);
            bindCombo<string>(_ciudades, Sesion.CiudadesDisponibles);
        }

    }
}
