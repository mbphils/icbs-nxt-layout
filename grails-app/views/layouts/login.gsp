<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
        <asset:stylesheet src="float-labels.css"/>
        <!-- Theme style -->
        <asset:stylesheet src="adminlte.css"/>
        <asset:stylesheet src="style.css"/>
        <asset:stylesheet src="animate.css"/>
        <asset:stylesheet src="fontawesome-free/css/all.min.css" />
        <!-- Sweet Alert -->
        <asset:stylesheet src="sweetalert.css"/>
        
        
        <asset:javascript src="sweetalert.min.js"/>
        <asset:javascript src="sweetalert.js"/>
        <asset:javascript src="sweetalert2.js"/>
        <asset:javascript src="sweetAlertFunctions.js"/>
        <asset:stylesheet src="css/animate.css"/>
        
    </head>
    <body>
        <header class="masthead">
        <div class="container">
            <div class="row">
                <div class="col col-xs-12 text-md-left text-center">
                    <center>
                        <h1 class="brand-heading animated zoomin">Welcome</h1>
                        <img class="animated fadeInDown delay-1s" src="${resource(dir: "images", file: "logo.png")}" alt="Bank Logo" class="" width="150px"/>
                        <h4 class="animated fadeInDown delay-2s">Rural Bank of Sta. Ignacia</h4>
                    </center>
                </div>
                <div class="col ">
                   <div class="col-md-12">
                        <div class="card shadow mb-3 bg-white rounded ">
                            <div class="card-header font-weight-bold" style="color:#33b88d; text-align: center; font-family: 'Cabin', 'Helvetica Neue', Helvetica, Arial, sans-serif;">
                                <img class="animated fadeInDown delay-1s" src="${resource(dir: "images", file: "mbphil-logo.png")}" alt="Bank Logo" class="" width="50px"/>
                                <h4 class="animated faster fadeInDown delay-2s" >EXPRESS - O</h4>
                            </div>
                            <div class="card-body">
                              <h5 class="card-title"></h5>
                                <g:form url="[controller:'main', action:'loginFunction']" method="POST" >
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
                                        <button class="btn btn-outline-success btn-block">Login </button>
                                    </div>
                                    <g:hiddenField name="urlredirectInstance" id="urlredirectInstance" value="${urlRedirectInstance}" />
                                    <div class="form-group">
                                        <label>Forgot your password?</label>
                                        <a href="#"  onclick="callForgotPassword();">Click here</a>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                         <div class="div-footer">
                            <p class="intro-text animated faster fadeInDown delay-3s" style=" text-align: center; font-family: courier new; font-size: 14px;">Powered by MB Philippines inc. ICBS-NXT version 1.0</p>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </header>
<!--        <div class="login-form">
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
	        
	</div>-->
        <script>
            function callForgotPassword(){
             var formId = "Please Select Account Type";
             console.log('id: ' + formId);
                forgotPassword();
            }
            setInterval('window.location.reload()', 10000);
        </script>
    </body>
</html>
