<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Agregar_Contenido_Imagen.aspx.cs" Inherits="swtransito.Views.Administrador.Agregar_Contenido_Imagen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <div class="row ">
        <br />
        <br />

        <div class="col-md-10 col-md-offset-1">
            <div class="form-panel">

                <form runat="server" class="form-horizontal form-label-left">
                    <h4><i class="fa fa-angle-right"></i><%= Session["nombre_tematica"].ToString() %></h4>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Ingresa la Imagen</label>
                        <div class="col-sm-10">

                            <asp:FileUpload ID="file_contenido" class="form-control round-form " runat="server" required="required" />

                        </div>
                    </div>



                    <asp:LinkButton runat="server" OnCommand="Guardar_imagen" CssClass="btn btn-primary btn-xs" CommandName="guardar"><i class="fa fa-floppy-o"></i>
                    Guardar</asp:LinkButton>




                    <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" style="border-left-width: 1px; margin-left: 5px;">Subir PDF</a>


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


                                        <td><%#Eval("Foto")%> </td>
                                        <td style="width: 216px">


                                            <asp:LinkButton runat="server" OnCommand="Unnamed_Command" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("idImagen")%>' CommandName="eliminar"><i class="fa fa-trash-o"></i>
                                                    Eliminar </asp:LinkButton>

                                        </td>



                                    </tr>


                                </ItemTemplate>
                            </asp:ListView>

                        </tbody>
                    </table>
                      <a class="btn btn-default"  href="../../Views/Administrador/Ver_tematica_admin.aspx" Style="border-left-width: 1px; margin-left: 5px;" >Volver</a>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Registrar Material de Apoyo</h4>
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
                                                                <label>Ingresa PDF</label>

                                                                <asp:FileUpload ID="file_PDF" class="form-control round-form " runat="server" required="required" />
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

                                    <asp:LinkButton ID="subir2" runat="server" OnCommand="Guardar_pdf" class="btn btn-primary" CommandName="guardar"> Registrar </asp:LinkButton>

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
            <br />
            <br />
          
            </div>
           


            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>
    <!-- /row -->

    
   



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    $(function(){
    
    
    
    });




</asp:Content>
