$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
});
//data pass from main form to modal
$(document).on("click", ".view-admin", function() {
    var adminid = $(this).data('id');
    $(".modal-body #showid").text(adminid);
    $('#view_contact').modal('show');
});