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
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title">
                        <i class="fas fa-edit"></i>
                            Update User
                      </h3>
                    </div>
                    <div class="card-body">
                        <legend>
                            <p class="h6">
                                Complete the form below to update branch!
                            </p>
                        </legend>
                            <g:form class="form" role="form" autocomplete="off" id="userIdx" url="[action:'editUserDetails',controller:'UserMaster']" method="POST">
                                <g:render template="form/editForm"/>
                            </g:form>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="action-bar card card-gray">
                    <div class="card-header">
                      <h3 class="card-title">Actions</h3>
                    </div>
                    <div class="card-body table-responsive pad">
                        <button type="button" class="btn btn-outline-success btn-sm btn-block"  onclick="userValidation();"><i class="fas fa-save"></i> Update User Details</button>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="userMaster" action="index"><i class="fas fa-backward"></i> User Index</g:link>
                    </div>
                </div>
            </div>
        </div>
        <div>
        </div>
    </body>
</html>
