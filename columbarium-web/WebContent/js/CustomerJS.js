$('#modal1').openModal();

$('.modal-trigger').leanModal({
        dismissible: true, // Modal can be dismissed by clicking outside of the modal
        opacity: .5, // Opacity of modal background
        in_duration: 300, // Transition in duration
        out_duration: 200, // Transition out duration
        ready: function() { alert('Ready'); }, // Callback for Modal open
        complete: function() { alert('Closed'); } // Callback for Modal close
    }
);

<script>
// just for the demos, avoids form submit
jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
});
$( "#myform" ).validate({
        rules: {
                gender: {
                        required: true
                }
        }
});
</script>

