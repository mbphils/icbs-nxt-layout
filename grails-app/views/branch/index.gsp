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
                                <td><g:formatDate date="${brnch.runDate}" type="date"/></td>
                                <td><g:formatDate date="${brnch.branchOpsStartDate}" type="date"/></td>
                                <td width="16%">
                                    <div class="row ">
                                        <div class="col-xs-4">
                                            <g:form id="branchEditIdx" url="[action:'edit',controller:'branch']" method="POST">
                                                <g:hiddenField name="brnchEdit" value="${brnch.id}" />
                                            </g:form>
                                            <button class="btn btn-info" title="Edit Branch" data-toggle="tooltip" data-placement="bottom" type='button' onclick="editWarning();"><i class="fa fa-edit"></i></button>
                                        </div>
                                        <div class="col-xs-4">
                                            <g:form id="branchDeleteIdx" url="[action:'deleteBranchDetails',controller:'branch']" method="POST">
                                                <g:hiddenField name="brnchDel" value="${brnch.id}" />
                                            </g:form>
                                            <button title="Delete Branch" data-toggle="tooltip" data-placement="bottom" type="submit" class=" btn btn-danger" onclick="deleteWarning();"><i class="fa fa-trash"></i></button>
                                        </div>
                                        <div class="col-xs-4">
                                            <g:link title="Show Branch" data-toggle="tooltip" data-placement="bottom" action="show" class=" btn btn-success" 
                                            id="${brnch.id}"><i class="fa fa-eye"></i></g:link>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </g:each>
                            <tfoot>
                                <tr>
                                    <th>Branch Code</th>
                                    <th>Branch Name</th>
                                    <th>Branch Address</th>
                                    <th>Branch Manager</th>
                                    <th>Branch Run Date</th>
                                    <th>Branch Start Date</th>
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
                    <g:form id="createIdx" url="[action:'create',controller:'branch']" ></g:form>
                        <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block" onclick="createWarning();"><i class="fas fa-edit"></i> Create New Branch</button>
                        <!--<button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                    -->
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>
