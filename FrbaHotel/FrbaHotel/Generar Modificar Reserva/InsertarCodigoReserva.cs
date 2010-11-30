using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.Generar_Modificar_Reserva
{
    public partial class InsertarCodigoReserva : Alta
    {
        private string accion;

        public InsertarCodigoReserva()
        {
            InitializeComponent();
        }

        public InsertarCodigoReserva(NavegableForm owner, String accion, ConstructorModificacion constructor)
            : base(owner)
        {
            this.accion = accion;
            this.constructorEdicion = constructor;
            InitializeComponent();
        }

        private void InsertarCodigoReserva_Load(object sender, EventArgs e)
        {
            button1.Text = accion;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(AbrirEditor);
        }

        public void AbrirEditor()
        {
            ValidarErrores();
            ChequearInconsistenciaEstadia(() =>
            {
                HomeReservas.verificarReservaEsEditable(Convert.ToInt32(textBox1.Text), Sesion.Usuario.Hotel.Id);
                constructorEdicion(Convert.ToInt32(textBox1.Text)).FinalStandaloneOpen();
                Close();
            }, Convert.ToInt32(textBox1.Text));
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Código de reserva" }, new object[] { textBox1.Text });
            ValidarNumericos(textBox1.Text);
        }

        public void ShowOwner(object sender, FormClosingEventArgs e)
        {
            Owner.Show();
        }
    }
}
