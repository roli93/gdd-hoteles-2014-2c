using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    public class HomeFacturas:Home
    {
        public static DataTable itemsFactura(int idr)
        {/*TODO
            return DatabaseAdapter.traerDataTable("items_factura", idr);*/
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("id");
            ej.Columns.Add("descripcion");
            ej.Columns.Add("Cantidad");
            ej.Columns.Add("Precio Unitario");
            ej.Columns.Add("Total");
            ej.Rows.Add(new object[] { 142, "Coca", 2, 2, 4 });
            ej.Rows.Add(new object[] { 24242, "Lays", 12, 2, 24 });
            return ej;
        }

        public static void GuardarTotal(int idFactura,double total)
        {
            return; /*TODODatabaseAdapter.ejecutarProcedureWithReturnDecimal("total_factura", idFactura)*/
            ;
        }
    }
}
