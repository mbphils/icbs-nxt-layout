/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function createUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You want to create a new User?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then((result) => {
        if (result.value) {
            
           $('#createUserIdx').submit();
        }
      });
}
function editUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You want to edit a User?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then((result) => {
        if (result.value) {
            
           $('#editUserIdx').submit();
        }
      });
}
function showUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You want to show a User?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then((result) => {
        if (result.value) {
            
           $('#userShowIdx').submit();
        }
      });
}

function userValidation() {
    swal({
        title: 'Are you sure',
        text: "You want to submit these details?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Submit!'       
    }).then((result) => {
        if (result.value) {
            var userName = $('#uname').val();
            var firstName = $('#fname').val();
            var lastName = $('#lname').val();
            var birthDate = $('#birthday').val();
            var userAccessExpiryDate = $('#uaedate').val();
            var userPasswordExpiryDate = $('#upedate').val();
        console.log("name : "+name);
        if (userName == ""){
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'User Name must be filled out and/or valid (e.g a or A)'
            });
            return true;
        }
        else if (firstName == "" || firstName >= 0) {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'First Name must be filled out and/or valid (e.g a or A)'
            });
            return false;
        }
        else if (lastName == "" || lastName >= 0) {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Last Name must be filled out and/or valid (e.g a or A)'
            });
            return false;
        }
        else if (lastName == "" || lastName >= 0) {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Last Name must be filled out and/or valid (e.g a or A)'
            });
            return false;
        }
        else if (birthDate === "") {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Birth Date must be filled out.'
            });
            return false;
        }
        else if (userAccessExpiryDate === "") {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'User Access Expiry Date must be filled out.'
            });
            return false;
        }
        else if (userPasswordExpiryDate === "") {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'User Password Expiry Date must be filled out.'
            });
            return false;
        }
        swal(
          'Submitted!',
          'Your request has been Submitted.',
          'success', 
        ).then((result) => {
            // do something here

            $('#userIdx').submit();
        });
        }else{
            swal(
              'Cancelled!',
              'Request has been Cancelled.',
              'error', 
            )
        }
      });
    
}



