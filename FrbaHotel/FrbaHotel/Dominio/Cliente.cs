using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

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
