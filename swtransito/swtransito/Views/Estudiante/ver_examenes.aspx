<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="ver_examenes.aspx.cs" Inherits="swtransito.Views.Estudiante.ver_examenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-md-10 col-md-offset-1">
        <div class="row ">
            <br />
            <br />


            <!-- SERVER STATUS PANELS -->
            <form runat="server" class="form-horizontal form-label-left">
                <asp:ListView runat="server" ID="list_examenes">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-4 mb">
                            <div class="grey-panel pn donut-chart">
                                <div class="grey-header">
                                    <h5><%#Eval("nombre")%> </h5>
                                </div>
                                <img src="../../imagenes/icon-36969.png" width="100" alt="" />
								<h5 class="mt">Total preguntas:<%# Eval("numero_preguntas") %></h5>
								<h6>Aprueba con:<%# Eval("aprueba_con") %></h6>
								
							
                                <div class=" footer">
                                    <asp:LinkButton runat="server" OnCommand="ver_contenido" CommandArgument='<%#Eval("idexamen")%>' CssClass="btn btn-small btn-theme04" CommandName="ingresar"> Ingresar </asp:LinkButton>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
