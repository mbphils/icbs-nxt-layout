function myFunctionDelete() {
    
    jQuery('#deletefrm').submit();
    
}
function myFunctionModalDelete(x) {

    $("#brnchid").val(x);
    $("#myModalDelete").modal();
    
}

function userDelete(x) {
    $("#usid").val(x);
    $("#myModalDeletes").modal();
}