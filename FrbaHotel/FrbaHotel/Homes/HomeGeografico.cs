using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    class HomeGeografico : Home
    {
        public static DataTable buscarPaises()
        {/*TODO
           
            return DatabaseAdapter.traerDataTable("paises").;
            */
            DataTable ej = new DataTable();
            ej.Clear(); 
            ej.Columns.Add("ID");
            ej.Columns.Add("Descripcion");
         
            ej.Rows.Add(new object[] { 1,"Argentina"});
            ej.Rows.Add(new object[] { 2, "Brasil" });
            return ej;

        }

        public static DataTable buscarCiudadesDe(int unIdPais)
        {
            /*TODO
           
            return DatabaseAdapter.traerDataTable("ciudades_de_pais",unIdPais);
            */
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("ID");
            ej.Columns.Add("Descripcion");

            ej.Rows.Add(new object[] { 1, "Argentina" });
            ej.Rows.Add(new object[] { 2, "Brasil" });
            return ej;


        }

    }
}
