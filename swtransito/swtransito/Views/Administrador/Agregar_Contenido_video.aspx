<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Agregar_Contenido_video.aspx.cs" Inherits="swtransito.Views.Administrador.Agregar_Contenido_video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="row ">
        <br />
        <br />

        <div class="col-md-10 col-md-offset-1">
            <div class="content-panel">

                <form runat="server" class="form-horizontal style-form">
                    <h4><i class="fa fa-angle-right"></i><%= Session["nombre_tematica"].ToString() %></h4>
                    <hr>
                    <label class="control-label col-lg-offset-2">Selecciona el código después del signo =   del link de YOUTUBE y da la opción pegar en el campo de texto.</label>

                    <div class="col-sm-10 col-lg-offset-2">
                        <img style="padding-left: 50px;"
                            src="../../imagenes/link.png" />
                    </div>
                    <div class="form-group">



                        <label class="col-sm-2 col-sm-2 control-label" style="width: 80px; margin-left: 7px;">
                            URL</label>
                        <div class="col-sm-10">


                            <asp:TextBox ID="txt_url" class="form-control round-form" runat="server" required="required"></asp:TextBox>

                        </div>
                    </div>

                    <asp:LinkButton runat="server" OnCommand="Guardar_video" Style="border-left-width: 1px; margin-left: 5px;" CssClass="btn btn-primary btn-xs" CommandName="guardar"> Guardar </asp:LinkButton>
                    <table class="table table-striped table-advance table-hover">


                        <thead>

                            <tr>
                                <th><i class="fa fa-bullhorn"></i>Ruta</th>

                                <th><i class=" fa fa-edit"></i>Acción</th>

                            </tr>
                        </thead>
                        
                        <tbody>
                            <asp:ListView runat="server" ID="list_imagen">
                                <ItemTemplate>
                                    
                                    <tr>

                                        
                                        <%--<td><%#Eval("Foto")%> </td>--%>
                                        <td style="width: 216px">


                                             <%--<asp:LinkButton runat="server" OnCommand="Unnamed_Command" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("idImagen")%>' CommandName="eliminar"><i class="fa fa-trash-o"></i>
                                                    Eliminar </asp:LinkButton>

                                             <asp:LinkButton CommandArgument='<%#Eval("idImagen")%>' CssClass="btn btn-primary btn-xs" OnCommand="traer_usuario" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
