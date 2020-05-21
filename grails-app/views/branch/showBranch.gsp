<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Branches</title>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <div id="page-content-wrapper">
                <div>
                <g:form class="form" role="form" autocomplete="off" id="deletefrm" url="[action:'deleteDetails',controller:'Customer2']" method="POST">
                    <g:hiddenField id="brnchid" name="brnchid" value="" />
                </g:form>
                    <div>
                        <div id="login">
                            <div style="padding-right: 15px; float: left">
                                <h3>List of Branches</h3>
                            </div>
                            <div style="padding-right: 15px; float: right">
                                <button title="Create Branch" style="padding-right: 16px" type="button" class="btn btn-success" onclick="myFunctionModalCreate();"><i class="fa fa-user-o"> Add Branch</i></button>
                            </div>
                        </div>
                        <br>
                        <br>
                        <table id="myTable" class="table table-hover table-bordered table-responsive">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Branch I.D #</th>
                                    <th>Branch Code #</th>
                                    <th>Branch Name</th>
                                    <th>Branch Address</th>
                                    <th>Branch Manager</th>
                                    <th>Branch Run Date</th>
                                    <th>Branch Operation Start Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead> 
                            <g:each in="${branchlist}" var="brnch">
                                <tr>
                                    <td>${brnch.id}</td>
                                    <td>${brnch.code}</td>
                                    <td>${brnch.name}</td>
                                    <td>${brnch.address}</td>
                                    <td>${brnch.branchManager}</td>
                                    <td><g:formatDate date="${brnch.runDate}" type="date"/></td>
                                    <td><g:formatDate date="${brnch.branchOpsStartDate}" type="date"/></td>
                                    <td>
                                        <g:link class="btn btn-info" action="editBranch" controller="Branch" id="${brnch.id}"><i class="fa fa-edit"></i></g:link>
                                        <button title="Delete User" style="padding-right: 16px" type="submit" class="btn btn-danger" onclick="myFunctionModalDelete('${brnch.id}');"><i class="fa fa-trash"></i></button>
                                    </td>
                                </tr>
                            </g:each>
                        </table>
                       <div>
                            <div class="modal fade" id="myModalCreate">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div>
                                            <g:uploadForm class="form" role="form" autocomplete="off" id="createfrm" name="createfrm" url="[action:'saveBranchDetails',controller:'Branch']" method="POST">
                                                <div class="card card-outline-secondary">
                                                    <div style="color: white;background-color: #28a745" class="card-header">
                                                        <h3 class="mb-0">New Branch Form</h3>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="info">
                                                            Complete the form below to create a new branch!
                                                        </p>
                                                        <div class="form-group">
                                                            <label for="bcode">Branch Code :</label> <input type="text" id="bcode" name="branchcode" required="true" class="form-control" placeholder="Branch Code"></input>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="bname">Branch Name : </label> <input class="form-control" type="text" id="bname" placeholder="Branch Name" name="name" value="" required="true"></input>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="badd">Branch Address : </label> <input class="form-control" placeholder="Branch Address" type="text" id="badd" name="branchaddress" required="=true"></input>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="bmanager">Branch Manager : </label> <input class="form-control" placeholder="Branch Manager" type="text" id="bmanager" name="branchmanager" required="true"></input>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="rdate"> Branch Run Date :</label> <input data-date-format="DD MMMM YYYY" required="true" id="rdate" type="date" name="rundate" class="form-control" value=""/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="bosdate">Branch Operation Start Date :</label> <input data-date-format="DD MMMM YYYY" required="true" id="bosdate" type="date" name="bosdate" class="form-control" value=""/>
                                                        </div>
                                                        <br/>
                                                        <br/>
                                                    </div>
                                                </div>
                                            </g:uploadForm>
                                        </div>
                                        <div class="modal-footer">
                                            <button style="float:right" class="btn btn-success" type="submit" onclick="myFunctionCreate();">Create</button>
                                            <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="container">
                            <div class="modal fade" id="myModalDelete">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Delete Branch?</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete this branch? This action cannot be undone.
                                        </div>
                                        <div class="modal-footer">
                                            <button style="float:right" class="btn btn-danger" onclick="myFunctionDelete();">Confirm</button>
                                            <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
