using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Homes;
using FrbaHotel.ABM_de_Rol;

namespace FrbaHotel.ABM_de_Rol
{
    public partial class ModificarRol
    {
        private int IdRol;
        private List<Funcionalidad> funcOriginales= new List<Funcionalidad>();
        private string nombre ="";
        private bool estaActivo;

        public void CargarRol()
        {
            HomeRoles.buscarPorId(IdRol, out nombre, out estaActivo, out funcOriginales);
            
            _nombre.Text = nombre;
            _habilitado.Checked= estaActivo;

        }

        protected override void Guardar()
        {
            ValidarErrores();
            List<Funcionalidad> Funcionalidades = CheckListToList<Funcionalidad>(_funcionalidadesCLB);
            HomeRoles.actualizarRol(IdRol,nombre,estaActivo,funcOriginales,Funcionalidades);
            }

    }
 }

