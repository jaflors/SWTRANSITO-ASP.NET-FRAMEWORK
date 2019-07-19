$(document).ready(function () {
    ensa();
});

function con_rta() {
    var table = $('#rtarta').DataTable({
        destroy: true,
        responsive: true,
        ajax: {
            method: "POST",
            url: 'MostrarRespuesta.aspx/consult_all',
            contentType: "application/json; charset=utf-8",
            datatype: "json",
            data: function (d) {
                return JSON.stringify(d);
            },
            dataSrc: "d.data"
        },
        columns: [
            { "data": "Nombres" },
            { "data": "nota" }


        ]
    });
}

function ensa() {
    $.ajax({
        type: "post",
        url: 'MostrarRespuesta.aspx/consult_all',
        contentType: "application/json; charset=utf-8",
        datatype: "json",
        cache: false,
        success: function (d) {
            try {
                if (d != "") {
                    var ds = JSON.parse(d.d);
                    Ingresart('taq', ds);
                }

            } catch{
                alert("noesta");
            }

        },
        error: function (xhr, request) {
            alert('No Valid Data' + request.responseText + "  " + xhr.responseText);
        }
    });
}

function Ingresart(id, tab) {
    var tes = '<table class="table table-striped"><thead><tr><th style = "text-align:center">Consecutivo</th><th style = "text-align:center" >Nombres</th><th style = "text-align: center" >Ver</th></tr></thead><tbody>';
    $.each(tab, function (i, value) {
        tes += "<tr>";
        tes += "<td>" + (i + 1) + "</td>"
        tes += "<td>" + tab[i].Nombres + "</td>"
        tes += "<td style = 'text-align:center' >";
        tes += "<a onclick='Modind(" + tab[i].IdPersona + ")' data-toggle='modal' data-target='ModalModModificar'  class='btn btn-link btn-warning btn-just-icon edit'><i class='fa fa-fw fa-edit' data-toggle='tooltip' data-placement='left' title='Modificar'></i></a>"
        tes += "</td>";
    });
    tes += "</tbody></table>";
    $("#" + id).after(tes);
}

function Modind(x) {
    var datos = {
        obj_eje: {
            id_pe:x
        }
    }
    datos = JSON.stringify(datos);
    $.ajax({
        type: "post",
        url: 'MostrarRespuesta.aspx/consult_id',
        data: datos,
        contentType: "application/json; charset=utf-8",
        datatype: "json",
        cache: false,
        success: function (d) {
            try {
                if (d != "") {
                    var ds = JSON.parse(d.d);
                    Ingresartm(ds);
                    $("#ModalModModificar").modal();
                }
                

            } catch{
                alert("noesta");
            }

        },
        error: function (xhr, request) {
            alert('No Valid Data' + request.responseText + "  " + xhr.responseText);
        }
    });
}

function Ingresartm(tab) {
    var tes = '<table class="table table-striped"><thead><tr><th style = "text-align:center">Errores</th><th style = "text-align:center" >Aciertos</th><th style = "text-align: center" >Nota</th><th style = "text-align: center" >Fecha</th></tr></thead><tbody>';
    $.each(tab, function (i, value) {
        tes += "<tr>";
        tes += "<td>" + tab[i].Erro + "</td>"
        tes += "<td>" + tab[i].Acierto + "</td>"
        tes += "<td>" + tab[i].Nota + "</td>"
        tes += "<td>" + tab[i].Fecha + "</td>"
 
    });
    tes += "</tbody></table>";
    $("#aqui_").append(tes);
}

