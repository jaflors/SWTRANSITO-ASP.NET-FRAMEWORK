<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Imagen.aspx.cs" Inherits="swtransito.Views.Estudiante.Imagen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<link href="../../carousel/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />--%>
    <!-- Compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="col-md-10 col-md-offset-1">
        <br />
         <br />
         
        <div id="myCarouselCustom" class="carousel slide" data-ride="carousel" data-interval="false">



            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarouselCustom" data-slide-to="0" class="active"></li>
                <li data-target="#myCarouselCustom" data-slide-to="1"></li>
                <li data-target="#myCarouselCustom" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
             <div class="carousel-inner" runat="server" id="Baner">
               <%-- <div class="item active">

                    <img src="../../imagenes/tematica.png" />
                    
                </div>

                <div class="item">

                    <img src="../../imagenes/tematica1.png" />
                    
                </div>

                <div class="item">
                    <img src="../../imagenes/tematica4.png" />

                    
                </div>--%>
            </div>

           
        </div>
        <!-- Custom Controls -->

        
        <br />


            <a class="btn btn-primary btn-xs" href ="javascript:void(0);"  style="width: 62px;" id="prevBtn"><i class="fa fa-backward"></i></a>
            <a class="btn btn-primary btn-xs" href ="javascript:void(0);" style="width: 62px;padding-left: 0px;margin-left: 800px;"  id="nextBtn"><i class="fa fa-forward"></i> </a>

       


    </div>

</asp:Content>

