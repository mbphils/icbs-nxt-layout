<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Index</title>
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
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                          <h3 class="card-title">DataTable</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                          <table id="example1" class="table table-bordered table-striped table-responsive-md">
                            <thead>
                            <tr>
                              <th>Rendering engine</th>
                              <th>Browser</th>
                              <th>Platform(s)</th>
                              <th>Engine version</th>
                              <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                              <td>Trident</td>
                              <td>Internet
                                Explorer 4.0
                              </td>
                              <td>Win 95+</td>
                              <td> 4</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Trident</td>
                              <td>Internet
                                Explorer 5.0
                              </td>
                              <td>Win 95+</td>
                              <td>5</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Trident</td>
                              <td>Internet
                                Explorer 5.5
                              </td>
                              <td>Win 95+</td>
                              <td>5.5</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Trident</td>
                              <td>Internet
                                Explorer 6
                              </td>
                              <td>Win 98+</td>
                              <td>6</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Trident</td>
                              <td>Internet Explorer 7</td>
                              <td>Win XP SP2+</td>
                              <td>7</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Trident</td>
                              <td>AOL browser (AOL desktop)</td>
                              <td>Win XP</td>
                              <td>6</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Firefox 1.0</td>
                              <td>Win 98+ / OSX.2+</td>
                              <td>1.7</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Firefox 1.5</td>
                              <td>Win 98+ / OSX.2+</td>
                              <td>1.8</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Firefox 2.0</td>
                              <td>Win 98+ / OSX.2+</td>
                              <td>1.8</td>
                             <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Firefox 3.0</td>
                              <td>Win 2k+ / OSX.3+</td>
                              <td>1.9</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Camino 1.0</td>
                              <td>OSX.2+</td>
                              <td>1.8</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Camino 1.5</td>
                              <td>OSX.3+</td>
                              <td>1.8</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Netscape 7.2</td>
                              <td>Win 95+ / Mac OS 8.6-9.2</td>
                              <td>1.7</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Netscape Browser 8</td>
                              <td>Win 98SE+</td>
                              <td>1.7</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            <tr>
                              <td>Gecko</td>
                              <td>Netscape Navigator 9</td>
                              <td>Win 98+ / OSX.2+</td>
                              <td>1.8</td>
                              <td><button class="btn btn-outline-dark btn-sm" onclick="validateButton();"> View Details</button></td>
                            </tr>
                            
                            </tbody>
                            <tfoot>
                            <tr>
                              <th>Rendering engine</th>
                              <th>Browser</th>
                              <th>Platform(s)</th>
                              <th>Engine version</th>
                              <th>CSS grade</th>
                            </tr>
                            </tfoot>
                          </table>
                        </div>
                        <!-- /.card-body -->
                      </div>
                </div>
                <div class="col-sm-3">
                    <div class="action-bar card card-primary card-outline">
                        <div class="card-header">
                          <h3 class="card-title">Actions</h3>
                        </div>
                        <div class="card-body table-responsive pad">
                            <button type="button" class="swalSample btn btn-outline-info btn-sm btn-block"  onclick="validateFields();"><i class="fas fa-save"></i> Save</button>
                            <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                            <button type="button" class="btn btn-outline-info btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                        </div>
                    </div>
                </div>
            </div>
    </body>
    
</html>
