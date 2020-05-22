function myFunctionCreate() {

    var fname = $();
    var bcode = $();
    var name = $('#fname').val();
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
            document.getElementById("createfrm").submit();
        }
}

function myFunctionModalCreate(x) {

    $("#custid").val(x);
    $("#myModalCreate").modal();
    
}

function goBack() {
    
    location.replace("showBranch.gsp");
}

function userCreate() {

    var fname = $();
    var lname = $();
    var firstname = $('#fname').val();
    var lastname = $('#lname').val();

    console.log("name : "+name);
        if (firstname === "" || firstname >= 0){
            alert("First Name must be filled out and/or valid (e.g a or A)");
            return false;
        }
        else if (firstname === "" || firstname >= 0) {
            alert("First Name must be filled out and/or valid (e.g a or A)");
            return false;
        }
        else {
            document.getElementById("createfrm").submit();
        }
}

function goBack() {
    
    location.replace("showBranch.gsp");
}