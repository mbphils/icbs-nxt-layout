<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>User Details</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title"><i class="fas fa-list-alt"></i> User Details</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover table-responsive-sm">
                            <tbody>
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
                                    <td width="30%"><strong>Branch</strong></td>
                                    <td width="70%">${userInstance.branch.name}</td>
                                <tr>
                            </tbody>
                        </table>
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
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> User Index</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="viewMoreInfo" id="${userInstance.id}"><i class="fas fa-info-circle"></i> View More Information</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="edit" id="${userInstance.id}"><i class="fas fa-backward"></i> Update Record</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> Update User Status</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> Reset Password</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> Reset Access Expiry Date</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> Assign Cash/COCI Pointer</g:link>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> Force Logout</g:link>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
