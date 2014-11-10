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

namespace FrbaHotel.Cancelar_Reserva
{
    public partial class CancelarReserva : Alta
    {
        private int idReserva;
        string oldMsg;

        public CancelarReserva()
        {
            InitializeComponent();
        }

        public CancelarReserva(NavegableForm o,int idReserva): base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void CancelarReserva_Load(object sender, EventArgs e)
        {
            if (Sesion.Usuario.esGuest())
                checkBox1.Enabled = false;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            

            if (checkBox1.Checked)
            {
                oldMsg = textBox1.Text;
                textBox1.Text = "Reserva Cancelada Por No-Show";
                textBox1.Enabled = false;
            }
            else
            {
                textBox1.Text = oldMsg;
                textBox1.Enabled = true;
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Execute(Cancelar);
        }

        private void Cancelar()
        {
            if (MessageBox.Show("¿Confirma que desea cancelar la reserva?\nEsta operación no puede deshacerse.", "Confirmar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                HomeReservas.cancelarReserva(idReserva, checkBox1.Checked, textBox1.Text);
                MessageBox.Show("La reserva fue cancelada con éxito");
                this.Close();
            }
            
        }



    }
}
