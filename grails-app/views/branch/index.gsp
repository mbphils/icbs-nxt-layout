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
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <g:form class="form" role="form" autocomplete="off" id="deletefrm" url="[action:'deleteUserDetails',controller:'UserMaster']" method="POST">
                        <g:hiddenField id="usid" name="usid" value="" />
                    </g:form>
                    <div class="card-header">
                        <h3 class="card-title"><i class="fas fa-table"></i> Branch Maintenance</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-3 col-6">
                              <!-- small box -->
                                <div class="small-box bg-info">
                                    <div class="inner">
                                        <h3>150</h3>

                                        <p>Savings Accounts</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-bag"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                          <!-- ./col -->
                            <div class="col-lg-3 col-6">
                              <!-- small box -->
                                <div class="small-box bg-success">
                                    <div class="inner">
                                        <h3>53</h3>

                                        <p>Time Deposits</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-stats-bars"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-6">
                              <!-- small box -->
                                <div class="small-box bg-warning">
                                    <div class="inner">
                                        <h3>44</h3>

                                        <p>Loans</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-add"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-6">
                              <!-- small box -->
                                <div class="small-box bg-danger">
                                    <div class="inner">
                                        <h3>65,000</h3>

                                        <p>Cash on Hand</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-pie-graph"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                          <!-- ./col -->
                        </div>
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
                        <g:form id="createIdx" url="[action:'create',controller:'Branch']" ></g:form>
                            <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block"  onclick="createWarning();"><i class="fas fa-save"></i> Create a new Branch</button>
                        <g:form id="branchEditIdx" url="[action:'editIndex',controller:'Branch']" ></g:form>
                            <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block"  onclick="editWarning();"><i class="fas fa-edit"></i> Edit a Branch</button>
                        <g:form id="branchShowIdx" url="[action:'show',controller:'branch']" ></g:form>
                            <button type="button" class="swalSample btn btn-outline-success btn-sm btn-block"  onclick="showWarning();"><i class="fas fa-eye"></i> View all Branches</button>
                        </div>
                    </div>
                </div>
            </div>
        </body>

</html>
