<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="examen.aspx.cs" Inherits="swtransito.Views.Administrador.examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-horizontal form-label-left">
        <br />
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="content-panel">
                <table class="table table-striped table-advance table-hover">
                    <h4><i class="fa fa-angle-right"></i>Registrar Examen</h4>
                    <hr>
                    <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" style="border-left-width: 1px; margin-left: 5px;">Registrar Examen </a>
                    <thead>

                        <tr>
                            <th><i class="fa fa-bullhorn"></i>Temática</th>
                            <th><i class="fa fa-bookmark"></i>Nombre Examen</th>
                            <th><i class=" fa fa-edit"></i>Fecha</th>
                            <th><i class=" fa fa-edit"></i>Opción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="list_examen">
                            <ItemTemplate>

                                <tr>

                                    <td><%#Eval("tematica")%> </td>
                                    <td><%#Eval("nombre")%> </td>
                                    <td><%#Eval("fecha")%> </td>
                                    <td style="width: 300px">


                                        <asp:LinkButton runat="server" OnCommand="Unnamed_Command" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("idexamen")%>' CommandName="eliminar"><i class="fa fa-trash-o"></i>
                                                    Eliminar</asp:LinkButton>

                                        <asp:LinkButton CommandArgument='<%#Eval("idexamen")%>' CssClass="btn btn-primary btn-xs" OnCommand="traer_examen" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Modificar</asp:LinkButton>

                                        <asp:LinkButton CommandArgument='<%#Eval("idexamen")%>' CssClass="btn btn-warning btn-xs" OnCommand="enviar_a_preguntas" runat="server" CommandName="traer"><i class="fa fa-plus"></i>
                                                    Add preguntas</asp:LinkButton>

                                        <asp:LinkButton CommandArgument='<%#Eval("idexamen")%>' CssClass="btn btn-success btn-xs" OnCommand="mostrar_preguntas" runat="server" CommandName="traer" Style="margin-left: 65px; margin-top: 3px;"><i class="fa fa-info-circle"></i>
                                                    Ver preguntas</asp:LinkButton>



                                    </td>



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
                                                        <asp:TextBox ID="txt_examname" runat="server" CssClass="form-control"  required="required"></asp:TextBox>
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




            </div>
        </div>
    </form>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
