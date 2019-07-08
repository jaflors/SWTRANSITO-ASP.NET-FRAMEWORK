var nombre = ["AEROPUERTO", "ALTURA MAXIMA", "ANCHO MAXIMO", "ANGOSTAMIENTO HA AMBOS LADOS", "ANGOSTAMIENTO A LA DERECHA", "ANIMALES EN LA VIA", "BADEN", "CEDA EL PASO", "CIRCULACION EN AMBOS SENTIDOS", "CONTROL", "CROQUIS", "CRUCE", "CRUCE EN T", "CURVA CERRADA A LA DERECHA", "CURVA Y CONTRA CURVA A LA DERECHA", "CURVA A LA DERECHA", "DESCRIPCION DE GIROS", "DESNIVEL SEVERO", "DIRECCION OBLIGADA", "DOS SENTIDOS DE TRANSITO", "EMPALME LATERAL", "ESTACION DE SERVICIO", "ESTACIONAMIENTO PERMITIDO", "ESTACIONAMIENTO DE TAXI", "LARGO MAXIMO", "MANTENGA SU DERECHA", "MONTALLANTAS", "NO ADELANTAR", "NO BLOQUEAR CRUCE", "NO CAMBIAR DE PISTA", "NO GIRAR A LA IZQUIERDA", "NO GIRAR A LA DERECHA", "NO GIRAR EN U", "NOMENCLATURA GRAFICA", "PARADERO DE BUS", "PARE", "POLIDEPORTIVO", "POSTE DE REFERENCIA", "RUTA PANAMERICANA", "SEGURIDAD VIAL"];
var inten = 1;
var acer = 0;
var erro = 0;
var er = [];
//revisar facebook por que hace falta algunas cosas.
$(document).ready(function () {
    var lista = ["Aeropuerto", "Altura_maxima", "Ancho_maximo", "Angostamiento_ambos_lados", "Angostamiento_derecha", "Animales_via", "Baden", "Ceda_paso", "Circulacion_ambos", "Control", "Croquis", "Cruce", "Cruce_T", "Curva_cerrada_derecha", "Curva_contra_derecha", "Curva_derecha", "Descripcion_grios", "Desnivel_severo", "Direccion_obligada", "Dos_sentidos_transito", "Empalme_lateral", "Estacion_servicio", "Estacionamiento_permitido", "Estacionamiento_taxis", "Largo_maximo", "Mantenga_derecha", "Montallantas", "No_adelantar", "No_bloquear_cruce", "No_cambiar_pista", "No_girar_izquierda", "No_girar_derecha", "No_girar_u", "Nomenclatura_Geografica", "Paradero_bus", "Pare", "Polideportivo", "Poste_referencia", "Ruta_panamericana", "Seguridad_vial"];

    var posi = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39];
    posi = posi.sort(function () { return Math.random() - 0.5 });
    var ins = "";
    for (var i = 0; i < lista.length; i++) {
        ins += "<div class='col-md-4'><div class='showback'><div class='col-md-12'>";
        ins += "<img style='width: 100%; height:300px;' src='../../Content/IMG/Ejercicio/" + lista[posi[i]] + ".jpg' />";
        ins += "</div><div class='input-group bootstrap-timepicker'><input requered id='" + posi[i] + "'type='text' class='form-control timepicker-default mt'>";
        ins += "<span class='input-group-btn'><button class='btn btn-theme mt' type='button' onclick=validar('" + posi[i] + "')><i class='fa fa-check-circle'></i></button>";
        ins += "</div></div></div>";
    }
    $("#insertar").append(ins);


});
function validar(x) {

    var comp = $("#" + x).val().toUpperCase();
    inten++;
    if (nombre[x] !== comp) {
        erro++;
        $("#" + x).val("");
        $("#" + x).addClass('err');
        encuentra(x);
    } else {
        acer++;
        $("#" + x).attr("readonly", "readonly");
    }

}
function validar_final() {
  
    if (acer < 0) {
        alert("Por favor termine todo");
    } else {
        generar();
    }
}

//se llena donde cometio el error
function encuentra(x) {
    var clave;
    if (encuentra2(nombre[x])) {
        var nuevo = {};
        nuevo[nombre[x].toString()] = 1;
        er.push(nuevo);
    } else {
        for (var i = 0; i < er.length; i++) {
            var vari = er[i];
            for (clave in vari) {
                if (vari.hasOwnProperty(clave)) {
                    if (clave === nombre[x]) {
                        vari[nombre[x]] = vari[clave] + 1;
                    }
                }
            }
        }

    }
}

function encuentra2(busca) {
    var arre = [];
    var bus = true;
    //true es por que no esta repetido
    // false es por que si obviamente
    for (var i = 0; i < er.length; i++) {
        var vari = er[i];
        for (clave in vari) {
            if (vari.hasOwnProperty(clave)) {
                arre.push(clave);
            }
        }
    }
    for (var i = 0; i < arre.length; i++) {
        if (arre[i] === busca) {
            bus = false;
            break;
        }
    }
    return bus;

}
//resive un parametro deadline
const getRemaintime = deadline => {
    let now = new Date(),
        remaintime = (new Date(deadline) - now + 1000) / 1000,  //esto devuelve un dato en milesegundos
        //remaintime = deadline,  //esto devuelve un dato en milesegundos
        remainsec = ('0' + Math.floor(remaintime % 60)).slice(-2),
        remainmin = ('0' + Math.floor(remaintime / 60 % 60)).slice(-2);
    return {
        remaintime,
        remainsec,
        remainmin
    }
};


const countdown = (deadline, elem, finalmensaje) => {
    const el = document.getElementById(elem);
    const actu = setInterval(() => {
        let t = getRemaintime(deadline);
        el.innerHTML = `${t.remainmin} Minutos:${t.remainsec} Segundos`;
        if (t.remaintime <= 1) {
            clearInterval(actu);
            $('input').attr("readonly", "readonly");
            generar();
        }
    }, 1000)
};
function fecha_segui() {
    var cau = new Date();
    cau.setMinutes(cau.getMinutes() + 5);
    return cau;
}

countdown(fecha_segui(), 'reloj', 'terminar');

function Ingresar_dato(acer, erro, not) {

    var datos = {
        obj_eje: {
            acerto: acer,
            error: erro,
            nota: not
        }
    }
    datos = JSON.stringify(datos);
    $.ajax({
        type: "post",
        url: 'Ejercicio.aspx/Ingreso',
        data: datos,
        contentType: "application/json; charset=utf-8",
        datatype: "json",
        cache: false,
        success: function (response) {
            try {
                

            } catch{
                alert("noesta");
            }

        },
        error: function (xhr, request) {
            alert('No Valid Data' + request.responseText + "  " + xhr.responseText);
        }
    });

}

function generar() {

    var n = (acer * 100) / 40;
    var nota = (n * 100) / 5;
    var arc = "<h3> Correctas: <span class='badge bg-success'>" + acer + "</span></h3>";
    arc += "<h3> Incorrectas: <span class='badge bg-danger'>" + erro + "</span></h3>";
    arc += "<h3> Nota: <span class='badge bg-success'>" + erro + "</span></h3>";
    $("#aqui").empty();
    $("#aqui").append(arc);
    $("#myModal").modal();
    Ingresar_dato(acer, erro, nota);
}
function Reinicio() {
    acer = 0;
    erro = 0;
    location.reload();
}

