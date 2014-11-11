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
            //TODO   DatabaseAdapter.insertarDatosEnTabla("hotel", nombre, email, telefono, direccion, estrellas, pais.Id, ciudad, fechaCreacion);
        }
        
        static public void buscarPorId(int idHotel,out string nombre, out string email, out string telefono, out string direccion, out int estrellas, out Pais pais, out string ciudad, out List<Regimen> regimenes, out DateTime fechaCreacion)
        {
           /*TODO
            DataRow hotel = DatabaseAdapter.traerDataTable("buscar_hotel_por_id", idHotel).Rows[0];
            nombre = hotel["nombre"].ToString();
            email = hotel["email"].ToString();
            direccion = hotel["direccion"].ToString();
            telefono = hotel["telefono"].ToString();
            estrellas = Convert.ToInt32(hotel["estrellas"]);
            fechaCreacion = Convert.ToDateTime(hotel["fecha_nacimiento"]);
        */

            nombre = "juanLoco34";
            email = "sss";
            telefono = "45634563";
            direccion = "Perez Galdos 345";
            estrellas = 4;
            pais = new Pais(1,"España");
            ciudad = "Cataluña";
            fechaCreacion = new DateTime(1999,12,15);
            regimenes = new List<Regimen>{new Regimen(1,"Breikfast"),new Regimen(2,"Continental")};
        }

        static public DataTable buscarHoteles(string nombre,int estrellas,Pais pais,string ciudad) 
        {/* TODO
             return DatabaseAdapter.traerDataTable("buscar_hoteles", nombre, estrellas, pais.Descripcion, ciudad);
            */
            DataTable ej = new DataTable();
            ej.Clear();
            ej.Columns.Add("ID");
            ej.Columns.Add("Nombre");
            ej.Columns.Add("Estrellas");
            ej.Columns.Add("Pais");
            ej.Columns.Add("Ciudad");
            ej.Rows.Add(new object[] { 1, "Hotel aca no vuelvo ni en pedo", 5, "Argentina", "Chascomus"});
            ej.Rows.Add(new object[] { 2, "Hotel Espá y Risort", 3, "Chile", "Santiago" });
            return ej;

        }

        static public void bajaLogica(int idHotel)
        {
            //TODO DatabaseAdapter.ejecutarProcedure("baja_hotel", idHotel);
        }

    }
}
