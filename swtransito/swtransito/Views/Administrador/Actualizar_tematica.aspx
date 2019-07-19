<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Actualizar_tematica.aspx.cs" Inherits="swtransito.Views.Administrador.Actualizar_tematica" %>
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
        <label class="col-md-2 col-form-label ">Seleccione Tipo</label>
        <div class="col-md-8">
            <asp:DropDownList ID="List_tipo" class="form-control round-form " runat="server" required="required"></asp:DropDownList>

            <%--<asp:RequiredFieldValidator ID="require_drpcategory" runat="server" ErrorMessage="You must select a category" ControlToValidate="drp_categoryexam" ForeColor="red" InitialValue="-1"></asp:RequiredFieldValidator>--%>
        </div>
    </div>

    <div class="row form-group">
        <label class="col-md-2 col-form-label ">Nombre</label>
        <div class="col-md-8">
            <asp:TextBox ID="txt_Nombres" class="form-control" runat="server" required=""></asp:TextBox>

            <%--<asp:RequiredFieldValidator ID="require_examname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_examname" ForeColor="red"></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-md-2 col-form-label ">Numero</label>
        <div class="col-md-8">
            <asp:TextBox ID="txt_Numero" class="form-control" runat="server" required=""></asp:TextBox>

        </div>
    </div>
    <div class="row form-group">
        <label class="col-md-2 col-form-label ">Estado</label>
        <div class="col-md-8">

            <asp:DropDownList ID="ColorList"
                OnSelectedIndexChanged="Selection_Change"
                runat="server"
                class="form-control">


                <asp:ListItem Value="A">Activo</asp:ListItem>
                <asp:ListItem Value="I">In Activo</asp:ListItem>


            </asp:DropDownList>


        </div>
    </div>

    <div class="row form-group">
        <div class="col-md-6">
            <a class="btn btn-default" href="../../Views/Administrador/Agregar_tematica.aspx">Volver</a>
            <asp:Button ID="guardar" class="btn btn-primary" AutoPostBack="true" runat="server" OnClick="Modificar" Text="Modificar" />
        </div>
    </div>





    </div>
    </div>

     <br />
  
    </div>
    </form>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
