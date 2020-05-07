<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Check Deposit</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-9">
                <div class="card card-gray card-outline">
                    <div class="card-header">
                      <h3 class="card-title">Check Deposit Form</h3>

                      <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                          <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                          <i class="fas fa-times"></i></button>
                      </div>
                    </div>
                    <div class="card-body">
                        <div class="card">
                            
                            <div class="card-body">
                              <div class="tab-content">
                                <div class="active tab-pane" id="activity">
                                  <!-- Post -->
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                          <button class="btn btn-primary">Search Account</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="Username">
                                    </div>
                                    <h4>Account Details</h4>
                                    
                                    <div class="row">
                                       <div class="com-md-3"> 
                                            <div class="card card-gray card-outline">
                                                <div class="card-body box-profile">
                                                  <div class="text-center">
                                                        <img src="${resource(dir: "images", file: "avatar5.png")}" alt="user prof" class="profile-user-img img-fluid img-circle"/>
                                                  </div>
                                                  <h3 class="profile-username text-center">Nina Mcintire</h3>


                                                  <ul class="list-group list-group-unbordered mb-3">
                                                    
                                                  </ul>

                                                  <a href="#" class="btn btn-primary btn-block"><b>View Customer</b></a>
                                                </div>
                                                <!-- /.card-body -->
                                            </div>
                                       </div>
                                       <div class="col-md-9">
                                            <div class="card card-gray card-outline">
                                                <div class="card-header">
                                                    <h3 class="card-title">Information</h3>
                                                </div>
                                                <div class="card-body">
                                                <table class="table  table-hover table-sm">
                                                    <tbody>
                                                        <tr>
                                                            <td width="30%"><strong>Application ID</strong></td>
                                                            <td width="70%">12345</td>
                                                        <tr>
                                                        <tr>
                                                            <td width="30%"><strong>Status</strong></td>
                                                            <td width="70%"><small class="badge badge-success"><i class="fas fa-check"></i> Approved</small></td>
                                                        <tr>
                                                        <tr>
                                                            <td width="30%"><strong>Date of Birth</strong></td>
                                                            <td width="70%">03/21/1997</td>
                                                        <tr>
                                                        <tr>
                                                            <td width="30%"><strong>Total Released</strong></td>
                                                            <td width="70%">160,000.00</td>
                                                        <tr>
                                                    </tbody>
                                                </table>
                                                </div>
                                            </div>
                                       </div>
                                    </div>
                                    
                                    <button class="btn btn-block btn-outline-primary"><span class="fa fa-add"></span>Add Check</button>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Passbook Balance</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1" disabled>
                                    </div>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text">Amount</span>
                                        </div>
                                        <input type="number" class="form-control" placeholder="amount">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Check Total</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Reference</label>
                                        <input type="number" class="form-control" id="exampleInputEmail1" disable="disable">
                                    </div>
                                    
                                    
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="timeline">
                                  <!-- The timeline -->
                                  <div class="timeline timeline-inverse">
                                    <!-- timeline time label -->
                                    <div class="time-label">
                                      <span class="bg-danger">
                                        10 Feb. 2014
                                      </span>
                                    </div>
                                    <!-- /.timeline-label -->
                                    <!-- timeline item -->
                                    <div>
                                      <i class="fas fa-envelope bg-primary"></i>

                                      <div class="timeline-item">
                                        <span class="time"><i class="far fa-clock"></i> 12:05</span>

                                        <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                                        <div class="timeline-body">
                                          Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                                          weebly ning heekya handango imeem plugg dopplr jibjab, movity
                                          jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                                          quora plaxo ideeli hulu weebly balihoo...
                                        </div>
                                        <div class="timeline-footer">
                                          <a href="#" class="btn btn-primary btn-sm">Read more</a>
                                          <a href="#" class="btn btn-danger btn-sm">Delete</a>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- END timeline item -->
                                    <!-- timeline item -->
                                    <div>
                                      <i class="fas fa-user bg-info"></i>

                                      <div class="timeline-item">
                                        <span class="time"><i class="far fa-clock"></i> 5 mins ago</span>

                                        <h3 class="timeline-header border-0"><a href="#">Sarah Young</a> accepted your friend request
                                        </h3>
                                      </div>
                                    </div>
                                    <!-- END timeline item -->
                                    <!-- timeline item -->
                                    <div>
                                      <i class="fas fa-comments bg-warning"></i>

                                      <div class="timeline-item">
                                        <span class="time"><i class="far fa-clock"></i> 27 mins ago</span>

                                        <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

                                        <div class="timeline-body">
                                          Take me to your leader!
                                          Switzerland is small and neutral!
                                          We are more like Germany, ambitious and misunderstood!
                                        </div>
                                        <div class="timeline-footer">
                                          <a href="#" class="btn btn-warning btn-flat btn-sm">View comment</a>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- END timeline item -->
                                    <!-- timeline time label -->
                                    <div class="time-label">
                                      <span class="bg-success">
                                        3 Jan. 2014
                                      </span>
                                    </div>
                                    <!-- /.timeline-label -->
                                    <!-- timeline item -->
                                    <div>
                                      <i class="fas fa-camera bg-purple"></i>

                                      <div class="timeline-item">
                                        <span class="time"><i class="far fa-clock"></i> 2 days ago</span>

                                        <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

                                        <div class="timeline-body">
                                          <img src="http://placehold.it/150x100" alt="...">
                                          <img src="http://placehold.it/150x100" alt="...">
                                          <img src="http://placehold.it/150x100" alt="...">
                                          <img src="http://placehold.it/150x100" alt="...">
                                        </div>
                                      </div>
                                    </div>
                                    <!-- END timeline item -->
                                    <div>
                                      <i class="far fa-clock bg-gray"></i>
                                    </div>
                                  </div>
                                </div>
                                <!-- /.tab-pane -->

                                <div class="tab-pane" id="settings">
                                  <form class="form-horizontal">
                                    <div class="form-group row">
                                      <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                                      <div class="col-sm-10">
                                        <input type="email" class="form-control" id="inputName" placeholder="Name">
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                                      <div class="col-sm-10">
                                        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <label for="inputName2" class="col-sm-2 col-form-label">Name</label>
                                      <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputName2" placeholder="Name">
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
                                      <div class="col-sm-10">
                                        <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <label for="inputSkills" class="col-sm-2 col-form-label">Skills</label>
                                      <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <div class="offset-sm-2 col-sm-10">
                                        <div class="checkbox">
                                          <label>
                                            <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                                          </label>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="form-group row">
                                      <div class="offset-sm-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">Submit</button>
                                      </div>
                                    </div>
                                  </form>
                                </div>
                                <!-- /.tab-pane -->
                              </div>
                              <!-- /.tab-content -->
                            </div><!-- /.card-body -->
                          </div>
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
                        <button type="button" class="swalSample btn btn-outline-primary btn-sm btn-block"  onclick="validateFields();"><i class="fas fa-save"></i> Save</button>
                        <button type="button" class="btn btn-outline-primary btn-sm btn-block"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-outline-primary btn-sm btn-block"><i class="fas fa-backward"></i> Back</button>
                        <g:link class="btn btn-outline-primary btn-sm btn-block" controller="main" action="viewMoreInfo"><i class="fas fa-info-circle"></i> View More Information</g:link>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
