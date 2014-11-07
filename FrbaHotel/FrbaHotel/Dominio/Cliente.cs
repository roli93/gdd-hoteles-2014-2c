using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrbaHotel.Dominio
{
    public class Cliente
    {

        public Cliente(int Id)
        {
            this.Id = Id;
        }

        public int Id { get; set; }

        public TipoDocumento TipoId
        {
            get
            {
               /*TODO  DataRow documento = DatabaseAdapter.traerDataTable("obtener_documento", Id).Rows[0];
                return new TipoDocumento(Convert.ToInt32(documento["id_tipo_identificacion"]), documento["descripcion"].ToString());*/
                return new TipoDocumento(2, "Pasaporte");
            }
        }

        public Pais Pais
        {
            get
            {
                /*TODO  DataRow pais = DatabaseAdapter.traerDataTable("obtener_pais_usuario", Id).Rows[0];
                 return new Pais(Convert.ToInt32(pais["id_pais"]), pais["nombre"].ToString());*/
                return new Pais(1, "Argentina");
            }
        }

    }
}
