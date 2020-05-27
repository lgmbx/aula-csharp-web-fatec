<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="content-wrapper">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="images/banner0.png" />
                </li>
                <li>
                    <img src="images/banner1.png" />
                </li>
                <li>
                    <img src="images/banner2.png" />
                </li>
            </ul>
        </div>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide"
                });
            });
        </script>
        <!--CONTEUDOS-->
        <div class="row margin-top-100px">
            
            <!--COLUNA 1-->
            <div class="col-3 box-padding-sides-20px">
                <img width="100%" src="images/si1.png" />
                <br /><br />
                <h2>
                    Aprenda C#
                </h2>
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,.
                     sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullam
                    co laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>

            <!--COLUNA 2-->
            <div class="col-3 box-padding-sides-20px">
                 <img width="100%" src="images/si2.jpg" />
                <br /><br />
                <h2>
                    C# é facil
                </h2>
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,.
                     sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullam
                    co laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>

            <!--COLUNA 3-->
            <div class="col-3 box-padding-sides-20px">
                 <img width="100%" src="images/si3.jpg" />
                <br /><br />
                <h2>
                    CSS é uma bosta
                </h2>
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,.
                     sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullam
                    co laboris nisi ut aliquip ex ea commodo consequat.
                </p>
                                
            </div>

            <!--COLUNA 4-->
            <div class="col-3 box-padding-sides-20px">
                 <img width="100%" src="images/si4.jpg" />
                <br /><br />
                <h2>
                    HTML tambem !
                </h2>
                <br />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,.
                     sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullam
                    co laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            
            </div>

        </div>
        







    </div>

</asp:Content>
