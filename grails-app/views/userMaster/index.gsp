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
                            <th>Customer Type</th>
                            <th>Display Name</th>
                            <th>Branch</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${userlist}" var="us">
                                <tr>
                                    <td style="display:none;">${us.id}</td>
                                    <td></td>
                                    <td>${us.firstName} ${us.lastName}</td>
                                    <td>${us.branch?.address}</td>
                                    <td></td>
                                    <td>
                                        <g:link class="btn btn-info" action="edit" controller="UserMaster" id="${us.id}"><i class="fa fa-edit"></i></g:link>
                                        <button title="Delete User" style="padding-right: 16px" type="submit" class="btn btn-danger" onclick="userDelete('${us.id}');"><i class="fa fa-trash"></i></button>
                                        <button class="btn btn-outline-success btn-sm" onclick="validateButton();"> <span class="fas fa-eye"></span> View Details</button>
                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>Customer Type</th>
                            <th>Display Name</th>
                            <th>Branch</th>
                            <th>Status</th>
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
                        <button type="button" class="swalSample btn btn-outline-info btn-sm btn-block"  onclick="validateFields();"><i class="fas fa-save"></i> Create New User</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
    
</html>
