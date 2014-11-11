using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Homes;
using FrbaHotel.Dominio;

namespace FrbaHotel.ABM_de_Hotel
{
    public partial class AltaHotel
    {
        private string nombre;
        private string email;
        private string telefono;
        private string direccion;
        private int estrellas;
        private Pais pais;
        private string ciudad;
        private List<Regimen> regimenes;
        private string fechaCreacion;

        protected virtual void Guardar()
        {
            ValidarErrores();
            HomeHoteles.insertarHotel(nombre,email,telefono,direccion,estrellas,pais,ciudad,regimenes,fechaCreacion);

        }
        
        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Nombre","Email","Telefono","Direccion","Estrellas","Pais","Ciudad","Fecha de Creacion" }, new object[] { nombre,email,telefono,direccion,estrellas,pais.Descripcion,ciudad,fechaCreacion });
        }
    }
}
