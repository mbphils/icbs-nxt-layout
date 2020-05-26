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
                        <g:form id="userIdx" class="form" role="form" autocomplete="off" name="createfrm" url="[action:'saveUserDetails',controller:'UserMaster']" method="POST">
                            <g:render template="form/form"/>
                            
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
                        <button type="button" class="btn btn-outline-success btn-sm btn-block"  onclick="userValidation();"><i class="fas fa-save"></i> Save New User</button>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> User Index</g:link>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
