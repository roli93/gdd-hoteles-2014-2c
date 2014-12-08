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
        static public void insertarHotel(string nombre, string email, string telefono, string calle,int altura, int estrellas, Pais pais, string ciudad, List<Regimen> regimenes, string fechaCreacion,int recargoEstrellas)
        {
            DatabaseAdapter.insertarDatosEnTabla("hotel", nombre, email, telefono, calle, altura, estrellas, pais.Id, ciudad, fechaCreacion,recargoEstrellas,Sesion.FechaActual);
            int id = DatabaseAdapter.getIdUltimaInsercion("hotel");
            agregarElementos("regimen_x_hotel",id, IdsDe<Regimen>(regimenes));
            DatabaseAdapter.insertarDatosEnTabla("usuario_x_hotel",Sesion.Usuario.Id,id);
        }

        static public void buscarPorId(int idHotel, out string nombre, out string email, out string telefono, out string calle, out int altura, out int estrellas, out Pais pais, out string ciudad, out List<Regimen> regimenes, out DateTime fechaCreacion, out string recargoEstrellas)
        { 
            DataRow hotel = DatabaseAdapter.traerDataTable("buscar_hotel_por_id", idHotel).Rows[0];
            nombre = hotel["nombre"].ToString();
            email = hotel["mail"].ToString();
            calle = hotel["calle"].ToString();
            altura = Convert.ToInt32(hotel["altura"]);
            telefono = hotel["telefono"].ToString();
            estrellas = Convert.ToInt32(hotel["estrellas"]);
            recargoEstrellas = hotel["recarga_estrellas"].ToString();
            fechaCreacion = Convert.ToDateTime(hotel["fecha_creacion"]);
            ciudad = hotel["ciudad"].ToString();
            pais= HomeGeografico.buscarPaisPorId(Convert.ToInt32(hotel["id_pais"]));

            Hotel unHotel = new Hotel(idHotel, nombre);
            regimenes = unHotel.Regimenes;
        }

        static public DataTable buscarHoteles(string nombre,int estrellas,Pais pais,string ciudad) 
        {
           return DatabaseAdapter.traerDataTable("buscar_hoteles", like(nombre), estrellas, pais.Id, like(ciudad),Sesion.FechaActual);
        }

        static public void bajaLogica(int idHotel,string fechaDesde,string fechaHasta)
        {
            DatabaseAdapter.insertarDatosEnTabla("periodo_cierre", idHotel, fechaDesde, fechaHasta);
        }

        static public void actualizarHotel(int idHotel, string nombre, string email, string telefono, string calle, int altura, int estrellas, Pais pais, string ciudad, List<Regimen> regimenes, string fechaCreacion, int recargoEstrellas,List<Regimen> regimenesOriginales)
        {
            DatabaseAdapter.actualizarDatosEnTabla("hotel", idHotel, nombre, email, telefono, calle, altura, estrellas, pais.Id, ciudad, fechaCreacion,recargoEstrellas);
            removerElementosChequeo("regimen_x_hotel_chequeo", idHotel, IdsDe<Regimen>(diferencia<Regimen>(regimenesOriginales, regimenes)));
            removerElementos("regimen_x_hotel", idHotel,IdsDe<Regimen>(diferencia<Regimen>(regimenesOriginales,regimenes)));
            agregarElementos("regimen_x_hotel", idHotel, IdsDe<Regimen>(diferencia<Regimen>(regimenes, regimenesOriginales)));
        }


    }
}
