<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Imagen.aspx.cs" Inherits="swtransito.Views.Estudiante.Imagen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<link href="../../carousel/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />--%>
    <!-- Compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="col-lg-9 main-chart">
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


        <a class="btn btn-primary btn-xs" href="javascript:void(0);" style="width: 62px;" id="prevBtn"><i class="fa fa-backward"></i></a>
        <a class="btn btn-primary btn-xs" href="javascript:void(0);" style="width: 62px; padding-left: 0px; margin-left: 800px;" id="nextBtn"><i class="fa fa-forward"></i></a>




    </div>
    <div class="col-lg-3 ds">
        <!--COMPLETED ACTIONS DONUTS CHART-->
        <h3>Material Apoyo</h3>

        <!-- First Action -->
         <form runat="server" class="form-horizontal form-label-left">
        <asp:ListView runat="server" ID="list_pdf">
            <ItemTemplate>
                <div class="desc">
                    <div class="thumb">
                        <span class="badge bg-theme" style="background-color: #e21919"><i class="fa fa-file-pdf-o"></i></span>
                    </div>
                    <div class="details">
                        <p>
                            <muted><%#Eval("nombre")%></muted>
                            <br />
                         
                             <asp:LinkButton CommandArgument='<%#Eval("idpdf")%>' CssClass="" OnCommand="descargar_pdf" runat="server" CommandName="traer">Descargar</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        </form>

      
        

        

    </div>
    <!-- /col-lg-3 -->





</asp:Content>

