/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * 
 * RDM Customize sweetAlert Functions
 */
function errorSwal(message){
    swal({
        type: 'error',
        title: 'Oops...',
        text: message
    });
    // if you want to customize this swal function please go to https://sweetalert2.github.io/ for reference
}
function successSwal(message){
    swal({
        type: 'success',
        title: message,
        showConfirmButton: true
      });
}
function infoSwal(message,urlPage){
    swal({
        type: 'info',
        title: message,
        showConfirmButton: true
      }).then((result) => {
        if (result.value) {
            window.location.href = urlPage;
            
        }
      });
}
function confirmCancelSwal(){
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
            swal(
              'Submitted!',
              'Your request has been Submitted.',
              'success', 
            ).then((result) => {
                // do something here
                $('#idx').submit();
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
function forgotPassword(formId){
    Swal.mixin({
        input: 'text',
        confirmButtonText: 'Next &rarr;',
        showCancelButton: true,
        progressSteps: ['1', '2']
    }).queue([
        {
          title: 'Username',
          text: 'Please insert you username'
        },
        'Password',
    ]).then((result) => {
        if (result.value) {
          const answers = JSON.stringify(result.value)
          Swal.fire({
            title: 'All done!',
            html: `
              Your answers:
              <pre><code>${answers}</code></pre>
            `,
            confirmButtonText: 'Lovely!'
          })
        }
    })
}
