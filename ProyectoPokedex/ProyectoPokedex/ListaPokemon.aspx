<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="ProyectoPokedex.ListaPokemon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>


        <asp:GridView ID="dgvPokemon" runat="server" CssClass="table" AutoGenerateColumns="false">
        <Columns>
        <asp:BoundField  HeaderText="Nombre" DataField="Nombre" />
        <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad" />
            </Columns>
            </asp:GridView>
    </main>

</asp:Content>
