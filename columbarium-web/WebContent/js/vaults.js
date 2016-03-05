
$('#modal1').openModal();

$('.modal-trigger').leanModal({
        dismissible: false, // Modal can be dismissed by clicking outside of the modal
        opacity: .5, // Opacity of modal background
        in_duration: 300, // Transition in duration
        out_duration: 200, // Transition out duration
        ready: function() { alert('Ready'); }, // Callback for Modal open
        complete: function() { alert('Closed'); } // Callback for Modal close
    }
);
$("input:radio").on("click", function() {
        $("input:text").attr("disabled", true);

        $(this).next("input").attr("disabled", false)
});

jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
});
$( "#myform" ).validate({
        rules: {
                field: {
                        required: true
                }
        }
});
