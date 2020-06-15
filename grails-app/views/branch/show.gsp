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
                                    <th>Branch Code</th>
                                    <th>Branch Name</th>
                                    <th>Branch Address</th>
                                    <th>Branch Manager</th>
                                    <th>Branch Run Date</th>
                                    <th>Branch Start Date</th>
                                    <th>Actions</th>
                            
                                </tr>
                            </thead>
                        <g:each in="${branchlist}" var="brnch">
                            <tr>
                                <td>${brnch.code}</td>
                                <td>${brnch.name}</td>
                                <td>${brnch.address}</td>
                                <td>${brnch.branchManager}</td>
                                <td><g:formatDate date="${brnch.runDate}" format="MM/dd/yyyy"/></td>
                                <td><g:formatDate date="${brnch.branchOpsStartDate}" format="MM/dd/yyyy"/></td>
                                <td width="20%">
                                    <div class="row ">
                                        <div class="col-xs-4" style="margin: 0 auto;">
                                            <g:link action="viewMoreInfo" class="btn btn-outline-success btn-sm" id="${brnch.id}"><i class="fa fa-eye"></i> Show Branch</g:link>
                                        </div>
                                    </div>
                                </td>
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
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="branch" action="index"><i class="fas fa-backward"></i> Branch Index</g:link>
                        <!--<button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                    -->
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>
