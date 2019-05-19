<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Imagen.aspx.cs" Inherits="swtransito.Views.Estudiante.Imagen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <link href="../../carousel/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="col-md-10 col-md-offset-1 ">
     <div id="myCarouselCustom" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarouselCustom" data-slide-to="0" class="active"></li>
        <li data-target="#myCarouselCustom" data-slide-to="1"></li>
        <li data-target="#myCarouselCustom" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
           
            <img src="../../imagenes/f.png" />
            <div class="carousel-caption">
                <h3>First Slide</h3>
                <p>This is the first image slide</p>
            </div>
        </div>
  
        <div class="item">
            
            
            <img src="../../imagenes/tematica1.png" />
            <div class="carousel-caption">
                <h3>Second Slide</h3>
                <p>This is the second image slide</p>
            </div>
        </div>
        
        <div class="item">
            <img src="../../imagenes/tematica1.png" />
            <div class="carousel-caption">
                <h3>Third Slide</h3>
                <p>This is the third image slide</p>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- Custom Controls -->
<a href="javascript:void(0);" id="prevBtn">Prev Slide</a>
<a href="javascript:void(0);" id="nextBtn">Next Slide</a>

         </div>


</asp:Content>

