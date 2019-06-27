<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="ver_preguntas.aspx.cs" Inherits="swtransito.Views.Administrador.ver_preguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-horizontal form-label-left">
        <br />
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="content-panel">
                <table class="table table-striped table-advance table-hover">
                    <h4><i class="fa fa-angle-right"></i>Preguntas registradas</h4>
                    <hr>
                   
                    <thead>

                        <tr>
                            <th><i class="fa fa-bullhorn"></i>Tematica</th>
                            <th><i class="fa fa-bookmark"></i>N° Pregunta</th>
                           <th><i class=" fa fa-edit"></i>Opción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="list_preguntas">
                            <ItemTemplate>

                                <tr>

                                  
                                    <td><%#Eval("nombre")%> </td>
                                    <td><%#Eval("cont")%> </td>
                                    <td style="width: 300px">

                                         <asp:LinkButton CommandArgument='<%#Eval("idpreguntas")%>' CssClass="btn btn-success btn-xs" OnCommand="ver_pregunta" runat="server" CommandName="traer"><i class="fa fa-eye"></i>
                                                    Ver</asp:LinkButton>
                                      

                                        <asp:LinkButton CommandArgument='<%#Eval("idpreguntas")%>' CssClass="btn btn-primary btn-xs" OnCommand="traer_examen" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Modificar</asp:LinkButton>

                                        



                                    </td>



                                </tr>

                            </ItemTemplate>
                        </asp:ListView>

                    </tbody>
                </table>
                <div class="row form-group">
                    <div class="col-md-6">
                        <a class="btn btn-twitter" style="margin-left: 10px;"
                            href="../../Views/Administrador/examen.aspx"><i class="fa fa-mail-reply "></i>Volver</a>

                    </div>
                </div>

            </div>
        </div>
    </form>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
