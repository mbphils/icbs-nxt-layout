<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Branch Details</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title">Branch Details</h3>

                      <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                          <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                          <i class="fas fa-times"></i></button>
                      </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover table-responsive-sm">
                            <tbody>
                                <tr>
                                    <td width="30%"><strong>Branch Code</strong></td>
                                    <td width="70%">${brnchInstance.code}</td>
                                <tr>
                                <tr>
                                    <td width="30%"><strong>Branch Name</strong></td>
                                    <td width="70%">${brnchInstance.name}</td>
                                <tr>
                                <tr>
                                    <td width="30%"><strong>Branch Address</strong></td>
                                    <td width="70%">${brnchInstance.address}</td>
                                <tr>
                                <tr>
                                    <td width="30%"><strong>Branch Manager</strong></td>
                                    <td width="70%">${brnchInstance.branchManager}</td>
                                <tr>
                                <tr>
                                    <td width="30%"><strong>Branch Run Date</strong></td>
                                    <td width="70%">${brnchInstance.runDate}</td>
                                <tr>
                                <tr>
                                    <td width="30%"><strong>Branch Operation Start Date</strong></td>
                                    <td width="70%">${brnchInstance.branchOpsStartDate}</td>
                                <tr>
                            </tbody>
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
                        <g:form id="branchEditIdx" url="[action:'edit',controller:'branch']" method="GET">
                            <g:hiddenField name="brnchEdit" value="${brnchInstance.id}" />
                        </g:form>
                        <g:form id="branchDeleteIdx" url="[action:'deleteBranchDetails',controller:'branch']" method="GET">
                            <g:hiddenField name="brnchDel" value="${brnchInstance.id}" />
                        </g:form>
                        <button class="btn btn-outline-success btn-sm btn-block" type='button' onclick="editWarning();"><i class="fa fa-edit"></i> Update Record</button>
                        <button class="btn btn-outline-danger btn-sm btn-block" type="submit" onclick="deleteWarning();"><i class="fa fa-trash"></i> Delete Record</button>
                        <g:link class="btn btn-outline-success btn-sm btn-block" controller="branch" action="index"><i class="fas fa-backward"></i> Branch Index</g:link>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
