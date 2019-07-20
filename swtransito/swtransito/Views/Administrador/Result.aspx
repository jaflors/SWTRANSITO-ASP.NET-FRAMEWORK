<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="swtransito.Views.Administrador.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row ">
        <br />
        <br />

        <div class="col-md-10 col-md-offset-1">
            <div class="content-panel">
                <form runat="server" class="form-horizontal form-label-left">

                    <h4><i class="fa fa-angle-right"></i>Resultados</h4>
                    <hr>
                    <div class="container">
                        <label>Seleccione el examen </label>

                        
                        <asp:ListBox ID="List_exa" runat="server" CssClass="form-control"
                            OnSelectedIndexChanged="Button_Click" AutoPostBack="true"
                            Height="50" Width="400"></asp:ListBox>


                    </div>
                    <table id="tabla" visible="false" class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombres</th>
                                <th>preguntas buenas</th>
                                <th>preguntas malas</th>
                                <th>Fecha</th>
                                <th>Estado</th>

                                  </tr>
                                  </thead>
                                  <tbody>
                                      <asp:ListView runat="server" ID="list_result">
                                          <ItemTemplate>
                                              <tr>
                                                  <td><%#Eval("rank ")%> </td>
                                                  <td><%#Eval("nombres")%> </td>
                                                  <td><%#Eval("pre_buenas")%> </td>
                                                  <td><%#Eval("pre_malas")%> </td>
                                                  <td><%#Eval("fecha")%> </td>
                                                  <td><%#Eval("estado")%> </td>

                                              </tr>
                                          </ItemTemplate>
                                      </asp:ListView>
                                  </tbody>
                              </table>








                </form>

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
            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>










</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
