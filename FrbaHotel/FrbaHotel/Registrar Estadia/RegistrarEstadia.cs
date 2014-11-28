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

namespace FrbaHotel.Registrar_Estadia
{
    public partial class RegistrarEstadia : Alta
    {
        public RegistrarEstadia()
        {
            InitializeComponent();
        }

        public RegistrarEstadia(NavegableForm o):base(o)
        {
            InitializeComponent();
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Código de reserva" }, new object[] { textBox1.Text });
            ValidarNumericos(textBox1.Text);
        }

        public void RegistrarIngreso()
        {
            ValidarErrores();
            ChequearInconsistenciaEstadia(() =>
            {
                HomeReservas.verificarReservaEsIngresable(Convert.ToInt32(textBox1.Text), Sesion.Usuario.Hotel.Id);
                new RegistrarIngreso(this, Convert.ToInt32(textBox1.Text)).FinalStandaloneOpen();
            }, Convert.ToInt32(textBox1.Text));
        }

        public void RegistrarEgreso()
        {
            ValidarErrores();
            ChequearInconsistenciaEstadia(() =>
            {
                HomeReservas.verificarReservaEsEgresable(Convert.ToInt32(textBox1.Text),Sesion.Usuario.Hotel.Id);
                new RegistrarEgreso(this, Convert.ToInt32(textBox1.Text)).FinalStandaloneOpen();
            }, Convert.ToInt32(textBox1.Text));
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(RegistrarIngreso);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Execute(RegistrarEgreso);
        }


    }
}
