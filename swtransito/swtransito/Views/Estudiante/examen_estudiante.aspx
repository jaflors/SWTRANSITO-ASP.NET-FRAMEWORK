<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="examen_estudiante.aspx.cs" Inherits="swtransito.Views.Estudiante.examen_estudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 28px;
        }
    </style>


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-horizontal form-label-left">
        <br />
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="container">
                    <h2>Instrucciones</h2>
                   
                    <asp:Label ID="lb_instru" style="line-height: 15pt;" runat="server" ></asp:Label>
                    <hr />
                    <asp:TextBox ID="getstringuser" runat="server" Visible="false"></asp:TextBox>
                    <asp:GridView ID="gridview_examquestion" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="auto-style1" Width="793px">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>

                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("idpreguntas") %>' Visible="false"></asp:Label>
                                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("enunciado") %>'></asp:Label>
                                    <br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("opc1") %>' ID="option_one" runat="server" />
                                    <br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("opc2") %>' ID="option_two" runat="server" />
                                    <br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("opc3") %>' ID="option_three" runat="server" />
                                    <br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("opc4") %>' ID="option_four" runat="server" />
                                    <hr />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <asp:Button ID="btn_submit" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btn_submit_Click" />
                    <br />
                </div>
            </div>

        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm info">
                <div class="modal-content info">
                    <div class="modal-header info">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Mensaje</h4>
                    </div>
                    <div class="modal-body">
                        <p><%--<%=msj %>--%></p>
                    </div>
                    <div class="modal-footer">
                       <%-- <button type="button" class="btn btn-default" data-dismiss="modal">Aceptar</button>--%>
                    </div>
                </div>
            </div>
        </div>








    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    
    
    
   

      <script type="text/javascript">
        function resultado() {
            $('#myModal').modal('show');
           
      
        };

    </script>



</asp:Content>
