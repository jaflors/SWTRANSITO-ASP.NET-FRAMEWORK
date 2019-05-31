<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="contenido_video.aspx.cs" Inherits="swtransito.Views.Estudiante.contenido_video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-horizontal form-label-left" style="margin-left: 100px;">
        <div class="col-lg-9 main-chart">
            <br />

            <iframe width="700" height="500" src="<%= Session["url_video"].ToString() %>" allowfullscreen></iframe>




        </div>


        <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <h3>Material Apoyo</h3>

            <!-- First Action -->
         
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
        </div>
        <!-- /col-lg-3 -->
    </form>











</asp:Content>

