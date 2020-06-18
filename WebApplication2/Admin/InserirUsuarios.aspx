<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirUsuarios.aspx.cs" Inherits="WebApplication2.Admin.InserirUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="content-wrapper margin-top-100px">
        <div class="row">


            <!--Formulario de dados-->
            <div class="col-6 box-padding-30px box-border">
                <h2>Cadastro de usuarios</h2>
                <br />

                <div class="float:Right;">
                    <asp:Label ID="Codigo" runat="server" Font-Size="30px" Font-Bol="True"></asp:Label>
                </div>

                <label>Nome Completo</label>
                <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>

                <label>Login</label>
                <asp:TextBox ID="Login" MaxLength="255" runat="server"></asp:TextBox>

                <label>Senha</label>
                <asp:TextBox ID="Senha" MaxLength="255" runat="server"></asp:TextBox>

                <label>Anotaçoes</label>
                <asp:TextBox ID="Anotacoes" MaxLength="255" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />
                <asp:Button ID="Excluir" Visible="false" OnClick="Excluir_Click" runat="server" Text="Excluir" />
                <br />
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="red"></asp:Label>
                <br />
                <br />

            </div>


            <!--Exibir dados cadastrados-->
            <div class="col-6 box-padding-30px box-border ">
                <h2>USUARIOS CADASTRADOS</h2>
                <br />
                
                <!--BUSCA-->
                <asp:TextBox ID="BuscarUsuario"  runat="server" Style="max-width: 340px; display:inline" ></asp:TextBox>
                <asp:Button ID="Buscar" OnClick="Buscar_Click" Text="Buscar" runat="server" />
                <asp:Button ID="Reset" OnClick="Reset_Click" Text="X" runat="server" />
                
                <!--PANEL-->
                <asp:Panel ID="Panel1" ScrollBars="Vertical" Height="500px" runat="server">
                    <!--GRIDVIEW-->
                    <asp:GridView ID="Usuarios" AutoGenerateColumns="true" s AutoGenerateSelectButton="true" OnSelectedIndexChanged="Usuarios_SelectedIndexChanged" HeaderStyle-BackColor="Gray" CellPadding="8" Width="100%" BorderColor="Silver" runat="server">
                    </asp:GridView>
                </asp:Panel>
                
            </div>

            




        </div>

    </div>

</asp:Content>
