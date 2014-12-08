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
    public partial class AltaRol : Alta
    {
        private bool habilitadoMarcado=false;

        public AltaRol()
        {
            InitializeComponent();
        }

        public AltaRol(NavegableForm owner):base(owner)
        {
            InitializeComponent();
        }

        private void _nombre_TextChanged(object sender, EventArgs e)
        {
            nombre = _nombre.Text;
        }

        private void _funcionalidadesCLB_SelectedIndexChanged(object sender, EventArgs e)
        {
            Funcionalidades = CheckListToList<Funcionalidad>(_funcionalidadesCLB);
        }

        private void _habilitado_CheckedChanged(object sender, EventArgs e)
        {
            EstaActivo = _habilitado.Checked;
            habilitadoMarcado = true;
        }

        private void _aceptar_Click(object sender, EventArgs e)
        {
            if (!habilitadoMarcado)
            {
                if (MessageBox.Show("Ha dejado sin marcar la casilla de verificación del estado del rol\n¿Confirma que desea guardar el rol de todos modos?", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    ExcecuteAndShow(Guardar);
            }
            else
                ExcecuteAndShow(Guardar);
        }

        private void AltaRol_Load(object sender, EventArgs e)
        {
            bindCheckedListBox<Funcionalidad>(_funcionalidadesCLB, Sesion.FuncionalidadesDisponibles);
        }

        private void _limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

    }
}
