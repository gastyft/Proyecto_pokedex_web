<%@ Page Title="Proyecto Pokedex" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ProyectoPokedex.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Proyecto realizado con C#ASP .NET</h3>
        <p>Practica de una página completa con ABML con base de datos local SQL,
            <br />HTML5, CSS3, Bootstrap y .Net Framework
            del curso de Nivel 3 de C#ASP .NET WebForms de <a href="https://campusmaxiprograma.com/">maxiprograma.</a>
        </p>
    </main>
</asp:Content>
