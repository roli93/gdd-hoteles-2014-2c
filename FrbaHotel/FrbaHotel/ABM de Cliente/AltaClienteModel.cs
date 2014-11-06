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
        string nombre, apellido, nroId, mail, telefono, calle, localidad;
        TipoDocumento tipoId;
        Pais pais;
        DateTime fechaNacimiento;

        public void Guardar()
        {
            ValidarErrores();
            HomeClientes.registrarCliente(nombre, apellido, tipoId, nroId, mail, telefono, calle, localidad, fechaNacimiento, pais);
        }

        public override void ValidarErroresConcretos()
        {
            ValidarVacios(new string[] { "Nombre", "Apellido", "Número de identidicación", "Mail", "Telefono", "Domicilio", "Localidad", "Tipo de identificación", "Pais", "Fecha de nacimiento" },
                          new object[] { nombre, apellido, nroId, mail, telefono, calle, localidad, tipoId, pais, fechaNacimiento });
            ValidarNumericos(nroId, telefono);
        }


    }
}