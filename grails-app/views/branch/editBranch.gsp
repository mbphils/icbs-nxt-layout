<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Edit Branch</title>
    </head>
    <body>
        <div>
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <g:form class="form" role="form" autocomplete="off" id="editfrm" url="[action:'editBranchDetails',controller:'Branch']" method="POST">
                        <div class="card card-outline-secondary">
                            <div style="color: white;background-color: #008CBA" class="card-header">
                                <h3 class="mb-0">Branch Update Form</h3>
                            </div>
                            <div class="card-body">
                                <p class="info">
                                    Update the branch details below.
                                </p>
                                <g:hiddenField name="brnchid" value="${brnch.id}" />
                                <div class="form-group">
                                    <label for="bcode">Branch Code : </label> <input class="form-control" type="text" id="bcode" name="branchcode" value="${brnch.code}" required="true"></input>
                                </div>
                                <div class="form-group">
                                    <label for="bname">Branch Name : </label> <input class="form-control" type="text" id="bname" name="name" value="${brnch.name}"></input>
                                </div>
                                <div class="form-group">
                                    <label for="badd">Branch Address : </label> <input class="form-control" type="text" id="badd" name="address" value="${brnch.address}"></input>
                                </div>
                                <div class="form-group">
                                    <label for="bmanager">Branch Manager : </label> <input class="form-control" type="text" id="bmanager" name="branchManager" value="${brnch.branchManager}"></input>
                                </div>
                                <div class="form-group">
                                    <label for="rdate">Branch Run Date : </label> <input id="rdate" name="runDate" type="date" class="form-control" required="true"/>
                                </div>
                                <div class="form-group">
                                    <label for="bosDate">Branch Operation Start Date   : </label> <input id="cbday" name="bosDate" type="date" class="form-control" required="true"/>
                                </div>
                                <div style="float:right">
                                    <!--<button class="btn btn-info" id="myBtn" onclick="myFunctionModalEdit();">Update</button>-->
                                    <button class="btn btn-info" id="myBtn" type="submit" onclick="myFunctionEdit();">Update</button>
                                    <g:link class="btn btn-warning" action="showBranch" controller="Branch">Go Back</g:link>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="container">
                                <div class="modal fade" id="myModalEdit">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Login Credentials</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                            <g:if test="${flash.message}">
                                                <div class="alert alert-danger">${flash.message}</div>
                                            </g:if>
                                            <div class="form-group">
                                                <label for="username">Username : </label>
                                                <input placeholder="Please input username here.." type="text" class="form-control" name="username" id="uname" required="">
                                                <div class="invalid-feedback">Please enter your username</div>
                                                <label for="password">Password :</label>
                                                <input type="password" placeholder="Please input password here.." name="password" class="form-control" id="pword" required="" autocomplete="new-password">
                                                <div class="invalid-feedback">Please enter a password</div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button style="float:right" class="btn btn-info" onclick="myFunctionEdit();">Confirm</button>
                                            <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->   
                    </g:form>
                </div> 
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
