﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Forms_genericos;
using FrbaHotel.Registrar_Consumible;
using FrbaHotel.Homes;
using FrbaHotel.Administracion_Base_de_Datos;
using FrbaHotel.Dominio;

namespace FrbaHotel.Registrar_Estadia
{
    public partial class RegistrarEgreso : Alta
    {
        protected int idReserva;
        public ModoPago modoPago=null;
        public Boolean consumiblesRegistrados=false;

        public RegistrarEgreso()
        {
            InitializeComponent();
        }

        public RegistrarEgreso(NavegableForm o, int idReserva):base(o)
        {
            this.idReserva = idReserva;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            consumiblesRegistrados = true;
            new RegistrarConsumibles(this, idReserva).StandaloneOpen() ;
        }

        private void button2_Click(object sender, EventArgs e)
        {

            if(!consumiblesRegistrados)
                if (MessageBox.Show("Está a punto de finalizar el check-out y generar la factura sin haber editado los consumibles\n¿Desea continuar?", "Continuar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
            Execute(Registrarlo);
        }

        public void Registrarlo()
        {
            ValidarErrores();
            HomeReservas.registrarEgreso(idReserva, dateTimePicker1.Value);
            MessageBox.Show("Se realizó el check-out con éxito");
            if (MessageBox.Show("¿Desea emitir la factura ahora?", "Facturar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                new ElegirMetodoPago(this).FinalStandaloneOpen();
        }

        public void ElegirPago()
        {
            new ElegirMetodoPago(this).FinalStandaloneOpen();
        }

        public void Facturar(NavegableForm owner,string nombre, string apellido,string codigo)
        {
            if (modoPago != null)
            {
                HomeReservas.facturar(idReserva, modoPago,nombre,apellido,codigo);
                new Factura(owner, HomeReservas.idUltimaFactura(),idReserva).FinalStandaloneOpen();
            }
        }

        public override void ValidarErroresConcretos()
        {
            if (dateTimePicker1.Value < Sesion.FechaActual)
                errorMessage += "No se puede registrar un egreso en el pasado\n";
        }

    }
}
