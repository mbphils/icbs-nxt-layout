/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function createUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You you want to delete this data?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Submit!'
      }).then((result) => {
        if (result.value) {
            
           $('#createUserIdx').submit();
        }
      });
}
function editUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You you want to continue?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then((result) => {
        if (result.value) {
            
           $('#userEditIdx').submit();
        }
      });
}
function showUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You you want to show this branch?",
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
function deleteUserWarning(){
    swal({
        title: 'Are you sure',
        text: "You you want to delete this branch?",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Delete!'
      }).then((result) => {
        if (result.value) {
            
           $('#userDeleteIdx').submit();
        }
      });
}
function userValidation() {
    swal({
        title: 'Are you sure',
        text: "You you want to continue?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Submit!'       
    }).then((result) => {
        if (result.value) {
            var firstName = $('#fname').val();
            var lastName = $('#lname').val();
        console.log("name : "+name);
        if (firstName === "" || firstName >= 0){
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'First Name must be filled out and/or valid (e.g a or A)'
            });
            return true;
        }
        else if (lastName === "" || lastName >= 0) {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Last Name must be filled out and/or valid (e.g a or A)'
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



