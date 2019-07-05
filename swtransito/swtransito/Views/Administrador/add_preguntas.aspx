<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="add_preguntas.aspx.cs" Inherits="swtransito.Views.Administrador.add_preguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form runat="server" class="form-horizontal form-label-left">

        <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1">
            <br />
            <div class="panel panel-default">
                <div class="panel-body">
                     <h4><i class="fa fa-angle-right"></i>Registrar preguntas</h4>
                    <hr>

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Enunciado</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_questionname" runat="server" TextMode="MultiLine" CssClass="form-control" Height="150px"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_questionname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_questionname" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción A</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optionone" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op1" runat="server" ErrorMessage="Enter option one" ControlToValidate="txt_optionone" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción B</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optiontwo" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op2" runat="server" ErrorMessage="Enter option two" ControlToValidate="txt_optiontwo" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción C</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optionthree" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op3" runat="server" ErrorMessage="Enter option three" ControlToValidate="txt_optionthree" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Opción D</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_optionfour" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_op4" runat="server" ErrorMessage="Enter option four" ControlToValidate="txt_optionfour" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Pregunta Correcta</label>
                        <div class="col-md-5">
                            <asp:RadioButtonList ID="rdo_correctanswer" runat ="server"  RepeatDirection="Horizontal" RepeatLayout="Table" CellPadding="10" Height="17px" Width="164px">
                                <asp:ListItem Text="A" Value="1" ></asp:ListItem>
                                <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                <asp:ListItem Text="C" Value="3"></asp:ListItem>
                                <asp:ListItem Text="D" Value="4"></asp:ListItem>
                            </asp:RadioButtonList>
                            <%--<asp:RequiredFieldValidator ID="req_rdo_correctanswer" runat="server" ErrorMessage="Select a correct answer" ControlToValidate="rdo_correctanswer" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-6">
                            <a class="btn btn-default" href="../../Views/Administrador/examen.aspx">Volver</a>
                            <asp:Button ID="guardar" class="btn btn-primary" AutoPostBack="true" runat="server" OnClick="Registrar" Text="Guardar" />
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
