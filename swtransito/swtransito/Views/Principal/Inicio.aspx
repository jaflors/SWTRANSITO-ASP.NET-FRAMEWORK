<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Principal/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="swtransito.Views.Principal.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>


            <!-- Wrapper for slides -->
            <div class="carousel-inner" >
                <div class="item active">
           
                    <img src="../../imagenes/g.jpg" />

        </div>

        <div class="item">
            
            <img src="../../imagenes/h.jpg" />
        </div>

        <div class="item">
           
            <img src="../../imagenes/viaa.jpg" />
        </div>

        <div class="item">
            
            <img src="../../imagenes/t.jpg" />
        </div>
            </div>


            <h4><a target="_parent" title="ola como vas " href="Login.aspx"></a></h4>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Siguiente</span>
            </a>
        </div>
       
				 <div class="jumbotron">
        <center>
        <h2>SWTRANSITO</h2>
        <p class="lead">Software Educativo como estrategia en el fortalecimiento de la enseñanza de las señales de tránsito y comportamientos de movilidad en los conductores</p>
       
    </center>
        <div class="row">
            <div class="col-sm-12">

                <div class="row">
                    
                  
                   
                </div>



            </div>
        </div>

    </div>
				</div>
    




</asp:Content>
