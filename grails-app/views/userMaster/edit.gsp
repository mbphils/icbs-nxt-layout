<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Edit User</title>
    </head>
    <body>
        <div>
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <g:form class="form" role="form" autocomplete="off" id="editfrm" url="[action:'editUserDetails',controller:'UserMaster']" method="POST">
                        <div class="card card-outline-secondary">
                            <div style="color: white;background-color: #008CBA" class="card-header">
                                <h3 class="mb-0">User Update Form</h3>
                            </div>
                            <div class="card-body">
                                <p class="info">
                                    Update the user details below.
                                </p>
                                <g:hiddenField name="usid" value="${us.id}" />
                                <div class="form-group">
                                <label for="uname">User Name : </label> <input class="form-control" type="text" id="uname" placeholder="User Name" name="userName" value="${us.userName}" required="true"></input>
                                </div>
                                <div class="form-group">
                                    <label for="pword">Password : </label> <input class="form-control" type="password" id="pword" placeholder="Password" name="password" required="true"></input>
                                </div>
                                <div class="form-group">
                                    <label for="fname">First Name : </label> <input class="form-control" type="text" id="fname" placeholder="First Name" name="firstName" value="${us.firstName}" required="true"></input>
                                </div>
                                <div class="form-group">
                                    <label for="lname">Last Name : </label> <input class="form-control" type="text" id="lname" placeholder="Last Name" name="lastName" value="${us.lastName}" required="true"></input>
                                </div>
                                <div class="form-group">
                                    <label for="birthday">Birth Date :</label> <input data-date-format="DD MMMM YYYY" required="true" id="birthday" type="date" name="birthDate" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label for="uaedate">User Access Expiry Date :</label> <input data-date-format="DD MMMM YYYY" required="true" id="uaedate" type="date" name="userAccessExpiryDate" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label for="upedate">User Password Expiry Date :</label> <input data-date-format="DD MMMM YYYY" required="true" id="upedate" type="date" name="userPasswordExpiryDate" class="form-control"/>
                                </div>
                                <div style="float:right">
                                    <button class="btn btn-info" id="myBtn" onclick="myFunctionModalEdit();">Update</button>
                                    <g:link class="btn btn-warning" action="displayCustomer" controller="Customer2">Go Back</g:link>
                                </div>
                            </div>
                        </div> 
                    </g:form>
                </div> 
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
