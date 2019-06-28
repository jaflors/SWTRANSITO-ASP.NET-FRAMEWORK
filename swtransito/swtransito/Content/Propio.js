$(function () {
    var $mybook = $('#mybook');
    var $mylibro = $('#mylibro');
    var $bttn_next = $('#next_page_button');
    var $bttn_prev = $('#prev_page_button');
    var $loading = $('#loading');
    var $mybook_images = $mybook.find('img');
    var $mylibro_images = $mylibro.find('img');
    var cnt_images = $mybook_images.length;
    var cnt_images2 = $mylibro_images.length;
    var loaded = 0;

    $mybook_images.each(function () {
        var $img = $(this);
        var source = $img.attr('src');
        $('<img/>').load(function () {
            ++loaded;
            if (loaded == cnt_images) {
                $loading.hide();
                $bttn_next.show();
                $bttn_prev.show();
                $mybook.show().booklet({
                    name: null,                            //  
                    width: 800,                             //  
                    height: 515,                             //   
                    speed: 600,                             //  
                    direction: 'LTR',                           //  
                    //  
                    next: $bttn_next,          			//  
                    prev: $bttn_prev,
                    closed: true,
                    overlays: false


                });
                Cufon.refresh();
            }
        }).attr('src', source);
    });

    $mylibro_images.each(function () {
        var $img = $(this);
        var source = $img.attr('src');
        $('<img/>').load(function () {
            ++loaded;
            if (loaded == cnt_images2) {
                $loading.hide();
                $bttn_next.show();
                $bttn_prev.show();
                $mylibro.show().booklet({
                    name: null,                            //  
                    width: 800,                             //  
                    height: 515,                             //   
                    speed: 600,                             //  
                    direction: 'LTR',                           //  
                    //  
                    next: $bttn_next,          			//  
                    prev: $bttn_prev,

                    overlays: false,


                });
               
            }
        }).attr('src', source);
    });


});


function entra(x) {
    $("#aqui").empty();
    $("#aqui").append("<img src='../../Content/IMG/" + x + ".jpg'/>");
    $("#myModal").modal();
}

function modal_ref(x) {
    $("#aqui").empty();
    $("#aqui").append("<img src='../../Content/IMG/" + x + ".jpg'/>");
    $("#myModal").modal();
}