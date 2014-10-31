using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Login;

namespace FrbaHotel
{
    public partial class ABM
    {
        private void Continuar()
        {
            //TODO: Negrada, mejorar si hay tiempo
            if (this.radioAlta.Checked)
                MessageBox.Show("Proximamente Alta");
            if (this.radioModificacion.Checked)
                MessageBox.Show("Proximamente Modificacion");
            if (this.radioBaja.Checked)
                MessageBox.Show("Proximamente Baja");
        }


    }
}
