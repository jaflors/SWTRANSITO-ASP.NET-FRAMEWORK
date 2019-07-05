<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Administrador/Administrador.Master" AutoEventWireup="true" CodeBehind="Referente.aspx.cs" Inherits="swtransito.Views.Administrador.Referente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Content/Css/Stilo.css" rel="stylesheet" />
    <link href="../../Content/src/jquery.booklet.latest.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container mt">
        <div class="form-panel" style="padding: 20px">
            <div class="page-header" style="margin-top: 0;">
                <h1>¿Qué es el SOAT?</h1>
            </div>
            <h2><em class="text-info">SOAT: Seguro Obligatorio de Accidentes de Tránsito</em></h2>
            <div class="text-justify">
                El SOAT es un seguro obligatorio establecido por Ley con un fin netamente social. Su objetivo es asegurarla atención, de manera inmediata e incondicional, de las víctimas de accidentes de tránsito que sufren lesiones corporales y muerte.
            </div>
            <div class="text-danger">
                ¿Qué debo hacer en Caso de un Accidente?
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-justify">
                    <h3><strong>1.-Recomendaciones</strong></h3>
                    <p>
                        Ante un accidente de tránsito y si se cuenta con la cobertura del SOAT se seguirá el 
                        procedimiento que se indica en la parte pertinente, según sea el caso.
                    </p>
                    <p>
                        Conocida la ocurrencia del accidente de tránsito el propietario del vehículo, conductor, prestador del
                        servicio de transporte terrestre o la Policía Nacional del Perú están obligados a comunicar a la compañía
                        de seguros respectiva, la ocurrencia del accidente de tránsito, la que deberá actuar de inmediato haciéndose
                        cargo de los gastos médicos o gastos de sepelio de la víctima.
                    </p>
                    <p>
                        Las víctimas serán conducidas a los centros de salud públicos o privados más cercanos al lugar de la
                        ocurrencia del accidente. Se encuentra prohibido a los efectivos de la Policía Nacional y del Cuerpo General
                        de Bomberos Voluntarios del Perú, cobrar suma alguna por el traslado de las víctimas. Los centros de salud
                        públicos o privados atenderán obligatoriamente a las víctimas de accidente de tránsito, con cargo al SOAT,
                        cuya contratación será acreditada con el Certificado del Seguro y/o Calcomanía adherida al vehículo
                    </p>
                    <p>
                        Es indispensable contar con la Copia de la Denuncia Policial, en la que conste la ocurrencia del accidente de
                        tránsito. Este documento es otorgado por la dependencia de la Policía Nacional del Perú de la jurisdicción en
                        la que ocurrió el accidente de tránsito.
                    </p>
                    <p>
                        El pago de la indemnización por lesiones se efectuará directamente a la víctima y, en caso de imposibilidad de
                        ésta, a quien la represente, en base a la documentación sustentadora que presente.
                    </p>
                    <p>
                        El pago de gastos médicos también podrá realizarse vía reembolso, directamente al centro o centros de salud 
                        privados que acrediten haber atendido a la víctima. El reembolso se efectuará de acuerdo a los comprobantes de
                        pago que el centro de salud privado debidamente sustentados en la historia clínica y demás documentos que
                        acrediten la efectiva atención del paciente.
                    </p>

                    <p>
                        En caso de los centros públicos de salud, el reembolso se efectuará con sujeción al tarifario vigente que, 
                        para dicho efecto, apruebe el Sector correspondiente.
                    </p>
                    <h3><strong>2.- Requisitos: Muerte</strong></h3>
                    <p>
                        <em class="text-info">Copia de la Denuncia Policial </em>en el que conste la ocurrencia del accidente de 
                        tránsito. Este documento es otorgado por la dependencia de la Policía Nacional del Perú de la jurisdicción en
                        la que ocurrió el accidente de tránsito
                    </p>
                    <p>
                        <em class="text-info">Certificado de defunción de la víctima, Documento Nacional de Identidad del Familiar </em>que invoca la
                        condición de beneficiario del seguro y, que de ser el caso, certificado de matrimonio, certificado de
                        nacimiento o declaratoria de herederos u otros documentos que acrediten legalmente la calidad de beneficiario
                        del seguro.
                    </p>
                    <h3><strong>3.- ¿Quién Recibe la Indemnización por Muerte?</strong></h3>
                    <p>
                        Tendrán derecho a percibir la indemnización por muerte del ocupante o tercero no ocupante, las personas que a
                        continuación se señalan, en el siguiente orden de precedencia:
                    </p>

                </div>
                <div class="col-md-6 text-justify">
                    <div class="list-group">
                        <div class="list-group-item list-group-item-action">
                            El cónyuge sobreviviente.
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Los hijos menores de dieciocho (18) años, o mayores de dieciocho (18) años incapacitados de manera
                            total y permanente para el trabajo.
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Los hermanos menores de dieciocho (18) años, o mayores de dieciocho (18) años incapacitados de manera
                             total y permanente para el trabajo.
                        </div>
                        <div class="list-group-item list-group-item-action">
                            A falta de las personas indicadas precedentemente, la indemnización corresponderá al Fondo de Compensación
                              del Seguro Obligatorio de Accidentes de Tránsito, una vez transcurrido el plazo de la prescripción
                              liberatoria que indica la póliza de dicho seguro.
                        </div>
                    </div>
                    <p>
                        En caso que hubiera concurrencia de beneficiarios con el mismo derecho de precedencia para percibir la
                        indemnización por muerte, ésta se pagará por partes iguales entre todos los beneficiarios concurrentes del
                        mismo orden de precedencia.
                    </p>
                    <p>
                        Para efectos del pago de la respectiva indemnización, el solicitante deberá acreditar que no existen
                        beneficiarios con mayor prioridad que él para el pago de la indemnización, de acuerdo al orden de precedencia
                        estipulado, o que para su cobro, se cuenta con la autorización de ellos, en caso de existir. Bastará para dicha
                        acreditación, la presentación de una declaración jurada ante Notario o funcionario autorizado de la compañía
                        aseguradora.
                    </p>
                    <p>
                        Cumplido lo anterior, la Compañía de Seguros quedará liberada de toda responsabilidad si hubiera beneficiarios
                        con mejor derecho. En este evento, estos últimos no tendrán acción o derecho para perseguir al asegurador por
                        el pago de suma alguna.
                    </p>
                    <h3>
                        <strong>4.- Requisitos: Sepelio</strong>
                    </h3>
                    <p>
                        <em class="text-info">Copia de la Denuncia Policial </em>en el que conste la ocurrencia del accidente de 
                        tránsito. Este documento es otorgado por la dependencia de la Policía Nacional del Perú de la jurisdicción en
                        la que ocurrió el accidente de tránsito
                    </p>
                    <p>
                        <em class="text-info">Comprobantes de Pago </em>con valor tributario y contable que acredite el valor o precio
                        de los gastos en que se haya incurrido por el sepelio.
                    </p>
                    <h3><strong>5.- Requisitos: Invalidez Permanente o Incapacidad Temporal</strong></h3>
                    <p>
                        <em class="text-info">Copia de la Denuncia Policial </em>en el que conste la ocurrencia del accidente de
                        tránsito. Este documento es otorgado por la dependencia de la Policía Nacional del Perú de la jurisdicción en
                        la que ocurrió el accidente de tránsito.
                    </p>
                    <p>
                        <em class="text-info">Certificado médico expedido por el médico tratante </em>en caso de discrepancia, dictamen o resolución
                        administrativa del Instituto de Rehabilitación o laudo arbitral que decida o resuelva en definitiva sobre la
                        naturaleza y/o grado de la invalidez y/o incapacidad expedido por el Centro de Conciliación y Arbitraje de la
                        Superintendencia de Entidades Prestadoras de Salud u otro centro de solución de controversias especializado en
                        salud autorizado oficialmente, al que se sometan las partes en conflicto.
                    </p>
                    <p>
                        <em class="text-info">Comprobantes de Pago </em>con valor tributario y contable que acredite el valor o precio
                        de los gastos médicos en que se haya incurrido para el tratamiento de la víctima.
                    </p>
                </div>




            </div>
            <div class="book_wrapper">
                <a id="next_page_button"></a>
                <a id="prev_page_button"></a>
                <div id="mylibro" style="display: none;">
                    <div class="b-load">
                        <div>
                            <img src="../../Content/IMG/r_1.jpg" alt="" onclick="modal_ref('r_1')" />
                            <img src="../../Content/IMG/r_2.jpg" alt="" onclick="modal_ref('r_2')" />
                        </div>
                        <div>
                            <img src="../../Content/IMG/r_3.jpg" alt="" onclick="modal_ref('r_3')" />
                            <img src="../../Content/IMG/r_4.jpg" alt="" onclick="modal_ref('r_4')" />
                        </div>
                    </div>
                </div>
            </div>
            <h2><em class="text-info">PROCESO DE FOTODETECCIÓN </em></h2>
            <div class="row">
                <div class="col-md-6 text-justify">
                    <p>Las cámaras de foto detección, detectan en imagen y video las siguientes infracciones de tránsito:</p>
                    <div class="list-group">
                        <div class="list-group-item list-group-item-action">
                            Pasarse el semáforo en rojo
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Exceder los límites de velocidad permitidos (Los límites son determinados por el Código Nacional de Tránsito).
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Transitar en horario de Pico y Placa.
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Invadir la cebra peatonal
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Circular con el SOAT vencido
                        </div>
                        <div class="list-group-item list-group-item-action">
                            Circular con la Revisión Técnico Mecánica vencida. 
                        </div>
                    </div>
                    <p>
                        Las imágenes capturadas son revisadas, y es verificada y contrastada con la base de datos suministrada por el
                        RUNT sin son vehículos foráneos, y si son locales son contrastadas con el Registro Automotor, donde figuran
                        los datos del vehículo y la de su propietario. Además de aquellos que registren vencimiento del SOAT y
                        Revisión Técnico Mecánica.
                    </p>

                    <p>
                        Luego de la primera revisión, la foto detección pasa a ser revisada por los Agentes de Tránsito, única
                        autoridad en la vía para validar si hubo o no una posible infracción de tránsito. En caso de producirse una
                        infracción a las normas de tránsito, los agentes la firman y generan una orden de comparendo. 
                    </p>
                    <p>
                        Posterior a la firma por parte del agente, el comparendo se envía por medio de una empresa de correo
                        certificado al último propietario del vehículo registrado. En caso de ser un vehículo de transporte público o
                        al estar a nombre de una entidad financiera, se envía al propietario y a la empresa. El envío de la
                        fotodetección se realiza dentro de los tres (3) días siguientes a la detección, tal como lo dicta la norma.
                    </p>
                    <p>
                        La entrega o devolución de la Foto detección y su guía se ingresan en la base de datos de registro de 
                        infracciones de tránsito del Organismo de Tránsito.
                    </p>
                    <p>
                        El ciudadano que ha recibido una foto detección puede acceder a los descuentos de acuerdo con el artículo 136
                        del Código Nacional de Tránsito. En caso de que la persona que ha recibido la foto detección está en
                        desacuerdo, puede solicitar audiencia dentro de los 11 días hábiles siguientes al recibido de la Foto
                        detección.
                    </p>
                    <p>
                        En caso que no se puede llevar a cabo la notificación al ciudadano, se citará por medio del sitio web. Al no
                        poder realizar la notificación personal, después de 5 días publicados la citación, se procede a realizar la
                        notificación por aviso, la cual es fijada por el término de 5 días hábiles, con la advertencia de que la
                        notificación se considerará efectiva al finalizar el día siguiente del aviso.
                    </p>
                    <img style="width: 100%" src="../../Content/IMG/r_5.jpg" />
                    <h2><em class="text-info">Secretaría de Movilidad </em></h2>
                    <p>
                        La Secretaría de Movilidad es una dependencia del nivel central que tendrá como responsabilidad: Definir las
                        políticas de Movilidad, así como la planeación, diseño, coordinación, ejecución y evaluación de estrategias de
                        carácter informativo, corporativo, institucional y de movilización de la Administración Municipal.
                    </p>
                    <h2><em class="text-info">Revisión Técnico Mecánica.</em></h2>
                    <p>
                        Es un procedimiento unificado establecido para todos los vehículos automotores mediante el cual se verifican
                        las condiciones mecánicas, ambientales y de seguridad a través de la revisión técnico mecánica y de emisiones
                        contaminantes realizadas en los Centros de Diagnóstico Automotor legalmente constituidos para tal fin.
                    </p>
                    <p>
                        Según el Ministerio de Transporte, actualmente se encuentra suspendida la Ley Anti trámites, que establecía
                        que vehículos particulares debían realizar primera Revisión Técnico Mecánica a los seis años, según matrícula
                        inicial.
                    </p>
                    <p>
                        Mientras se resuelve cómo queda la norma, los organismos de tránsito del país realizarán pedagogía entre los
                        conductores.
                    </p>
                    <p>
                        Socializaremos una vez el Ministerio de Transporte oficialice medidas sobre el tema.
                    </p>
                    <h2><em class="text-info">Técnico mecánica  </em></h2>
                    <h3>Vigente:</h3>
                    <p>
                        <strong>Vehículo Particular: </strong>: La primera revisión se debe hacer a los 6 años y después cada año.
                    </p>
                    <p>
                        <strong>Vehículo Público: </strong>: La primera revisión se debe hacer a los 2 años y después cada año.
                    </p>
                    <p><strong>Motos: </strong>La primera revisión se debe hacer a los 2 años y después cada año.</p>
                    <p>Preguntas frecuentes</p>
                    <p class="text-info">¿En qué consiste la Revisión Técnico Mecánica de un vehículo?</p>
                    <p>
                        Es un procedimiento obligatorio que utilizan las autoridades colombianas para saber si los vehículos poseen
                        las condiciones mecánicas óptimas para poder circular por las vías públicas y privadas del país.
                    </p>
                    <p class="text-info">¿Cuál es la ley que rige este procedimiento?</p>
                    <p>
                        La ley 769 de 2002 del Código de Tránsito en sus artículos 28 y 50, 51, 52, 53 y 54 y las resoluciones 3500 de
                        2005 y 2200 de 2006 de los Ministerios de Medio Ambiente y Transporte.
                    </p>
                </div>
                <div class="col-md-6 text-justify">

                    <p class="text-info">¿Qué tipo de vehículos deben realizar este trámite?</p>
                    <p>
                        Todos los vehículos particulares, de servicio público y motocicletas que transiten por las calles y carreteras
                        colombianas.
                    </p>
                    <p class="text-info">
                        Y los propietarios de los vehículos con placas extranjeras que visitan el país, ¿qué deben
                        hacer?
                    </p>
                    <p>
                        Solo a partir del tercer mes de estadía en Colombia es que deben realizar la revisión Técnico Mecánica y de
                        Gases.
                    </p>
                    <p class="text-info">¿Qué evalúan en la Revisión Técnico Mecánica de un auto?</p>
                    <p>
                        En este diagnóstico se evalúan las siguientes variables: carrocería, estado de los frenos, dirección, 
                        suspensión, sistema de las señales visuales y audibles, llantas y el conjunto de vidrios de seguridad.
                    </p>
                    <p class="text-info">¿Y en la emisión de gases?</p>
                    <p>
                        Se chequea si el automotor cumple con las normas de emisiones contaminantes que establecen las
                        autoridades ambientales del país.
                    </p>
                    <p class="text-info">¿Qué evalúan en las motocicletas?</p>
                    <p>Evalúan los mismos ítems que se le revisan a los automóviles.</p>
                    <p class="text-info">¿Cómo se evalúan los gases de un vehículo?</p>
                    <p>
                        Por medio de varios procedimientos, se establece qué cantidad de gases contaminantes emite un vehículo por
                        medio de sus escapes de gases en velocidad mínima y crucero.
                    </p>
                    <p class="text-info">¿Cada cuánto tiempo debo realizar la Revisión Técnico Mecánica y de Gases de un vehículo?</p>
                    <p>
                        A partir de la emisión de la matrícula de tu vehículo por los primeros seis años, debes realizar la revisión
                        técnica mecánica cada dos años. Después de cumplido este periodo de tiempo, debes renovar la Revisión Técnico
                        Mecánica anualmente. Para las motos, debe realizarse este trámite por primera vez a los dos años de haber sido
                        expedida la matrícula, y luego anualmente. En caso de los vehículos de transporte público, debes realizarla 
                        cada año.
                    </p>
                    <p class="text-info">¿En dónde puedo realizar la revisión técnico mecánica y de gases de un automóvil?</p>
                    <p>
                        La Revisión Técnico Mecánica y de Gases de un automóvil debe realizarse en centros de diagnóstico automotriz
                        (CDA) autorizados por el Ministerio de Transporte y el Ministerio del Medio Ambiente.
                    </p>
                    <p class="text-info">¿Cuánto vale la Revisión Técnico Mecánica y de Gases de un vehículo?</p>
                    <p>
                        El valor varía según la ciudad donde vivas y el vehículo que tengas. Te recomendamos consultar las tarifas
                        vigentes en los centros de diagnóstico autorizados.
                    </p>
                    <p class="text-info">¿Qué documentos debo presentar en el momento de la Revisión Técnico Mecánica de mi vehículo?</p>
                    <p>Únicamente deben presentarse el SOAT y la matrícula del automóvil.</p>
                    <p class="text-info">¿Qué pasa si no realizo a tiempo la Revisión Técnico Mecánica y de Gases de mi vehículo?</p>
                    <p>
                        Si una autoridad de tránsito verifica que no tienes la Revisión Técnico Mecánica y de Gases vigente, puedes
                        incurrir en una multa de 15 salarios mínimos diarios legales vigentes y que esa misma autoridad ordene la
                        inmovilización de vehículo (o como se dice coloquialmente "llevar el carro a los patios").
                    </p>
                    <p class="text-info">
                        Si soy el causante de un accidente de tránsito y no tengo la Revisión Técnico Mecánica y de
                        gases vigentes, ¿Qué pasa?
                    </p>
                    <p>
                        Tendrías que pagar la multa o infracción correspondiente al accidente de tránsito si eres responsable del hecho
                        más el pago de este obligatorio trámite.
                    </p>
                    <p class="text-info">¿Cómo debo preparar mi vehículo antes de llevarlo a la Revisión Técnico-Mecánica y de Gases?</p>
                    <p>
                        Para que la revisión técnico mecánica y de gases salga bien, deberías chequear tu vehículo antes de llevarlo al
                        centro de diagnóstico autorizado. Por eso, te recomendamos que lleves tu vehículo a un taller de confianza
                        para que allá le revisen: El estado de las llantas (que no estén listas ni cortadas), que el equipo de
                        carretera esté completo y el extintor de incendios recargado, que el vehículo esté sincronizado, sin roturas
                        en el escape, aseado, con los cinturones de seguridad y los frenos en perfecto estado y que los vidrios no
                        estén rotos y que no tengan avisos o calcomanías que dificulten la visión.
                    </p>
                    <p class="text-info">¿Qué pasa si mi vehículo no pasa la Revisión Técnico Mecánica y de Gases?</p>
                    <p>
                        Si después de revisar el vehículo se comprueba que este no tiene las condiciones mecánicas y estructurales
                        adecuadas para su movilidad, debes acudir a un taller mecánico para que allí revisen y realicen las mejoras
                        recomendadas por el personal experto del CDA. Cuando esté listo, debes llevar de nuevo el vehículo al CDA para
                        que allí certifiquen que tu vehículo alcanzó unas condiciones óptimas de funcionamiento gracias al arreglo de
                        estos desperfectos y así puedas obtener en tus manos el certificado de Revisión Técnico Mecánica y de Gases.
                    </p>
                    <p class="text-info">¿Cuánto vale llevar de nuevo el vehículo al Centro de Diagnóstico Autorizado?</p>
                    <p>Antes de 15 días hábiles, no tiene costo.</p>
                    <p class="text-info">
                        ¿La Revisión Técnico Mecánica y de Gases es sólo válida en la ciudad donde realicé este
                        chequeo?
                    </p>
                    <p>No. La Revisión Técnico Mecánica es válida en todo el territorio nacional.</p>
                    <p class="text-info">
                        ¿Con solo la Revisión Técnico Mecánica y de Gases es suficiente para determinar que mi carro
                        o moto está en buenas condiciones?
                    </p>
                    <p>
                        No. Lo recomendable es que realices una revisión periódica del vehículo una o dos veces a la semana y no
                        descuides el estado de las llantas, el motor, los niveles de líquido de frenos y agua, entre otras
                        condiciones.
                    </p>
                    <p class="text-info">¿Por qué es importante realizar la Revisión Técnico Mecánica y de Gases de un vehículo?</p>
                    <p>
                        Para evaluar las condiciones mecánicas del vehículo en el que te transportas y de esta manera evitar posibles
                        accidentes de tránsito por causa de fallas mecánicas que puedan presentarse. Con su uso periódico, el vehículo
                        y sus partes presentan un desgaste normal y por eso es importante revisarlos, determinar su estado y corregir
                        posibles fallas. Un conductor preventivo siempre está al tanto de su vehículo, por su seguridad y la de los
                        demás.
                    </p>
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
