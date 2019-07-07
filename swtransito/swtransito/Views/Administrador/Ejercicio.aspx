<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Ejercicio.aspx.cs" Inherits="swtransito.Views.Administrador.Ejercicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Content/Css/Stilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <span class="badge bg-success fa-2x" id="reloj" style="display: grid"></span>
    <div class="container mt">
        <div class="form-panel">
            <form role="form" class="form-horizontal style-form">
                <div class="row" id="insertar">
                </div>
                <hr />
                <button class="btn btn-theme" type="button" onclick="validar_final()">Validar</button>

            </form>
        </div>


    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" >

                <div class="modal-body text-justify" id="aqui">
                    
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-round" data-dismiss="modal">Aceptar</button>
                <button type="button" class="btn btn-round btn-warning" onclick="Reinicio()">Reiniciar</button>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="../../Content/Imagen.js"></script>
</asp:Content>
