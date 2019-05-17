<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Agregar_Contenido_Imagen.aspx.cs" Inherits="swtransito.Views.Administrador.Agregar_Contenido_Imagen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="row ">
        <br />
        <br />

        <div class="col-md-10 col-md-offset-1">
            <div class="content-panel">

                <form runat="server" class="form-horizontal form-label-left">
                    <h4><i class="fa fa-angle-right"></i><%= Session["nombre_tematica"].ToString() %></h4>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Ingresa la Imagen</label>
                        <div class="col-sm-10">

                            <asp:FileUpload ID="file_contenido" class="form-control round-form " runat="server" required="required" />

                        </div>
                    </div>
                      
                        <asp:LinkButton runat="server" OnCommand="Guardar_imagen" style="border-left-width: 1px; margin-left: 5px;" CssClass="btn btn-primary btn-xs" CommandName="guardar"> Guardar </asp:LinkButton>
                    <table class="table table-striped table-advance table-hover">

                     
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

                                        <%-- <td><%#Eval("Nombre")%> </td>
                                        <td><%#Eval("Numero")%> </td>--%>
                                        <td style="width: 216px">


                                            <%-- <asp:LinkButton runat="server" OnCommand="Unnamed_Command" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("idTematica")%>' CommandName="eliminar"><i class="fa fa-trash-o"></i>
                                                    Eliminar </asp:LinkButton>--%>

                                            <%-- <asp:LinkButton CommandArgument='<%#Eval("idTematica")%>' CssClass="btn btn-primary btn-xs" OnCommand="traer_usuario" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Actualizar</asp:LinkButton>--%>

                                           
                                        </td>



                                    </tr>

                                </ItemTemplate>
                            </asp:ListView>

                        </tbody>
                    </table>

                </form>
            </div>
            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>
    <!-- /row -->












</asp:Content>
