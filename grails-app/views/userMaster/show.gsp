<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Branch Index</title>
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
                        <h3 class="card-title">Search Branch</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped table-responsive-md">
                            <thead>
                                <tr>
                                    <th>User Name</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Branch</th>
                                </tr>
                            </thead>
                        <g:each in="${userlist}" var="us">
                            <tr>
                                <td>${us.userName}</td>
                                <td>${us.firstName}</td>
                                <td>${us.lastName}</td>
                                <td>${us.branch.name}</td>
                            </tr>
                            </g:each>
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
                    <g:form id="createIdx" url="[action:'create',controller:'branch']" ></g:form>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="UserMaster" action="index"><i class="fas fa-backward"></i> User Index</g:link>
                        <!--<button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                    -->
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>
