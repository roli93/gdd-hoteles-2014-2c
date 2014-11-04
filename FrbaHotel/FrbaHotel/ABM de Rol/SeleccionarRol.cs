    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;
    using System.Drawing;
    using System.Linq;
    using System.Text;
    using System.Windows.Forms;
    using FrbaHotel.Forms_genericos;

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
                constructorEdicion = (id) => { return new ModificacionRol(this, id); };
                this.accion = accion;
            }

            private void SeleccionarRol_Load(object sender, EventArgs e)
            {
               cargarBotonModificarDatos(_gridRoles, accion);
            }


            private void _nombre_TextChanged(object sender, EventArgs e)
            {
                nombre = _nombre.Text;
            }


            private void _gridRoles_CellContentClick(object sender, DataGridViewCellEventArgs e)
            {
                if (accion == "Editar") abrirVentanaEdicion(_gridRoles, e);
                else if (accion == "Eliminar") EliminarRol(_gridRoles, e);
            }

             private void _buscar_Click(object sender, EventArgs e)
            {
                Execute(Buscar);
                cargarGrilla(_gridRoles, roles);
            }

             private void _id_TextChanged(object sender, EventArgs e)
             {
                 id = _id.Text;
             }

        
        }
    }

