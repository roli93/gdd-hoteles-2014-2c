using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Dominio
{
    public class Cliente:Entidad
    {

        public Cliente(int Id)
        {
            this.Id = Id;
        }

        public Cliente(int Id,string nroId,string nombre, string apellido,string mail, TipoDocumento tipoId)
        {
            this.NumeroId = nroId;
            this.TipoIdentificacion = tipoId;
            this.Apellido = apellido;
            this.Nombre = nombre;
            this.Mail = mail;
            this.Id = Id;
        }

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Mail { get; set; }
        public string NumeroId { get; set; }
        public TipoDocumento TipoIdentificacion { get; set; }

        public TipoDocumento TipoId
        {
            get
            {
               DataRow documento = DatabaseAdapter.traerDataTable("obtener_identificacion", Id).Rows[0];
               return new TipoDocumento(Convert.ToInt32(documento["id_tipo_identificacion"]), documento["descripcion"].ToString());
            }
        }

        public Pais Pais
        {
            get
            {
                DataRow pais = DatabaseAdapter.traerDataTable("obtener_pais_cliente", Id).Rows[0];
                return new Pais(Convert.ToInt32(pais["id_pais"]), pais["nombre"].ToString());
            }
        }

    }
}
