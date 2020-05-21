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
                            <tr>
                                <td>Individual</td>
                                <td>Reymart Montana</td>
                                <td>Muntinlupa Branch</td>
                                <td><small class="badge badge-success"><i class="fas fa-check"></i> Active</small></td>
                              <g:form id="idx" url="[action:'create',controller:'userMaster']" method="POST">

                              </g:form>
                              <td><button class="btn btn-outline-success btn-sm" onclick="validateButton();"> <span class="fas fa-eye"></span> View Details</button></td>
                            </tr>
                            <tr>
                                <td>Individual</td>
                                <td>Juan Dela Cruz</td>
                                <td>Makati Branch</td>
                                <td><small class="badge badge-warning"><i class="fas fa-close"></i> Pending</small></td>
                              <g:form id="idx" url="[action:'customerInquiry',controller:'customer']" method="POST">

                              </g:form>
                              <td><button class="btn btn-outline-success btn-sm" onclick="validateButton();"> <span class="fas fa-eye"></span> View Details</button></td>
                            </tr>
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
                    <!-- /.card-body -->
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
    </body>
    
</html>
