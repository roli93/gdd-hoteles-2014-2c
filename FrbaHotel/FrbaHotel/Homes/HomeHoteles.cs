using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Dominio;
using System.Data;
using FrbaHotel.Administracion_Base_de_Datos;

namespace FrbaHotel.Homes
{
    public class HomeHoteles:Home
    {
        static public void insertarHotel(string nombre, string email, string telefono, string direccion, int estrellas, Pais pais, string ciudad, List<Regimen> regimenes, string fechaCreacion)
        {
            DatabaseAdapter.insertarDatosEnTabla("hotel", nombre, email, telefono, direccion, estrellas, pais.Id, ciudad, fechaCreacion);
            int id = idParaHotel(nombre);
            agregarElementos("regimen_x_hotel",id, IdsDe<Regimen>(regimenes));

        }

        public static int idParaHotel(string nombre)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("id_hotel", like(nombre));
        }

        static public void buscarPorId(int idHotel,out string nombre, out string email, out string telefono, out string direccion, out int estrellas, out Pais pais, out string ciudad, out List<Regimen> regimenes, out DateTime fechaCreacion)
        { 
            DataRow hotel = DatabaseAdapter.traerDataTable("buscar_hotel_por_id", idHotel).Rows[0];
            nombre = hotel["nombre"].ToString();
            email = hotel["email"].ToString();
            direccion = hotel["direccion"].ToString();
            telefono = hotel["telefono"].ToString();
            estrellas = Convert.ToInt32(hotel["estrellas"]);
            fechaCreacion = Convert.ToDateTime(hotel["fecha_nacimiento"]);
            ciudad = hotel["ciudad"].ToString();
            pais= HomeGeografico.buscarPaisPorId(Convert.ToInt32(hotel["id_pais"]));

            Hotel unHotel = new Hotel(idHotel, nombre);
            regimenes = unHotel.Regimenes;
        }

        static public DataTable buscarHoteles(string nombre,int estrellas,Pais pais,string ciudad) 
        {
           return DatabaseAdapter.traerDataTable("buscar_hoteles", like(nombre), estrellas, pais.Id, like(ciudad));
        }

        static public void bajaLogica(int idHotel,string fechaDesde,string fechaHasta)
        {
            DatabaseAdapter.insertarDatosEnTabla("insertar_periodo_cierre", idHotel, fechaDesde, fechaHasta);
        }

    }
}
