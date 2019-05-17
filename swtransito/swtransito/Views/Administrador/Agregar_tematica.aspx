<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Agregar_tematica.aspx.cs" Inherits="swtransito.Views.Administrador.Agregar_tematica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="row ">
        <br />
        <br />

        <div class="col-md-10 col-md-offset-1">
            <div class="content-panel">
                <form runat="server" class="form-horizontal form-label-left">
                    <table class="table table-striped table-advance table-hover">
                        <h4><i class="fa fa-angle-right"></i>Modulos Registrados</h4>
                        <hr>
                        <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" style="border-left-width: 1px; margin-left: 5px;">Registrar Modulo</a>
                        <thead>

                            <tr>
                                <th><i class="fa fa-bullhorn"></i>Nombre</th>
                                <th><i class="fa fa-bookmark"></i>Numero</th>
                                <th><i class=" fa fa-edit"></i>Acción</th>

                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView runat="server" ID="list_tematicas">
                                <ItemTemplate>

                                    <tr>

                                        <td><%#Eval("Nombre")%> </td>
                                        <td><%#Eval("Numero")%> </td>
                                        <td style="width: 216px">


                                            <asp:LinkButton runat="server" OnCommand="Unnamed_Command" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("idTematica")%>' CommandName="eliminar"><i class="fa fa-trash-o"></i>
                                                    Eliminar </asp:LinkButton>

                                            <asp:LinkButton CommandArgument='<%#Eval("idTematica")%>' CssClass="btn btn-primary btn-xs" OnCommand="traer_usuario" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Actualizar</asp:LinkButton>

                                            <%-- data-toggle="modal" data-target="#myModal"--%>
                                        </td>


                                        <%-- <td><a href="basic_table.html#">Company Ltd</a></td>
                                  <td class="hidden-phone">Lorem Ipsum dolor</td>
                                  <td>12000.00$ </td>
                                  <td><span class="label label-info label-mini">Due</span></td>
                                  <td>
                                      <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                  </td>--%>
                                    </tr>

                                </ItemTemplate>
                            </asp:ListView>

                        </tbody>
                    </table>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Registrar Módulo</h4>
                                </div>
                                <div class="modal-body">
                                    <!-- Modal- body-->
                                    <div class="row">


                                        <div class="col-lg-12">
                                            <br />
                                            <div class="panel panel-default">
                                                <div class="panel-body">

                                                    <div class="row">
                                                        <div class="col-md-12 ">
                                                            <div class="form-group">
                                                                <label>Seleccione Tipo</label>

                                                                <asp:DropDownList ID="List_tipo" class="form-control round-form " runat="server" required="required"></asp:DropDownList>
                                                            </div>
                                                        </div>






                                                        <div class="col-md-12 ">
                                                            <div class="form-group">
                                                                <label>Nombre</label>

                                                                <asp:TextBox ID="txt_Nombres" class="form-control" runat="server" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 ">
                                                            <div class="form-group">
                                                                <label>Numero</label>
                                                                <asp:TextBox ID="txt_Numero" class="form-control" runat="server" required=""></asp:TextBox>

                                                            </div>
                                                        </div>






                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <asp:Button ID="guardar" class="btn btn-primary" AutoPostBack="true" runat="server" OnClick="Registrar" Text="Registrar" />

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>
    <!-- /row -->

  





</asp:Content>
