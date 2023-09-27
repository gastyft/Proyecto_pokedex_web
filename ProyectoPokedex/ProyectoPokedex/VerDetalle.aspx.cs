using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPokedex
{
    public partial class VerDetalle : System.Web.UI.Page
    {
        public List<Pokemon> ListaPokemon { get; set; }
        
        public Pokemon poke { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            ListaPokemon = negocio.listarConSP();

            

        }
            
            
        }
    }