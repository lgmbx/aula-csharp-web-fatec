<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Downloads.aspx.cs" Inherits="WebApplication2.Downloads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="content-wrapper">

        <h1>DOWNLOADS</h1>
        <br />
        <p>Programas e recursos usados no projeto</p>

        <!--CONTEUDOS-->
        <div class="row margin-top-60px">

            <!--COLUNA 1-->
            <div class="col-3 box-padding-sides-20px">
                <img width="100%" src="images/vsstudio.png" />
                <br />
                <br />
                <a href="https://visualstudio.microsoft.com/pt-br/vs/">
                    <h2>Visual Studio Community</h2>
                </a>

                <br />
                <p>
                    Desenvolva programas com o conjunto completo de ferramentas, do design inicial à implantação final<br />
                    Melhoria no desempenho do IntelliSense para arquivos C++<br />
                    Desenvolvimento local com vários emuladores comuns<br />
                    Acesso a teste simplificado no Gerenciador de Soluções<br />

                </p>
            </div>

            <!--COLUNA 2-->
            <div class="col-3 box-padding-sides-20px">
                <img width="100%" src="images/msdn.png" />
                <br />
                <br />
                <a href="https://docs.microsoft.com/pt-br/">
                    <h2>Microsoft Docs</h2>
                </a>
                <br />
                <p>
                    O docs.microsoft.com é a página inicial da documentação da 
                    Microsoft para usuários finais, 
                    desenvolvedores e profissionais de TI.
                </p>
                </div>

               <!--COLUNA 3-->
                <div class="col-3 box-padding-sides-20px">
                    <img width="100%" src="images/access.jpg" />
                    <br />
                    <br />
                    <a href="https://www.microsoft.com/en-us/download/details.aspx?id=54920">
                        <h2>Microsoft Access</h2>
                    </a>
                    <br />
                    <p>
                        Sistema de gerenciamento de banco de dados da Microsoft
                    que combina o Microsoft Jet Database Engine com uma interface gráfica do utilizador 
                    (graphical user interface). Ele permite o desenvolvimento rápido de RAD (Rapid Application Development), 
                    que envolvem tanto de dados como também a interface a ser utilizada pelos usuários
                    </p>
                </div>

                 <!--COLUNA 4-->
                <div class="col-3 box-padding-sides-20px">
                    <img width="100%" src="images/somee.png" />
                    <br />
                    <br />
                    <a href="https://somee.com/default.aspx">
                        <h2>Somee Hosting</h2>
                    </a>
                    <br />
                    <p>
                        Free, fully automated setup and trial period<br />
                        Daily servers backup<br />
                        No additional or hidden fees<br />
                        60 days full money back guarantee no questions asked<br />
                        Free, unlimited 24/7 support<br />

                    </p>

                </div>




        </div>



    </div>





</asp:Content>
