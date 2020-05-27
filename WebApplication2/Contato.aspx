<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <div class="content-wrapper margin-top-60px">
        
        <!--LINHA-->
        <div class="row">


            <!--COLUNA 1-->
            <div class="col-6 box-padding-right-20px">
                
                <h1>FALE CONOSCO</h1>
                <br />
                <br />
                <asp:Label ID="Erro" runat="server" ForeColor="red"></asp:Label>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" runat="server" TextMode="MultiLine" Rows="6" MaxLength="50"></asp:TextBox>
                <label>Nome</label>
                <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                <label>Email</label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                <br />
                <br />
            </div>




            <!--COLUNA 2-->
            <div class="col-6 box-padding-left-20px">
                
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4375.072931572696!2d-47.332146274212256!3d-22.
                    76600678922952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c8999e5f2a83a3%3A0x1bb1901a8c883b97!2s
                    Cidade%20Jardim%2C%20Americana%20-%20SP!5e0!3m2!1spt-BR!2sbr!4v1589487932596!5m2!1spt-BR!2sbr" 
                    width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> 
            </div>

        </div>
    </div>


</asp:Content>
