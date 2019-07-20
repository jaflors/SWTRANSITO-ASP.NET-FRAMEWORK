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





       <%-- <script type="application/javascript">
            var eventData = [
          { "date": "2019-07-19", "badge": false, "title": "Example 1" },
          { "date": "2019-07-20", "badge": true, "title": "Example 2" }
            ];

            $(document).ready(function () {
                $("#date-popover").popover({ html: true, trigger: "manual" });
                $("#date-popover").hide();
                $("#date-popover").click(function (e) {
                    $(this).hide();
                });

                
                $("#my-calendar").zabuto_calendar({
                    language: "es",
                    data: eventData,
                    today: true,

                    weekstartson: 0,
                    nav_icon: {
                        prev: '<i class="fa fa-chevron-circle-left"></i>',
                        next: '<i class="fa fa-chevron-circle-right"></i>'
                    },

                    action: function () {
                        return myDateFunction(this.id, false);
                    },

                    action_nav: function () {
                        return myNavFunction(this.id);
                    },
                    ajax: {
                        url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    { type: "text", label: "Special event", badge: "00" },
                        { type: "block", label: "Regular event", }
                ]
            });
        });


        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }

    </script>--%>

     <script type="application/javascript">
          //  var eventData = [
          //{ "date": "2019-07-19", "badge": false, "title": "Example 1" },
          //{ "date": "2019-07-20", "badge": true, "title": "Example 2" }
          //  ];

         var eventData = [];
            $(document).ready(function () {
                $("#date-popover").popover({ html: true, trigger: "manual" });
                $("#date-popover").hide();
                $("#date-popover").click(function (e) {
                    $(this).hide();
                });

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    url: "~inicio.aspx/GetEvents",
                    success: function (data) {

                        $.each(data.d, function (i, v) {
                            eventData.push({
                                date: moment(v.Start),
                                badge: true,
                                title: v.Subject,
                               
                                
                               
                            });
                        })

                       
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("Status: " + textStatus); alert("Error: " + XMLHttpRequest.responseText);
                    }
                    
                })

                
                $("#my-calendar").zabuto_calendar({
                    //ajax: {
                    //    url: "show_data.php?action=1",
                    //    modal: true
                    //},
                    language: "es",
                    data: eventData,
                

                    weekstartson: 0,
                   

                    action: function () {
                        return myDateFunction(this.id, false);
                    },

                    action_nav: function () {
                        return myNavFunction(this.id);
                    },
                    
                legend: [
                    { type: "text", label: "Special event", badge: "00" },
                        { type: "block", label: "Regular event", }
                ]
            });
        });


        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }

    </script>


</asp:Content>
