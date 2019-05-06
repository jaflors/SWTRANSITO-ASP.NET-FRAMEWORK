<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Principal/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="swtransito.Views.Principal.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="image-container set-full-height" style="background-image: url('../../lesser/images/ima.jpg')">

        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="green" id="wizardProfile">
                            <form  runat=server>
                                <!-- You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->

                                <div class="wizard-header">
                                    <h3 class="wizard-title">Crea tu perfil
		                        	</h3>
                                    <h5>Esta información nos permitirá saber más acerca de usted.</h5>
                                </div>
                                    <div class="tab-pane" id="about">
                                        <div class="row">
                                          
                                           
                                            <div class="col-sm-10 col-sm-offset-1">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">face</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Nombres<small>(required)</small></label>
                                                        <input id="Nombres" runat="server" name="firstname" type="text" class="form-control" required="required">
                                                    </div>
                                                </div>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">record_voice_over</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Apellidos<small>(required)</small></label>
                                                        <input id="Apellidos" runat="server" name="lastname" type="text" class="form-control" required="required">
                                                    </div>
                                                </div>
                                               

                                            </div>
                                            <div class="col-sm-10 col-sm-offset-1">

                                                 <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">record_voice_over</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Cedula<small>(required)</small></label>
                                                        <input id="cedula" runat="server" name="lastname" type="number" class="form-control" required="required">
                                                    </div>
                                                </div>


                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">email</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Email <small>(required)</small></label>
                                                        <input id="Correo" runat="server" name="email" type="email" class="form-control" required="required">
                                                    </div>
                                                </div>

                                                

                                            </div>


                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">vpn_key</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Contraseña<small>(required)</small></label>
                                                        <input id="Contrasena" runat="server" name="contraseña" type="password" class="form-control" required="required">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">vpn_key</i>
                                                    </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Repita Contraseña<small>(required)</small></label>
                                                        <input id="Recontrasena"  runat="server" name="recontraseña" type="password" class="form-control" required="required">
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>


                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        
                                        <asp:Button ID="Button1" CssClass="btn btn-fill btn-success btn-wd" runat="server" Text="Registrar" OnClick="Registrar" />
                                        <%--<asp:Button ID="Button1" align="center" Class='btn btn-fill btn-success btn-wd' Text="Registrar" OnClick="Registrar" runat="server" />--%>
                                    </div>


                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- wizard container -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!--  big container -->

        <div class="footer">
            <div class="container text-center">
            </div>
        </div>
    </div>
























</asp:Content>
