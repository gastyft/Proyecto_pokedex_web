using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPokedex
{
    public partial class VerDetalle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Establece la cadena de conexión a tu base de datos
                
               // Reemplaza con tu cadena de conexión

                // Crea una conexión SQL
                using (SqlConnection conexion =   new SqlConnection(ConfigurationManager.AppSettings["cadenaConexion"]))
                {
                    // Define la consulta SQL para obtener el nombre de un cliente por su ID
                    string consulta = "Select Numero, Nombre, P.Descripcion, UrlImagen,E.Descripcion Tipo, D.Descripcion Debilidad from POKEMONS P, ELEMENTOS E, ELEMENTOS D where E.Id = P.IdTipo and D.Id = P.IdDebilidad and P.Id = @ID" ;

                    // Crea un comando SQL
                    using (SqlCommand comando = new SqlCommand(consulta, conexion))
                    {
                        if (Request.QueryString["id"] != null)
                        {
                            int elementoID;
                            if (int.TryParse(Request.QueryString["id"], out elementoID))
                            {


                                // Establece el parámetro ID
                                comando.Parameters.AddWithValue("@ID", elementoID); // Reemplaza 123 con el ID del cliente que deseas

                                // Abre la conexión
                                conexion.Open();

                                // Ejecuta la consulta y obtén el resultado
                                SqlDataReader reader = comando.ExecuteReader();
                                if (reader.Read())
                                {
                                    // Asigna el valor al control Label
                                    lblNombrePokemon.Text = reader["Nombre"].ToString();
                                    string ImagenPokemon  = reader["UrlImagen"].ToString();
                                    TipoPokemon.Text = reader["Tipo"].ToString();
                                    DebilidadPokemon.Text = reader["Debilidad"].ToString();
                                    DescripcionPokemon.Text = reader["Descripcion"].ToString();

                                    ImagenPoke.ImageUrl = ImagenPokemon;
                                }
                                else
                                {
                                    lblNombrePokemon.Text = "Cliente no encontrado";
                                }

                                // Cierra la conexión
                                conexion.Close();
                            }
                        }
                    }
                }
            }
        }
    }
}