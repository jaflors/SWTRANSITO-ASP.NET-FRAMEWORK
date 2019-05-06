<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Principal/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="swtransito.Views.Principal.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="image-container set-full-height" style="background-image: url('../../lesser/images/ima.jpg')">

        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="wizard-container">
                       
                            <form class="login" runat="server" name="login">
                                <h2>Iniciar Sesion</h2>
                               
                                <img src="../../lesser/images/sena.jpg" />
                                <input id="Correo"  runat="server" type="text" name="usuario" placeholder="Usuario" class="bordes" autofocus />
                               <input id="Contrasena" runat="server"  type ="password" name="password" placeholder="Contraseña" class="bordes" />
                                <asp:Button ID="Button1" align="center" Class='btn btn-fill btn-success btn-wd' Text="Ingresar" OnClick="Iniciar" runat="server" />
                                <%--<input type="submit" value="Ingresar"></input>--%>
                                <asp:Label runat="server" ID="princesa"></asp:Label>
                                <ul>
                                </ul>

                            </form>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>






</asp:Content>
