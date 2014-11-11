    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;
    using System.Drawing;
    using System.Linq;
    using System.Text;
    using System.Windows.Forms;
    using FrbaHotel.Forms_genericos;
using FrbaHotel.ABM_de_Rol;


namespace FrbaHotel.ABM_de_Rol
{
        public partial class SeleccionarRol : Alta
        {
            private string accion;
        
            public SeleccionarRol()
            {
                InitializeComponent();
            }
            
            public SeleccionarRol(NavegableForm owner, string accion)
                : base(owner)
            {
                InitializeComponent();
                constructorEdicion = (id) => { return new ModificarRol(this, id); };
                this.accion = accion;
            }

            private void SeleccionarRol_Load(object sender, EventArgs e)
            {
               cargarBotonModificarDatos(_gridRoles, accion);
               estaActivo = true;
               _estaActivo.Checked = true;
            }


            private void _nombre_TextChanged(object sender, EventArgs e)
            {
                nombre = _nombre.Text;
            }


            private void _gridRoles_CellContentClick(object sender, DataGridViewCellEventArgs e)
            {
                if (accion == "Editar") operacionConSeleccionado(_gridRoles, e);
                else if (accion == "Eliminar") EliminarRol(_gridRoles, e);
            }

             private void _buscar_Click(object sender, EventArgs e)
            {
                Execute(Buscar);
            }

             private void _estaActivo_CheckedChanged(object sender, EventArgs e)
             {
                 estaActivo = _estaActivo.Checked;
             }

             private void _limpiar_Click(object sender, EventArgs e)
             {
                 Limpiar();
             }

        
        }
    }

