<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="vista1.aspx.cs" Inherits="swtransito.Views.Administrador.vista1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Content/Css/Stilo.css" rel="stylesheet" />
    <%--   <link href="../../Content/booklet/jquery.booklet.1.1.0.css" rel="stylesheet" />--%>
    <link href="../../Content/src/jquery.booklet.latest.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="book_wrapper">
        <a id="next_page_button"></a>
        <a id="prev_page_button"></a>
        <div id="mybook" style="display: none;">
            <div class="b-load">
                <div style="margin-top: 45%">

                    <h1 style="font-size: xx-large;">¿Sabe instalar correctamente los Triángulos? </h1>
                </div>
                <div>
                    <img src="../../Content/IMG/1.jpg" alt="" onclick="entra(1)" />
                    <img src="../../Content/IMG/2.jpg" alt="" onclick="entra(2)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/3.jpg" alt="" onclick="entra(3)"/>
                    <h1>¿Dónde no debe ubicarlos?</h1>
                    <p class="card-subtitle">
                        No visible:
                    </p>
                    <p>
                        Si se coloca a 50 metros pero no es visible desde 100 metros antes, no dará tiempo a reaccionar. Lo importante es que siempre se vea anticipadamente.
                    </p>
                    <p class="card-subtitle">Muy Cerca: </p>
                    <p>
                        Si el conductor va distraído y tarda en reaccionar chocara con el triángulo y posiblemente con el automóvil antes de frenar. 

                    </p>
                </div>
                <div>
                    <img src="../../Content/IMG/4.jpg" alt="" onclick="entra(4)"/>
                    <img src="../../Content/IMG/5.jpg" alt="" onclick="entra(5)"/>

                </div>
                <div>
                    <img src="../../Content/IMG/6.jpg" alt="" onclick="entra(6)"/>
                    <img src="../../Content/IMG/7.jpg" alt="" onclick="entra(7)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/8.jpg" alt="" onclick="entra(8)"/>
                    <h1>¿Por qué es tan importante usar el cinturón de seguridad?</h1>
                    <p>
                        En caso de choque se producen dos impactos:
                    </p>
                    <div class="list-group">
                        <div class="list-group-item list-group-item-action">
                            Es el coque o colisión como tal.
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Es el producto  como reacción, es el choque de los ocupantes del vehículo con el vidrio del parabrisas e incluso fuera del auto. 
                        </div>
                    </div>


                </div>
                <div>
                    <p>
                        Una persona despedida fuera del vehículo tiene 5 veces más de probabilidad de morir que aquella con un choque con el manubrio del automóvil. 
                    </p>
                    <h1>¿Por qué sucede esto?</h1>
                    <p>En un choque o colisión el vehículo se detiene inesperada y violentamente por el primer impacto, mientras sus ocupantes siguen a la misma velocidad original que se desplazaban; ninguna fuerza actúa sobre ellos para detenerlos, hasta que se estrellan contra el volante, los vidrios o el panel de instrumentos; este es el segundo impacto. Un golpe de este tipo yendo a solo 50 km/hr. Equivale a caer de boca desde un segundo piso de un edificio.  </p>
                </div>
                <div>
                    <img src="../../Content/IMG/9.jpg" alt="" onclick="entra(9)"/>
                    <p>
                        En consecuencia, el uso del cinturón de seguridad es la medida más eficaz para reducir el número de fallecidos y lesionados por accidente de tránsito. 
                    </p>
                    <img src="../../Content/IMG/10.jpg" alt="" onclick="entra(10)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/11.jpg" alt="" onclick="entra(11)"/>
                    <img src="../../Content/IMG/12.jpg" alt="" onclick="entra(12)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/13.jpg" alt="" onclick="entra(13)"/>
                    <img src="../../Content/IMG/14.jpg" alt="" onclick="entra(14)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/15.jpg" alt="" onclick="entra(15)"/>
                    <img src="../../Content/IMG/16.jpg" alt="" onclick="entra(16)"/>
                </div>
                <div>
                    <img src="../../Content/IMG/17.jpg" alt="" onclick="entra(17)"/>
                    <img src="../../Content/IMG/18.jpg" alt="" onclick="entra(18)"/>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" id="aqui">
              
                
            </div>

        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.js"></script>
    <script src="../../Content/Propio.js"></script>
    <script> window.jQuery || document.write('<script src="../../Content/src/jquery-2.1.0.min.js"><\/script>') </script>
    <script src="../../Content/src/jquery.easing.1.3.js"></script>
    <script src="../../Content/src/jquery.booklet.latest.min.js"></script>
</asp:Content>
