<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <asset:stylesheet src="float-labels.css"/>
        <!-- Theme style -->
        <asset:stylesheet src="adminlte.css"/>
        <asset:stylesheet src="fontawesome-free/css/all.min.css" />
        <!-- Sweet Alert -->
        <asset:stylesheet src="sweetalert.css"/>
        
        
        <asset:javascript src="sweetalert.min.js"/>
        <asset:javascript src="sweetalert.js"/>
        <asset:javascript src="sweetalert2.js"/>
        <asset:javascript src="sweetAlertFunctions.js"/>
        <style>
            
            body {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
                background-image:url('${resource(dir: "images", file: "bankingbg.jpg")}');
                background-repeat: no-repeat;
                background-position: center;
                background-size: cover;
              }
              .login-form {
                              width: 385px;
                              margin: 30px auto;
              }
              .login-form form {        
                  margin-bottom: 15px;
                  background: rgb(255, 255, 255, 0.7);
                  box-shadow: 0px 10px 10px rgba(0, 0, 0, 0.5);
                  padding: 30px;
              }
              .login-form h2 {
                  margin: 0 0 15px;
                  font-family: Rockwell;
                  /*font-weight: bold;*/
                  color: #2980b9;
              }
              .form-control, .login-btn {
                  min-height: 38px;
                  border-radius: 2px;
              }
              .input-group-addon .fa {
                  font-size: 18px;
              }
              .login-btn {
                  font-size: 15px;
                  font-weight: bold;
              }
              .login-title{
                  border-bottom: 1px solid #000; 
              }
              .btn-outline-primary {
  color: #007bff;
  border-color: #007bff;
}

.btn-outline-primary:hover {
  color: #ffffff;
  background-color: #007bff;
  border-color: #007bff;
}

.btn-outline-primary:focus, .btn-outline-primary.focus {
  box-shadow: 0 0 0 0 rgba(0, 123, 255, 0.5);
}

.btn-outline-primary.disabled, .btn-outline-primary:disabled {
  color: #007bff;
  background-color: transparent;
}

.btn-outline-primary:not(:disabled):not(.disabled):active, .btn-outline-primary:not(:disabled):not(.disabled).active,
.show > .btn-outline-primary.dropdown-toggle {
  color: #ffffff;
  background-color: #007bff;
  border-color: #007bff;
}

.btn-outline-primary:not(:disabled):not(.disabled):active:focus, .btn-outline-primary:not(:disabled):not(.disabled).active:focus,
.show > .btn-outline-primary.dropdown-toggle:focus {
  box-shadow: 0 0 0 0 rgba(0, 123, 255, 0.5);
}
        </style>
    </head>
    <body>
        <div class="login-form">
            <g:form url="[controller:'main', action:'loginFunction']" method="POST" >
	    <form action="" method="post">
	    	<div class="login-title">
	    	        <center><img src="${resource(dir: "images", file: "mbphil-logo.jpg")}" alt="Bank Logo" class="img-size-50 img-square mr-3"/></center>
	        	<h2 class="text-center">Express-O Login</h2>
	        </div>
	        <br>
	        <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                        <label class="form-group has-float-label">
                            <input type="text" class="form-control" placeholder="Enter Username" name="username"required="required" autocomplete="off">				
                            <span>Username</span>
                        </label>
                    </div>
	        </div>
		<div class="form-group">
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        <label class="form-group has-float-label">
	                <input type="password" class="form-control" name="password" placeholder="Enter Password" required="required">				
                        <span>Password</span>
                        </label>
                    </div>
                </div>  
                <div class="form-group">
	            <button type="submit" class="btn btn-outline-primary login-btn btn-block"><i class="fas fa-sign-in-alt"></i> Login</button>
                    <button type="button" class="btn btn-outline-danger login-btn btn-block"  onclick="callForgotPassword();"><i class="fas fa-user-lock"></i> Forgot Password</button>

	        </div>
            </g:form>
	        
	</div>
        <script>
            function callForgotPassword(){
             var formId = "Please Select Account Type";
             console.log('id: ' + formId);
                forgotPassword();
            }
        </script>
    </body>
</html>
