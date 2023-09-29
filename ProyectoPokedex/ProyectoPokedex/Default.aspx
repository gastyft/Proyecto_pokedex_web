<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoPokedex._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="Proyecto">Proyecto Pokedex</h1>
            <p class="lead">Proyecto de Pokedex con C#ASP .NET </p>
        </section>
        <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater runat="server" id="Repetidor">

           <ItemTemplate>
                <div class="col">
                <div class="card">
                    <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("Nombre") %></h5>
                        <p class="card-text"><%#Eval("Descripcion") %></p>
                        <a class="btn btn-info" href="VerDetalle.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
  <!-- BOTON EJEMPLO CON ASP   <asp:button text="Ejemplo" cssclass="btn btn-primary" runat="server" id="btnEjemplo" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/> -->
                    </div>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
      </div>
    </main>

</asp:Content>
