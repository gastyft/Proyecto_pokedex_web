<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerDetalle.aspx.cs" Inherits="ProyectoPokedex.VerDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    <asp:Image ID="ImagenPoke" AlternateText="Imagen del bicho" runat="server" />
   <h5> <bold>Nombre del bicho:</bold> 
    <asp:Label ID="lblNombrePokemon" runat="server" Text="lblNombrePokemon.nombre" font-size="XX-Large"></asp:Label>
       </h5>
    <h5>
        Descripcion del bicho:
        <asp:Label ID="DescripcionPokemon" runat="server" Text="DescripcionPokemon" font-size="XX-Large"></asp:Label>
    </h5>
    <h5>
        Tipo del bicho:
        <asp:Label ID="TipoPokemon" runat="server" Text="Label" font-size="XX-Large" ></asp:Label>
    </h5>
    <h5>
        Debilidad del bicho:
        <asp:Label ID="DebilidadPokemon" runat="server" Text="Label" font-size="XX-Large"></asp:Label>
    </h5>
</asp:Content>
