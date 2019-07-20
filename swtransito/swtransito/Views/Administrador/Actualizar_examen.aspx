<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Actualizar_examen.aspx.cs" Inherits="swtransito.Views.Administrador.Actualizar_examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">






    <form runat="server" class="form-horizontal form-label-left">

        <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1">
            <br />
            <div class="panel panel-default">
                <div class="panel-body">
                    <h4><i class="fa fa-angle-right"></i>Actualizar examen </h4>
                    <hr>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Seleccione temática</label>
                        <div class="col-md-6">
                            <asp:DropDownList ID="List_tipo" runat="server" CssClass="form-control" required="required" DataTextField="category_name" DataValueField="category_id">
                            </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="require_drpcategory" runat="server" ErrorMessage="You must select a category" ControlToValidate="drp_categoryexam" ForeColor="red" InitialValue="-1"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Nombre Examen</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_examname" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_examname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_examname" ForeColor="red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Descripción Examen</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txt_examdis" runat="server" TextMode="MultiLine" CssClass="form-control" Height="150px" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Fecha Examen</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_examdate" runat="server" CssClass="form-control" TextMode="Date" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_examdate" runat="server" ErrorMessage="Enter exam date" ControlToValidate="txt_examdate" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Total Preguntas</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_examtotalpreguntas" runat="server" CssClass="form-control" TextMode="Number" required="required"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="require_exampassmark" runat="server" ErrorMessage="Enter exam pass marks" ControlToValidate="txt_exampassmarks" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                            <%--<asp:RegularExpressionValidator ID="requireregular_exampassmark" runat="server" ErrorMessage="Enter a valid marks" ControlToValidate="txt_exampassmarks" ForeColor="red" ValidationExpression="^\d{1,45}$" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Numero prpeguntas para aprobar</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txt_exammapasa" runat="server" CssClass="form-control" TextMode="Number" required="required"></asp:TextBox>
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



     <br />
    <br />
    <br />
    <br />
    <br />







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
