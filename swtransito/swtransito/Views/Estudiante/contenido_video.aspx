<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="contenido_video.aspx.cs" Inherits="swtransito.Views.Estudiante.contenido_video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-md-10 col-md-offset-1">
        <div class="row ">
          

            <br />
            <br />


            <!-- SERVER STATUS PANELS -->
            <form runat="server" class="form-horizontal form-label-left" style="margin-left: 100px;">

                <iframe width="800" height="500" src="<%= Session["url_video"].ToString() %>" allowfullscreen></iframe>


            </form>







        </div>
        <!-- /row -->

    </div>











</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
