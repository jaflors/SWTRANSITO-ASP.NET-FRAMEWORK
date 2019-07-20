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
                            <div class="grey-panel pn donut-chart">
                                <div class="grey-header">
                                    <h5>No.<%#Eval("Numero")%>  <%#Eval("Nombre")%></h5>
                                </div>
                               
                                <h1 class="mt"><i class="fa fa-folder-open fa-3x"></i></h1>
                               
                                <div class=" footer">

                                    <asp:LinkButton runat="server" OnCommand="ver_contenido"  CommandArgument='<%#Eval("idTematica")%>' CssClass="btn btn-primary btn-xs" CommandName="ingresar"> Ingresar </asp:LinkButton>

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

         <br />
            <br />

         <br />
            <br />
         <br />
            
    </div>








</asp:Content>
