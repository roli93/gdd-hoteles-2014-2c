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
using System.Timers;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class AltaHotel : Alta
    {
        public AltaHotel()
        {
            InitializeComponent();
        }

        public AltaHotel(NavegableForm owner)
            : base(owner)
        {
            InitializeComponent();
        }

        private void _nombre_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void _email_TextChanged(object sender, EventArgs e)
        {
            email = _email.Text;
        }

        private void _telefono_TextChanged(object sender, EventArgs e)
        {
            telefono = _telefono.Text;
        }

        private void _direccion_TextChanged(object sender, EventArgs e)
        {
            direccion = _direccion.Text;
        }

        private void _estrellas_SelectedIndexChanged(object sender, EventArgs e)
        {
            estrellas = Convert.ToInt32(_estrellas.SelectedItem.ToString());
        }

        private void _paises_SelectedIndexChanged(object sender, EventArgs e)
        {
            pais = (Pais)_paises.SelectedItem;
        }

        private void _ciudades_SelectedIndexChanged(object sender, EventArgs e)
        {
            ciudad = _ciudades.SelectedItem.ToString();
        }

        private void _regimenes_SelectedIndexChanged(object sender, EventArgs e)
        {
            regimenes = CheckListToList<Regimen>(_regimenes);
        }

        private void _fecha_ValueChanged(object sender, EventArgs e)
        {
            fechaCreacion = _fecha.Value;
        }

        private void _limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void _aceptar_Click(object sender, EventArgs e)
        {
            ExcecuteAndShow(Guardar);
        }

        private void AltaHotel_Load(object sender, EventArgs e)
        {
            bindCombo<Pais>(_paises, Sesion.PaisesDisponibles);
            bindCombo<string>(_ciudades, Sesion.CiudadesDisponibles);
            bindCheckedListBox<Regimen>(_regimenes, Sesion.RegimenesDisponibles);
        }
    }
}
