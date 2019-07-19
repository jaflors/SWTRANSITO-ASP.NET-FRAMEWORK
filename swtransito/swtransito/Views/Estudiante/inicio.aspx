<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="swtransito.Views.Estudiante.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <div class="col-lg-9 main-chart">

        <div class="row mtbox">
            <div class="col-md-2 col-sm-2 col-md-offset-1 box0">
                <div class="box1">
                    <span class="li_news"></span>
                    <h3><%=tematicas%> </h3>
                </div>
                <p>Tienes <%=tematicas%> Tematicas para descubrir . Whoohoo!</p>
            </div>
            <div class="col-md-2 col-sm-2 box0">
                <div class="box1">
                    <span class="li_pen"></span>
                    <h3>+<%=examen%></h3>
                </div>
                <p>Tienes <%=examen%> examenes por resolver suerte!!!.</p>
            </div>
            <div class="col-md-2 col-sm-2 box0">
                <div class="box1">
                    <span class="li_heart"></span>
                    <h3><%=compas%></h3>
                </div>
                <p>Tienes <%=compas%> compañeros en este curso.</p>
            </div>
            <div class="col-md-2 col-sm-2 box0">
                <div class="box1">
                    <span class="li_study"></span>
                    <h3>+1</h3>
                </div>
                <p>tienes 1 ejercicio Por realizar.</p>
            </div>
            <div class="col-md-2 col-sm-2 box0">
                <div class="box1">
                    <span class="li_data"></span>
                    <h3>OK!</h3>
                </div>
                <p>Your server is working perfectly. Relax & enjoy.</p>
            </div>
            <img src="../../lesser/images/sena.jpg" width="300" height="100" class="img-responsive center-block" />
            <h1 align="center">Bienvenido al Sistema</h1>
            <br />
            <a class="btn btn-small btn-theme04" style="margin-left: 330px;"
                href="../../Views/Administrador/Encuesta.aspx">Califica Nuestro sistema </a>
        </div>
        <!-- /row mt -->


       


    </div>

    <!-- /col-lg-9 END SECTION MIDDLE -->

    


                    
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                    <!--COMPLETED ACTIONS DONUTS CHART-->
						<h3>NOTIFICATIONS</h3>
                                        
                      <!-- First Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                      	</div>
                      	<div class="details">
                      		<p><muted>2 Minutes Ago</muted><br/>
                                  <a href="../../Views/Administrador/Encuesta.aspx">Calificar</a> Califica Nuestro sistema educativo.<br />
                              </p>
                          </div>
                      </div>
                      <!-- Second Action -->
                     <%-- <asp:ListView runat="server" ID="list_pdf">
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
                      </asp:ListView>--%>




                      <h3>CALENDARIO</h3>
           
                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                      
                  </div><!-- /col-lg-3 -->












</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
