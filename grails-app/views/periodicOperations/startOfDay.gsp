<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Start of Day</title>
    </head>
    <body>
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
            Launch Default Modal
        </button>
        <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Periodic Operations</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <h3>Start of Day Process</h3>
                  <h5><Center>Performing Time Deposit Rollover</h5>
                  <div class="progress">
                      <div class="progress-bar active progress-bar-success progress-bar-striped" role="progressbar"
                      aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
                        60% Complete
                      </div>
                    </div>
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
    </body>
</html>
