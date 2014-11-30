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
        protected string nombre;
        protected string email;
        protected string telefono;
        protected string calle;
        protected string recargoEstrellas;
        protected int altura;
        protected int estrellas;
        protected Pais pais;
        protected string ciudad;
        protected List<Regimen> regimenes;
        protected DateTime fechaCreacion;

        protected virtual void Guardar()
        {
            regimenes = CheckListToList<Regimen>(_regimenes);
            ValidarErrores();
            HomeHoteles.insertarHotel(nombre,email,telefono,calle,altura,estrellas,pais,ciudad,regimenes,fechaCreacion.ToString(),Convert.ToInt32(recargoEstrellas));

        }
        
        public override void ValidarErroresConcretos()
        {
            ValidarNumericos(recargoEstrellas);
            ValidarVaciosYLongitud(new string[] { "Nombre","Email","Telefono","Calle","Altura","Estrellas","Pais","Fecha de Creacion","Recargo Por Estrellas" }, new object[] { nombre,email,telefono,calle,altura,estrellas,pais.Descripcion,fechaCreacion,recargoEstrellas });
        }
    }
}
