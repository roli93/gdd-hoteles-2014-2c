using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Dominio;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    class HomeGeografico : Home
    {
        public static DataTable buscarPaises()
        {          
            return DatabaseAdapter.traerDataTable("paises_disponibles");
        }

        public static Pais buscarPaisPorId(int unIdPais)
        {
            DataRow DRpais = DatabaseAdapter.traerDataTable("buscar_pais_por_id", unIdPais).Rows[0];
            Pais pais = new Pais(unIdPais, DRpais["descripcion"].ToString());
            return pais;
        }
    }
}
