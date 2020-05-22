/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function branchValidation(){
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
            var fname = $();
            var bcode = $();
            var name = $('#fname').val();
            var code = $('#bcode').val();

            console.log("name : "+name);
            if (name === "" || name >= 0){
                swal({
                    type: 'error',
                    title: 'Error Occurred',
                    text: 'Name must be filled out and/or valid (e.g a or A)'
                });
                return true;
            }
            else if (isNaN(code) || code === "" || code > 999 || code < 000) {
                //alert("Code cannot be left blank, accept letters/special characters, and should be between 000 and 999 only");
                swal({
                    type: 'error',
                    title: 'Error Occurred',
                    text: 'Code cannot be left blank, accept letters/special characters, and should be between 000 and 999 only'
                });
                return false;
            }
            swal(
              'Submitted!',
              'Your request has been Submitted.',
              'success', 
            ).then((result) => {
                // do something here
                
                $('#branchIdx').submit();
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
function editWarning(){
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
            
           $('#branchEditIdx').submit();
        }
      });
}
function showWarning(){
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
            
           $('#branchShowIdx').submit();
        }
      });
}
function deleteWarning(){
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
            
           $('#branchDeleteIdx').submit();
        }
      });
}
function createWarning(){
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
            
           $('#createIdx').submit();
        }
      });
}

