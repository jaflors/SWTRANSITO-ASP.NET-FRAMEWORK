<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Tematicas_estudiantes.aspx.cs" Inherits="swtransito.Views.Estudiante.Tematicas_estudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <div class="col-md-10 col-md-offset-1">
        <div class="row ">
            <br />
            <br />


            <!-- SERVER STATUS PANELS -->
            <form runat="server" class="form-horizontal form-label-left">
                <asp:ListView runat="server" ID="list_tematicas">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-4 mb">
                            <div class="white-panel pn donut-chart">
                                <div class="white-header">
                                    <h5>No.<%#Eval("Numero")%>  <%#Eval("Nombre")%></h5>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 col-xs-6 goleft">
                                        <p><i class="fa fa-database"></i>70%</p>
                                    </div>
                                </div>
                                <canvas id="serverstatus01" height="120" width="120"></canvas>
                                <script>
                                    var doughnutData = [
                                            {
                                                value: 70,
                                                color: "#68dff0"
                                            },
                                            {
                                                value: 30,
                                                color: "#fdfdfd"
                                            }
                                    ];
                                    var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
                                </script>
                                <div class=" footer">

                                    <asp:LinkButton runat="server" OnCommand="ver_contenido"  CssClass="btn btn-primary btn-xs" CommandName="ingresar"> Ingresar </asp:LinkButton>

                                </div>
                                 


                            </div>
                            <! --/grey-panel -->
                        </div>
                        <!-- /col-md-4-->
                    </ItemTemplate>
                </asp:ListView>
            </form>







        </div>
        <!-- /row -->

    </div>








</asp:Content>
