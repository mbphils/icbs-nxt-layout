<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Create User</title>
    </head>
    <body>
        <!-- Content Body for icbs - nxt -->
        <!-- rdmontana 03-25-2020 -->
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                        <h3 class="card-title">
                            <i class="fas fa-edit"></i>
                            Create User
                        </h3>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-tabs" id="custom-content-below-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="custom-content-below-home-tab" data-toggle="pill" href="#custom-content-below-home" role="tab" aria-controls="custom-content-below-home" aria-selected="true">User Details</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="custom-content-below-profile-tab" data-toggle="pill" href="#custom-content-below-profile" role="tab" aria-controls="custom-content-below-profile" aria-selected="false">User Role</a>
                            </li>
                        </ul>
                        <g:form class="form" role="form" autocomplete="off" id="createfrm" name="createfrm" url="[action:'saveUserDetails',controller:'UserMaster']" method="POST">
                            <div class="tab-content" id="custom-content-below-tabContent">
                                <div class="tab-pane fade show active" id="custom-content-below-home" role="tabpanel" aria-labelledby="custom-content-below-home-tab">
                                    <legend>Add User Details</legend>
                                    <div>
                                        <div>
                                            <div>
                                                <div> <div class="card card-outline-secondary">
                                                            <div class="card-body">
                                                                <p class="info">
                                                                    Complete the form below to create a new user!
                                                                </p>
                                                                <div class="form-group">
                                                                    <label for="uname">User Name : </label> <input class="form-control" type="text" id="uname" placeholder="User Name" name="userName" required="true"></input>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="pword">Password : </label> <input class="form-control" type="password" id="pword" placeholder="Password" name="password" required="true"></input>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="fname">First Name : </label> <input class="form-control" type="text" id="fname" placeholder="First Name" name="firstName" required="true"></input>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="lname">Last Name : </label> <input class="form-control" type="text" id="lname" placeholder="Last Name" name="lastName" required="true"></input>
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
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="custom-content-below-profile" role="tabpanel" aria-labelledby="custom-content-below-profile-tab">
                                    <legend>Add User Role</legend>
                                   
                                    Mauris tincidunt mi at erat gravida, eget tristique urna bibendum. Mauris pharetra purus ut ligula tempor, et vulputate metus facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas sollicitudin, nisi a luctus interdum, nisl ligula placerat mi, quis posuere purus ligula eu lectus. Donec nunc tellus, elementum sit amet ultricies at, posuere nec nunc. Nunc euismod pellentesque diam. 
                                </div>
                            </div>
                        </g:form>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <div class="col-sm-3">
                <div class="action-bar card card-gray">
                    <div class="card-header">
                        <h3 class="card-title">Actions</h3>
                    </div>
                    <div class="card-body table-responsive pad">
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"  onclick="userCreate();"><i class="fas fa-save"></i> Save</button>
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
