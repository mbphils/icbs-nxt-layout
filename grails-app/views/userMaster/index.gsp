<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>User Index</title>
        <script type="text/javascript">
            $(function () {
              $("#example1").DataTable();
              $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
              });
              
            });
        </script>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <g:form class="form" role="form" autocomplete="off" id="deletefrm" url="[action:'deleteUserDetails',controller:'UserMaster']" method="POST">
                        <g:hiddenField id="usid" name="usid" value="" />
                    </g:form>
                    <div class="card-header">
                      <h3 class="card-title">User Maintenance</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                      <table id="example1" class="table table-bordered table-striped table-responsive-md">
                        <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Display Name</th>
                            <th>Branch</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${userlist}" var="us">
                                <tr>
                                    <td>${us.id}</td>
                                    <td>${us.firstName} ${us.lastName}</td>
                                    <td>${us.branch?.address}</td>
                                    <td width="16%">
                                    <div class="row ">
                                        <div class="col-xs-4">
                                            <g:form id="userEditIdx" url="[action:'edit',controller:'userMaster']" method="POST">
                                                <g:hiddenField name="userEdit" value="${us.id}" />
                                            </g:form>
                                            <button class="btn btn-info" title="Edit User" data-toggle="tooltip" data-placement="bottom" type='button' onclick="editUserWarning();"><i class="fa fa-edit"></i></button>
                                        </div>
                                        <div class="col-xs-4">
                                            <g:form id="userDeleteIdx" url="[action:'deleteUserDetails',controller:'userMaster']" method="POST">
                                                <g:hiddenField name="userDel" value="${us.id}" />
                                            </g:form>
                                            <button title="Delete User" data-toggle="tooltip" data-placement="bottom" type="submit" class=" btn btn-danger" onclick="deleteUserWarning();"><i class="fa fa-trash"></i></button>
                                        </div>
                                        <div class="col-xs-4">
                                            <g:link title="Show User" data-toggle="tooltip" data-placement="bottom" action="show" class=" btn btn-success" 
                                            id="${us.id}"><i class="fa fa-eye"></i></g:link>
                                            
                                        </div>
                                    </div>
                                </td>
                                </tr>
                            </g:each>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>User ID</th>
                            <th>Display Name</th>
                            <th>Branch</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                      </table>
                    </div>
                    <div class="container">
                            <div class="modal fade" id="myModalDeletes">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Delete User?</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete this user? This action cannot be undone.
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
            <div class="col-sm-3">
                <div class="action-bar card card-gray">
                    <div class="card-header">
                      <h3 class="card-title">Actions</h3>
                    </div>
                    <div class="card-body table-responsive pad">
                         <g:form id="createUserIdx" url="[action:'create',controller:'userMaster']" ></g:form>
                        <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block"  onclick="createUserWarning();"><i class="fas fa-save"></i> Create New User</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>
