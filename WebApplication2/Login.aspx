﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="content-wrapper margin-top-60px mx-auto ">
        <div class="row">
            <!--Formulario de login-->
            <div class="col-3 box-border box-padding-30px">
                
                <h2 class="text-center">Entrar</h2>
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="Red"></asp:Label>
                
                <br />
                <label>LOGIN</label>
                <asp:TextBox ID="login" runat="server"></asp:TextBox>
                <label>SENHA</label>
                <asp:TextBox ID="Senha" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Entrar" OnClick="Entrar_Click" Text="Entrar" runat="server"/>

            </div>


            
        </div>
    </div>

</asp:Content>
