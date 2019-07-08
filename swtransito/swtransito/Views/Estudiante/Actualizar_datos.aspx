<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Actualizar_datos.aspx.cs" Inherits="swtransito.Views.Estudiante.Actualizar_datos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form runat="server" class="form-horizontal form-label-left">

        <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1">
            <br />
            <div class="panel panel-default">
                <div class="panel-body">
                    <h4><i class="fa fa-angle-right"></i>Actualizar Datos </h4>
                    <hr>
                  

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Nombres</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_nombre" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_examname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_examname" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Apellidos</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">cedula</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_ecedula" runat="server" CssClass="form-control" TextMode="Number" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_examdate" runat="server" ErrorMessage="Enter exam date" ControlToValidate="txt_examdate" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Correo</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_correo" runat="server" TextMode="Email" CssClass="form-control"  required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Contraseña</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_contra" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_exammatotal" runat="server" ErrorMessage="Enter total marks" ControlToValidate="txt_exammatotalmarks" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                            <%--<asp:RegularExpressionValidator ID="rege_exammatotal" runat="server" ErrorMessage="Enter a valid total marks" ControlToValidate="txt_exammatotalmarks" ForeColor="red" ValidationExpression="^\d{1,45}$" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-6">
                            <a class="btn btn-default" href="../../Views/Administrador/examen.aspx">Volver</a>
                            <asp:Button ID="guardar" class="btn btn-primary" AutoPostBack="true" runat="server" OnClick="Actualizar" Text="Modificar" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>



  







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
