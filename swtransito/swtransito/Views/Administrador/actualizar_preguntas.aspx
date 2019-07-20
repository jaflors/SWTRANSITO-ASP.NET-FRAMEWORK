<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="actualizar_preguntas.aspx.cs" Inherits="swtransito.Views.Administrador.actualizar_preguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form runat="server" class="form-horizontal form-label-left">

        <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1">
            <br />
            <div class="panel panel-default">
                <div class="panel-body">
                     <h4><i class="fa fa-angle-right"></i>Info Pregunta</h4>
                    <hr>

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Enunciado</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_questionname" runat="server" TextMode="MultiLine" CssClass="form-control" Height="150px" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_questionname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_questionname" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción A</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optionone" runat="server" CssClass="form-control" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op1" runat="server" ErrorMessage="Enter option one" ControlToValidate="txt_optionone" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción B</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optiontwo" runat="server" CssClass="form-control" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op2" runat="server" ErrorMessage="Enter option two" ControlToValidate="txt_optiontwo" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción C</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op4" runat="server" ErrorMessage="Enter option four" ControlToValidate="txt_optionfour" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción D</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optionfourt" runat="server" CssClass="form-control" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op4" runat="server" ErrorMessage="Enter option four" ControlToValidate="txt_optionfour" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">respuesta correcta</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="rdo_correctanswer" runat="server" CssClass="form-control" ></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op4" runat="server" ErrorMessage="Enter option four" ControlToValidate="txt_optionfour" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    
                    <div class="row form-group">
                    <div class="col-md-6">
                        <a class="btn btn-twitter" style="margin-left: 10px;"
                            href="../../Views/Administrador/ver_preguntas.aspx"><i class="fa fa-mail-reply "></i>Volver</a>
                            <asp:Button ID="guardar" class="btn btn-primary" AutoPostBack="true" runat="server" OnClick="Actualizar" Text="Modificar" />
                    </div>
                </div>

                </div>
            </div>
        </div>
    </form>


     <br />
    <br />
    <br />
    <br />
    <br />























</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
