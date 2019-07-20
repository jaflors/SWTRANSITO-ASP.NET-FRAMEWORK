<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="mis_resulltados.aspx.cs" Inherits="swtransito.Views.Estudiante.mis_resulltados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-horizontal form-label-left">

        <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1">
            <br />
            <div class="panel panel-default">
                <div class="panel-body">
    <h4><i class="fa fa-angle-right"></i>Resultados</h4>
    <hr>
    <asp:TextBox ID="getemail" runat="server" Visible="false"></asp:TextBox>
    <asp:GridView ID="gridmyresult" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" OnPageIndexChanging="gridmyresult_PageIndexChanging" PageSize="8">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Exam Nombre" NullDisplayText="no exam name" />
            <asp:BoundField DataField="fecha" DataFormatString="{0:M/d/yy}" HeaderText="Exam Fecha" NullDisplayText="There is some problem to find exam date" />
            <asp:BoundField DataField="total_preguntas" HeaderText="Total Preguntas" />
            <asp:BoundField DataField="estado" HeaderText="Resultado" />
            <asp:BoundField DataField="pre_buenas" HeaderText="Preguntas buenas" />
            <asp:BoundField DataField="pre_malas" HeaderText="Preguntas malas" />
        </Columns>
    </asp:GridView>





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
             <br />
    
  

    </div>
    </form>

   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
