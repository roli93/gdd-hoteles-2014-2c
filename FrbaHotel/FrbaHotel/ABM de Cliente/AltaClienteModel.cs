using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrbaHotel.Dominio;
using FrbaHotel.Homes;

namespace FrbaHotel.ABM_de_Cliente
{
    public partial class AltaCliente
    {
        protected string nombre, apellido, nroId, mail, telefono, calle,altura,piso="-1",depto="-", localidad;
        protected TipoDocumento tipoId;
        protected Pais pais;
        protected DateTime fechaNacimiento=DateTime.Now;

        public virtual void Guardar()
        {
            ValidarErrores();
            HomeClientes.registrarCliente(nombre, apellido, tipoId, nroId, mail, telefono, calle,altura,piso,depto, localidad, fechaNacimiento, pais);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVaciosYLongitud(new string[] { "Nombre", "Apellido", "Número de identidicación", "Mail", "Telefono", "Calle","Altura", "Localidad", "Tipo de identificación", "Pais", "Fecha de nacimiento" },
                          new object[] { nombre, apellido, nroId, mail, telefono, calle,altura, localidad, tipoId, pais, fechaNacimiento });
            ValidarNumericos(nroId, telefono,altura,piso);
        }


    }
}