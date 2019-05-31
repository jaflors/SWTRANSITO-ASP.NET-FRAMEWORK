<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Ver_tematica_admin.aspx.cs" Inherits="swtransito.Views.Administrador.Ver_tematica_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="col-md-10 col-md-offset-1">
        <div class="row ">
            <h3><i class="fa fa-angle-right"></i> Modulos Registrados</h3>

            <br />
            <br />


            <!-- SERVER STATUS PANELS -->
            <form runat="server" class="form-horizontal form-label-left">
                <asp:ListView runat="server" ID="list_tematicas">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-4 mb">


                            <div class="darkblue-panel pn">
                      			<div class="darkblue-header">
						  		 <h5>No.<%#Eval("Numero")%>  <%#Eval("Nombre")%></h5>
                      			</div>
                      			<h1 class="mt"><i class="fa fa-folder-open fa-3x"></i></h1>
								
								<footer>
									<div class="centered">
										
                                        <asp:LinkButton class="btn btn-small btn-theme04" runat="server" OnCommand="Unnamed_Command"  CommandArgument='<%#Eval("idTematica")%>' CommandName="traer">Agregar Contenido</asp:LinkButton>

									</div>
								</footer>
                      		</div>


                           
                            <! --/grey-panel -->
                        </div>
                        <!-- /col-md-4-->
                    </ItemTemplate>
                </asp:ListView>
            </form>







        </div>
        <!-- /row -->

    </div>




















</asp:Content>

