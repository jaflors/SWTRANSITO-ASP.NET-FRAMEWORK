function mostrar() {
    var ar = $("form").serializeArray();
    var datas = {};
    $(ar).each(function (index, obj) { datas[obj.name] = obj.value; });
    //var datos = {
    //    "x": JSON.stringify($("form").serializeArray())
    //}
    
    var datos = {
        json: datas
    }
    datos = JSON.stringify(datos);
    $.ajax({
        type: "post",
        url: 'Encuesta.aspx/insertar',
        data: datos,
        contentType: "application/json; charset=utf-8",
        datatype: "json",
        cache: false,
        success: function (d) {
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