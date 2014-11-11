using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class ModificarHotel : AltaHotel
    {
        protected int idHotel;

        public ModificarHotel()
        {
            InitializeComponent();
        }

        public ModificarHotel(NavegableForm owner, int unIdHotel) : base(owner) 
        {
            idHotel = unIdHotel;
            InitializeComponent();
        }



        private void SelectCheckBoxes<T>(CheckedListBox box, List<T> items) where T : Entidad
        {
            for (int count = 0; count < box.Items.Count; count++)
            {
                if (items.Any(e => e.Equals(((T)box.Items[count]))))
                    box.SetItemChecked(count, true);
            }
        }

        private void ModificarHotel_Load(object sender, EventArgs e)
        {
            CargarHotel();
            _nombre.Text = nombre;
            _email.Text = email;
            _telefono.Text = telefono;
            _direccion.Text = direccion;
            _estrellas.SelectedIndex = _estrellas.FindStringExact(estrellas.ToString());
            _paises.SelectedIndex = _paises.FindStringExact(pais.Descripcion.ToString());
            _ciudades.SelectedIndex = _ciudades.FindStringExact(ciudad.ToString());
            _fecha.Value = Convert.ToDateTime(fechaCreacion);
            SelectCheckBoxes<Regimen>(_regimenes, regimenesOriginales);
        }


    }
}
