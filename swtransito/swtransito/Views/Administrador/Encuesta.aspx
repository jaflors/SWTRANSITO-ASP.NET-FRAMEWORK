<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="swtransito.Views.Administrador.Encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Content/Css/Stilo.css" rel="stylesheet" />
    <link href="../../Content/Css/fontawesome/all.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="wizard">
        <div class="wizard-inner">
            <div class="connecting-line"></div>
            <ul class="nav nav-tabs" role="tablist">

                <li role="presentation" class="active">
                    <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                        <span class="round-tab">
                            <i class="fas fa-tools"></i>
                        </span>
                    </a>
                </li>

                <li role="presentation" class="disabled">
                    <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                        <span class="round-tab">
                            <i class="glyphicon glyphicon-pencil"></i>
                        </span>
                    </a>
                </li>
                <li role="presentation" class="disabled">
                    <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                        <span class="round-tab">
                            <i class="fas fa-microchip"></i>
                        </span>
                    </a>
                </li>
            </ul>
        </div>

        <form role="form" class="form-panel">
            <div class="tab-content container">
                <div class="tab-pane active" role="tabpanel" id="step1">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">Calidad del programa respecto a la utilización del audio, imágenes estáticas y en movimiento, animática u otros.</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="1" name="Uno" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="2" name="Uno" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="3" name="Uno" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="4" name="Uno" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="5" name="Uno" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Sincronización entre los diferentes elementos utilizados en el programa</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="6" name="Dos" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="7" name="Dos" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="8" name="Dos" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="9" name="Dos" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="10" name="Dos" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Aporta instrucciones para el acceso y control de la información</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="11" name="Tres" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="12" name="Tres" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="13" name="Tres" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="14" name="Tres" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="15" name="Tres" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">Los efectos especiales son utilizados de forma coherente y eficaz</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="16" name="Cuatro" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="17" name="Cuatro" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="18" name="Cuatro" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="19" name="Cuatro" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="20" name="Cuatro" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Tamaño de los textos y gráficos utilizados adecuados para su observación correcta</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="21" name="Cinco" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="22" name="Cinco" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="23" name="Cinco" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="24" name="Cinco" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="25" name="Cinco" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="list-inline pull-right">
                        <li>
                            <button type="button" class="btn btn-primary next-step">Continuar</button></li>
                    </ul>
                </div>
                <div class="tab-pane" role="tabpanel" id="step2">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">Adecuación de los contenidos presentados con el curriculum oficial</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="26" name="Seis" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="27" name="Seis" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="28" name="Seis" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="29" name="Seis" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="30" name="Seis" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Los ejercicios y actividades están en relación con los contenidos desarrollados en el programa</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="31" name="Siete" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="32" name="Siete" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="33" name="Siete" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="34" name="Siete" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="35" name="Siete" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Da el programa información sobre los errores cometidos</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="36" name="Ocho" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="37" name="Ocho" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="38" name="Ocho" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="39" name="Ocho" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="40" name="Ocho" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">El programa fomenta el trabajo cooperativo  entre los estudiantes o el Autoaprendizaje.</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="41" name="Nueve" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="42" name="Nueve" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="43" name="Nueve" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="44" name="Nueve" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="45" name="Nueve" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">Los objetivos a alcanzar por el programa están claramente definidos por los diseñadores/productores.</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="46" name="Diez" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="47" name="Diez" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="48" name="Diez" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="49" name="Diez" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="50" name="Diez" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-8 control-label">Las estrategias metodológicas que se utilizan en el programa para el desarrollo de los contenidos son innovadoras</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="51" name="Once" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="52" name="Once" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="53" name="Once" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="54" name="Once" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="55" name="Once" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="list-inline pull-right">
                        <li>
                            <button type="button" class="btn btn-default prev-step">Atras</button></li>
                        <li>
                            <button type="button" class="btn btn-primary next-step">Continuar</button></li>
                    </ul>
                </div>
                <div class="tab-pane" role="tabpanel" id="step3">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">Hardware y periféricos que requiere funcionan correctamente al momento del uso: Facilidad de presencia en los centros escolares</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="56" name="Doce" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="57" name="Doce" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="58" name="Doce" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="59" name="Doce" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="60" name="Doce" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-md-8 control-label">El programa fomenta el trabajo cooperativo  entre los estudiantes o el Autoaprendizaje.</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="61" name="Trece" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="62" name="Trece" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="63" name="Trece" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="64" name="Trece" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="65" name="Trece" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">

                                <label class="col-md-8 control-label">Las capacidades y potencialidades tecnológicas que requieren en el ordenador funcionan acordemente con el programa.</label>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="66" name="Catorce" value="1" />
                                        1
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="67" name="Catorce" value="2" />
                                        2
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="68" name="Catorce" value="3" />
                                        3
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="69" name="Catorce" value="4" />
                                        4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="70" name="Catorce" value="5" />
                                        5
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="list-inline pull-right">
                        <li>
                            <button type="button" class="btn btn-default prev-step">Atras</button></li>
                        <li>
                            <button type="button" class="btn btn-primary btn-info-full" onclick="mostrar()">Guardar</button></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script src="../../Content/wizard.js"></script>
    <script src="../../Content/js/fontawesome/all.js"></script>
    <script src="../../Content/encu.js"></script>
</asp:Content>
