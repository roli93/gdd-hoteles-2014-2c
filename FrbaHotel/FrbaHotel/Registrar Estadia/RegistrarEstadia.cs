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
            ValidarVacios(new string[] { "Código de reserva" }, new object[] { textBox1.Text });
            ValidarNumericos(textBox1.Text);
        }

        public void RegistrarIngreso()
        {
            ValidarErrores();
            if (!HomeReservas.reservaEsIngresable(Convert.ToInt32(textBox1.Text)))
                throw new ExcepcionFrbaHoteles("No puede registrarse el ingreso para esta reserva porque no existe,\n se pasó la fecha o el usuario no tiene permisos");
            new RegistrarIngreso(this, Convert.ToInt32(textBox1.Text)).FinalStandaloneOpen();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(RegistrarIngreso);
        }


    }
}
