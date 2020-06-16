<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>More Info.</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title"><i class="fas fa-info-circle"></i> Information</h3>
                    </div>
                    <div class="card-body">
                        <legend>
                            <h4>Additional Information</h4>
                        </legend>
                        <div class="row">
                          <div class="col-5 col-sm-3">
                            <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                              <a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">User Details</a>
                              <a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">Roles</a>
                            </div>
                          </div>
                          <div class="col-7 col-sm-9">
                            <div class="tab-content" id="vert-tabs-tabContent">
                              <div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                                    <table class="table table-hover table-responsive table-sm">
                                        <tbody>
                                            <tr>
                                                <td width="30%"><strong>Photo</strong></td>
                                                <td><img src="/icbs-nxt/userMaster/viewProductImage/${params.id}" width="180" height="180"></td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Username</strong></td>
                                                <td width="70%">${userInstance.userName}</td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>First Name</strong></td>
                                                <td width="70%">${userInstance.firstName}</td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Last Name</strong></td>
                                                <td width="70%">${userInstance.lastName}</td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Birthdate</strong></td>
                                                <td width="70%"><g:formatDate  format="MM/dd/yyyy" date="${userInstance.birthDate}" /></td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Date Created</strong></td>
                                                <td width="70%"><g:formatDate  format="MM/dd/yyyy" date="${userInstance.createdDate}" /></td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>User Access Expiry Date</strong></td>
                                                <td width="70%"><g:formatDate  format="MM/dd/yyyy" date="${userInstance.userAccessExpiryDate}" /></td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Password Expiry Date</strong></td>
                                                <td width="70%"><g:formatDate  format="MM/dd/yyyy" date="${userInstance.userPasswordExpiryDate}" /></td>
                                            <tr>
                                            <tr>
                                                <td width="30%"><strong>Branch</strong></td>
                                                <td width="70%">${userInstance.branch.name}</td>
                                            <tr>
                                        </tbody>
                                    </table>
                              </div>
                              <div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                                 Mauris tincidunt mi at erat gravida, eget tristique urna bibendum. Mauris pharetra purus ut ligula tempor, et vulputate metus facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas sollicitudin, nisi a luctus interdum, nisl ligula placerat mi, quis posuere purus ligula eu lectus. Donec nunc tellus, elementum sit amet ultricies at, posuere nec nunc. Nunc euismod pellentesque diam. 
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                  </div>
            </div>
            <div class="col-sm-3">
                <div class="action-bar card card-gray">
                    <div class="card-header">
                      <h3 class="card-title">Actions</h3>
                    </div>
                    <div class="card-body table-responsive pad">
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="show" id="${params.id}"><i class="fas fa-backward"></i> User Inquiry</button></g:link>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


