/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function branchValidation(){
    swal({
        title: 'Are you sure',
        text: "You want to continue?",
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Submit!'       
      }).then((result) => {
        if (result.value) {
            var branchCode = $('#bcode').val();
            var branchName = $('#bname').val();
            var branchManager = $('#bmanager').val();
            var branchRunDate = $('#rdate').val();
            var branchOperationStartDate = $('#bosdate').val();
            console.log("name : "+name);
            if (branchCode == "" || isNaN(branchCode)){
                swal({
                    type: 'error',
                    title: 'Error Occurred',
                    text: 'Branch Code must be filled out, and with numbers from 001-999.'
                });
                return true;
            }
            else if (branchName == "" || branchName >= 0){
                swal({
                    type: 'error',
                    title: 'Error Occurred',
                    text: 'Branch Name must be filled out and/or valid (e.g a or A)'
                });
                return true;
            }
            else if (branchManager == "" || branchManager >= 0){
                swal({
                    type: 'error',
                    title: 'Error Occurred',
                    text: 'Branch Manager must be filled out and/or valid (e.g a or A)'
                });
                return true;
            }
            else if (branchRunDate === "") {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Branch Run Date must be filled out.'
            });
            return false;
            }
            else if (branchOperationStartDate === "") {
            swal({
                type: 'error',
                title: 'Error Occurred',
                text: 'Branch Operation Start Date must be filled out.'
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
        text: "You want to edit a branch?",
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
        text: "You want to show this branch?",
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
        text: "You want to delete this branch?",
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
        text: "You want to create a new branch?",
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

