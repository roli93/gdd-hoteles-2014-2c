using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrbaHotel.Administracion_Base_de_Datos;
using System.Data;
using FrbaHotel.Dominio;

namespace FrbaHotel.Homes
{
    public class HomeClientes:Home
    {
        public static void registrarCliente(string nombre, string apellido, TipoDocumento tipoId, string nroId, string mail, string telefono, string calle,string altura, string piso, string depto,string localidad, DateTime fechaNacimiento, Pais pais)
        {
            DatabaseAdapter.insertarDatosEnTabla("cliente", nombre, apellido, tipoId.Id, nroId, mail, telefono, calle,altura,piso,depto, localidad, fechaNacimiento,pais.Id);
        }

        public static DataTable buscarClientes(string nombre, string apellido, string email, string nroId, TipoDocumento tipoId )
        {
            return DatabaseAdapter.traerDataTable("buscar_clientes", like(nombre), like(apellido), like(email), like(nroId), idDe(tipoId));
        }

        public static void buscarPorId(int id, out  string nombre, out  string apellido, out  TipoDocumento tipoId, out  string nroId, out  string mail, out  string telefono, out  string calle,out string altura,out string piso, out string depto, out string localidad, out DateTime fechaNacimiento,out Pais pais, out bool habilitado)
        {
            DataRow cliente = DatabaseAdapter.traerDataTable("buscar_cliente_por_id", id).Rows[0];
            nombre = cliente["nombre"].ToString();
            apellido = cliente["apellido"].ToString();
            nroId = cliente["numero_identificacion"].ToString();
            mail = cliente["mail"].ToString();
            calle = cliente["calle"].ToString();
            altura = cliente["altura"].ToString();
            piso = cliente["piso"].ToString();
            depto = cliente["departamento"].ToString();
            telefono = cliente["telefono"].ToString();
            fechaNacimiento = Convert.ToDateTime(cliente["fecha_nacimiento"]);
            localidad = cliente["localidad"].ToString();
            if (cliente["habilitado"].ToString().Equals("S"))
                habilitado = true;
            else
                habilitado = false;
            Cliente c = new Cliente(id);
            tipoId = c.TipoId;
            pais = c.Pais;       
        }

        public static void actualizarCliente(int id, string nombre, string apellido,TipoDocumento tipoId, string nroId, string mail, string telefono, string calle,string altura,string piso,string depto, string localidad, DateTime fechaNacimiento, Pais pais, string habilitado)
        {
            DatabaseAdapter.actualizarDatosEnTabla("cliente",id, nombre, apellido,tipoId.Id, nroId, mail, telefono, calle,altura, piso,depto, localidad, fechaNacimiento, habilitado);
        }

        public static List<Cliente> clientesRepetidos(int idCliente)
        {
            List<Cliente> clientes = new List<Cliente>();
            DataTable tablaClientes = DatabaseAdapter.traerDataTable("clientes_repetidos_para", idCliente);
            foreach(DataRow cliente in tablaClientes.Rows)
                clientes.Add(new Cliente(Convert.ToInt32(cliente["id_cliente"]),
                                         cliente["numero_identificacion"].ToString(),
                                         cliente["nombre"].ToString(),
                                         cliente["apellido"].ToString(),
                                         cliente["mail"].ToString(),
                                         new TipoDocumento(Convert.ToInt32(cliente["id_tipo_identificacion"]),
                                                           cliente["descripcion"].ToString()
                                                          )
                                        )
                            );
            return clientes;
        }

        public static void bajaClienteRepetido(int idCliente)
        {
            DatabaseAdapter.ejecutarProcedure("baja_cliente_repetido", idCliente);
        }

        public static void repararClienteRepetido(int idCliente, TipoDocumento tipoID, string nroID,string mail)
        {
            DatabaseAdapter.ejecutarProcedure("reparar_cliente_repetido", idCliente, tipoID.Id, nroID, mail);
        }

        public static void limpiarExRepetidos(TipoDocumento tipoID, string nroID,string mail)
        {
            DatabaseAdapter.ejecutarProcedure("limpiar_repetidos", tipoID.Id, nroID, mail);
        }

        public static int validarUnicidadClienteARepararID(int idCliente, TipoDocumento tipoID, string nroID)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("validar_unicidad_cliente_ID", idCliente, tipoID.Id, nroID);
        }

        public static int validarUnicidadClienteARepararMail(int idCliente, string mail)
        {
            return DatabaseAdapter.ejecutarProcedureWithReturnValue("validar_unicidad_cliente_mail", idCliente, mail);
        }

    }
}
