<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="swtransito.Views.Administrador.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="row">
       <br />
        <br />
        <br />
        <div class="col-sm-12">
            <img src="../../lesser/images/sena.jpg" width="300" height="100" class="img-responsive center-block" />
        </div>
      
    </div>

    <div class="container">
        <div class="row">
            <div class="col-xl-4"></div>
            <div class="col-xl-4">
                <div class="h1">
                    <p align="center">Bienvenido al Sistema</p>
                </div>
            </div>
            <div class="col-xl-4"></div>
        </div>


    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Bienvenido a SWTRANSITO!',
            // (string | mandatory) the text inside the notification
            text: 'Software Educativo para el fortalecimiento de la enseñanza de las señales de tránsito y comportamientos de movilidad en los conductores.',
            // (string | optional) the image to display on the left
            image: '../../lesser/images/sena.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
    




     </asp:Content>