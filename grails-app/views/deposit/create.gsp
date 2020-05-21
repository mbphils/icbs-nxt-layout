<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Open Deposit Account</title>
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
        <!-- Content Body for icbs - nxt -->
        <!-- rdmontana 03-25-2020 -->
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                        <h3 class="card-title">
                          <i class="fas fa-edit"></i>
                              Create Deposit
                        </h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Deposit Type <span>*</span></label>
                            <select class="custom-select">
                              <option>option 1</option>
                              <option>option 2</option>
                              <option>option 3</option>
                              <option>option 4</option>
                              <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Deposit Product <span>*</span></label>
                            <select class="custom-select">
                              <option>option 1</option>
                              <option>option 2</option>
                              <option>option 3</option>
                              <option>option 4</option>
                              <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Fixed Deposit Term Scheme <span>*</span></label>
                            <select class="custom-select">
                              <option>option 1</option>
                              <option>option 2</option>
                              <option>option 3</option>
                              <option>option 4</option>
                              <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-xl">
                                Search Customer
                            </button>
                        </div>
                        <div class="form-group">
                            <div class="card ">
                                <div class="card-header">
                                  <h3 class="card-title">Customer Details</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body p-0">
                                  <table class="table table-striped table-bordered">
                                    <tbody>
                                        <tr>
                                            <td width="30%"><strong>Customer ID</strong></td>
                                            <td width="70%">12345</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Gender</strong></td>
                                            <td> Male</td>
                                        </tr>
                                        <tr>
                                            <td width="40%"><strong>Age</strong></td>
                                            <td width="60%">24</td>
                                        </tr>
                                        <tr>
                                            <td width="40%"><strong>Customer Type</strong></td>
                                            <td width="60%">Individual</td>
                                        </tr>
                                        <tr>
                                            <td width="30%"><strong>Customer ID</strong></td>
                                            <td width="70%">12345</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Gender</strong></td>
                                            <td> Male</td>
                                        </tr>
                                        <tr>
                                            <td width="40%"><strong>Age</strong></td>
                                            <td width="60%">24</td>
                                        </tr>
                                        <tr>
                                            <td width="40%"><strong>Customer Type</strong></td>
                                            <td width="60%">Individual</td>
                                        </tr>
                                    </tbody>
                                  </table>
                                </div>
                                <!-- /.card-body -->
                              </div>
                        </div>
                    </div>
                    <!-- /.card -->
                  </div>
            </div>
            <div class="col-sm-3">
                <div class="action-bar card card-gray">
                    <div class="card-header">
                      <h3 class="card-title">Actions</h3>
                    </div>
                    <div class="card-body action-menu table-responsive pad">
                        <button type="button" class="btn btn-outline-success btn-sm btn-block"  onclick="validateButton();"><i class="fas fa-forward"></i> Continue to deposit form</button>
                        <button type="button" class="btn btn-outline-success btn-sm btn-block"><i class="fas fa-window-close"></i> Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <!--Search Customer modal -->
        <div class="modal fade" id="modal-xl">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Select Customer</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
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
                              <g:form id="idx" url="[action:'customerInquiry',controller:'customer']" method="POST">

                              </g:form>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();">Select</button></td>
                            </tr>
                            <tr>
                                <td>Individual</td>
                                <td>Juan Dela Cruz</td>
                                <td>Makati Branch</td>
                                <td><small class="badge badge-warning"><i class="fas fa-close"></i> Pending</small></td>
                              <g:form id="idx" url="[action:'customerInquiry',controller:'customer']" method="POST">

                              </g:form>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();">Select</button></td>
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
                <div class="modal-footer  justify-content-between">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
    </body>
</html>
