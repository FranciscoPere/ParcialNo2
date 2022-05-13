<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ParcialNo2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Peliculas</h1>
        <p>Titulo&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TituBox" runat="server"></asp:TextBox>
        </p>
        <p>Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AñoBox" runat="server"></asp:TextBox>
        </p>
        <p>Genero
            <asp:TextBox ID="GeneroBox" runat="server"></asp:TextBox>
        </p>
        <p>Estudio&nbsp;
            <asp:TextBox ID="EstudioBox" runat="server"></asp:TextBox>
        </p>
        <p>Ingrese Actores del elenco</p>
        <p>&nbsp;Nombre
            <asp:TextBox ID="NombreBox" runat="server"></asp:TextBox>
            <asp:Button ID="Elenco" runat="server" OnClick="Elenco_Click" Text="Agregar elenco" Width="184px" />
        </p>
        <p>Fecha de Nacimineto<asp:Calendar ID="FechaNacimiento" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" Width="270px" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" Width="333px">
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
        </p>
        <p>
            <asp:Button ID="EliminarP" runat="server" OnClick="EliminarP_Click" Text="Eliminar pelicula" Width="230px" />
        </p>
    </div>

</asp:Content>
