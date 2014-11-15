using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Homes;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class CambiarHabitacion : Alta
    {
        public CambiarHabitacion()
        {
            InitializeComponent();
        }

        public CambiarHabitacion(NavegableForm o,int idHabitacionreservada,  int numero):base(o)
        {
            this.idHabitacionReservada = idHabitacionreservada;
            this.numero = numero;
            InitializeComponent();
        }

        private int idHabitacionReservada,numero;

        public void Cambiar()
        {
            ValidarErrores();
            HomeReservas.cambiarHabitacion(idHabitacionReservada, Convert.ToInt32(textBox1.Text));
            ((RegistrarIngreso)Owner).ActualizarGrilla();
            Close();
        }

        private void CambiarHabitacion_Load(object sender, EventArgs e)
        {
            textBox1.Text = numero.ToString() ;
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Numero" }, new object[] { textBox1.Text });
            ValidarNumericos(textBox1.Text);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Execute(Cambiar);
        }
    }
}
