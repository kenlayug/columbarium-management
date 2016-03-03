$(document).ready(function() {
    $('select').material_select();
});

$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal({dismissible: false});
});


    setInterval(function() {
        i++;
        $('a').attr('data-toast-inner', i);
    }, 1000);

    $('a').on('click', function(e) {
        setTimeout(function() {
            $('#toast').empty().html($('a[href*="toast"]').attr('data-toast-inner'));
        }, 500)
    })
