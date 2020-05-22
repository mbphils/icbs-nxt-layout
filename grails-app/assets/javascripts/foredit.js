function myFunctionEdit() {

    var bname = $();
    var bcode = $();
    var name = $('#bname').val();
    var code = $('#bcode').val();

    console.log("name : "+name);
        if (name === "" || name >= 0){
            alert("Name must be filled out and/or valid (e.g a or A)");
            return true;
        }
        else if (isNaN(code) || code === "" || code > 999 || code < 000) {
            alert("Code cannot be left blank, accept letters/special characters, and should be between 000 and 999 only");
            return false;
        }
        else {
            document.getElementById("editfrm").submit();
        }
}

function myFunctionModalEdit(x) {

$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModalEdit").modal();
  });
});
    
}




    