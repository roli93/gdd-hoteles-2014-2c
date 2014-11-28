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
        public static DataTable itemsFactura(int idReserva,int idFactura)
        {
            return DatabaseAdapter.traerDataTable("items_factura", idReserva,idFactura);
        }

        public static void GuardarTotal(int idFactura,double total)
        {
            DatabaseAdapter.ejecutarProcedure("guardar_total_factura", idFactura, total);
        }
    }
}
