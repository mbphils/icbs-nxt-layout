<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Customer Details</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title">Customer Details</h3>

                      <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                          <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                          <i class="fas fa-times"></i></button>
                      </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="com-sm-3"> 
                                 <div class="card card-gray card-outline">
                                     <div class="card-body box-profile">
                                       <div class="text-center">
                                             <img src="${resource(dir: "images", file: "avatar5.png")}" alt="user prof" class="profile-user-img img-fluid img-circle"/>
                                       </div>
                                       <h3 class="profile-username text-center">Dela Cruz, Juan Mercado</h3>
                                       <p class="profile-username text-center"><small><i>Last Name, First Name Middle Name</i></small></p>


                                       <ul class="list-group list-group-unbordered mb-3">

                                       </ul>
                                     </div>
                                     <!-- /.card-body -->
                                 </div>
                            </div>
                            <div class="col-sm-7">
                                 <div class="card card-gray card-outline">
                                    <div class="card-body p-0">
                                        <table class="table table-bordered table-sm">
                                            <tbody>
                                                <tr>
                                                    <td width="40%"><strong>Customer ID</strong></td>
                                                    <td width="60%">12345</td>
                                                <tr>
                                                <tr>
                                                    <td width="40%"><strong>Gender</strong></td>
                                                    <td width="60%"> Male</td>
                                                <tr>
                                                <tr>
                                                    <td width="40%"><strong>Date of Birth</strong></td>
                                                    <td width="60%">03/21/1997</td>
                                                <tr>
                                                <tr>
                                                    <td width="40%"><strong>Age</strong></td>
                                                    <td width="60%">24</td>
                                                <tr>
                                                <tr>
                                                    <td width="40%"><strong>Customer Type</strong></td>
                                                    <td width="60%">Individual</td>
                                                <tr>
                                                <tr>
                                                    <td width="40%"><strong>Record Status</strong></td>
                                                    <td width="60%"><small class="badge badge-success"><i class="fas fa-check"></i> Active</small></td>
                                                <tr>
                                            </tbody>
                                        </table>
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
                        <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block"  onclick="validateFields();"><i class="fas fa-save"></i> Save</button>
                        <button type="button" class="btn btn-outline-success btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="customer" action="index"><i class="fas fa-info-circle"></i> Search Customer</g:link>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

        