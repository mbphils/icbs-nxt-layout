<!DOCTYPE html>

<html ><!--<![endif]-->
	<head>
        <meta charset="UTF-8" />
        <title><g:layoutTitle /></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
            <!-- Tell the browser to be responsive to screen width -->
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Font Awesome -->
            <asset:stylesheet src="fontawesome-free/css/all.min.css" />
            <!-- Ionicons -->
            <asset:stylesheet src="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
            <!-- Tempusdominus Bbootstrap 4 -->
            <asset:stylesheet src="tempusdominus-bootstrap-4.min.css"/>
            <!-- iCheck -->
            <asset:stylesheet src="icheck-bootstrap.min.css"/>
            <!-- JQVMap -->
            <asset:stylesheet src="jqvmap.min.css"/>
            <!-- Theme style -->
            <asset:stylesheet src="adminlte.css"/>
            <!-- overlayScrollbars -->
            <asset:stylesheet src="OverlayScrollbars.min.css"/>
            <!-- Daterange picker -->
            <asset:stylesheet src="daterangepicker.css"/>
            <!-- summernote -->
            <asset:stylesheet src="summernote-bs4.css"/>
            <!-- Google Font: Source Sans Pro -->
            <asset:stylesheet src="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"/>
            <!-- Float Labels -->
            <asset:stylesheet src="float-labels.css"/>
            <!-- DataTables -->
            <asset:stylesheet src="dataTables.bootstrap4.css"/>
            <!-- Sweet Alert -->
            <asset:stylesheet src="sweetalert.css"/>
            <!-- datePicker -->
            <asset:stylesheet src="datepicker3.css"/>


            <!-- Javascript -->
            <!-- jQuery -->
            <asset:javascript src="jquery.min.js"/>
            <!-- jQuery UI 1.11.4 -->
            <asset:javascript src="jquery-ui.min.js"/>
            <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
            <script>
              $.widget.bridge('uibutton', $.ui.button)
            </script>
            <!-- Bootstrap 4 -->
            <asset:javascript src="bootstrap.bundle.min.js"/>
            <!-- ChartJS -->
            <asset:javascript src="Chart.min.js"/>
            <!-- Sparkline -->
            <asset:javascript src="sparkline.js"/>
            <!-- JQVMap -->
            <asset:javascript src="jquery.vmap.min.js"/>
            <asset:javascript src="jquery.vmap.usa.js"/>
            <!-- jQuery Knob Chart -->
            <asset:javascript src="jquery.knob.min.js"/>
            <!-- daterangepicker -->
            <asset:javascript src="moment.min.js"/>
            <asset:javascript src="daterangepicker.js"/>
            <!-- Tempusdominus Bootstrap 4 -->
            <asset:javascript src="tempusdominus-bootstrap-4.min.js"/>
            <!-- Summernote -->
            <asset:javascript src="summernote-bs4.min.js"/>
            <!-- overlayScrollbars -->
            <asset:javascript src="jquery.overlayScrollbars.min.js"/>
            <!-- AdminLTE App -->
            <asset:javascript src="adminlte.js"/>
            <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
            <asset:javascript src="dashboard.js"/>
            <!-- AdminLTE for demo purposes -->
            <asset:javascript src="demo.js"/>
            <!-- DataTables -->
            <asset:javascript src="jquery.dataTables.js"/>
            <asset:javascript src="dataTables.bootstrap4.js"/>
            <!-- Sweet Alert -->
            <asset:javascript src="sweetalert.min.js"/>
            <asset:javascript src="sweetalert.js"/>
            <asset:javascript src="sweetalert2.js"/>
            <asset:javascript src="sweetAlertFunctions.js"/>
            <!-- datePicker -->
            <asset:javascript src="bootstrap-datepicker.js"/>
            <!-- Popper JS -->
            <asset:javascript src="popper.min.js"/>
            <!-- Branch JS -->
            <asset:javascript src="branch.js"/>
            <g:layoutHead/>
            
	</head>
	<body class="hold-transition sidebar-mini layout-fixed sidebar-collapse">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
              <!-- Left navbar links -->
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                  <img src="${resource(dir: "images", file: "logo.png")}" alt="Bank Logo" class="img-size-50 img-circle mr-3"/>
                  <span>SIGNABANK (Rural Bank of Sta. Ignacia) - Tarlac Branch</span>
                </li>
              </ul>
              <!-- Right navbar links -->
              <ul class="navbar-nav ml-auto">
                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown">
                  <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-comments"></i>
                    <span class="badge badge-danger navbar-badge">3</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                        <img src="${resource(dir: "images", file: "mbphil-logo.jpg")}" alt="Bank Logo" class="img-size-50 img-circle mr-3"/>
                        <div class="media-body">
                          <h3 class="dropdown-item-title">
                            Brad Diesel
                            <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                          </h3>
                          <p class="text-sm">Call me whenever you can...</p>
                          <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                        </div>
                      </div>
                      <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                        <img src="${resource(dir: "images", file: "mbphil-logo.jpg")}" alt="Bank Logo" alt="User Avatar" class="img-size-50 img-circle mr-3"/>
                        <div class="media-body">
                          <h3 class="dropdown-item-title">
                            John Pierce
                            <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                          </h3>
                          <p class="text-sm">I got your message bro</p>
                          <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                        </div>
                      </div>
                      <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                        <img src="${resource(dir: "images", file: "mbphil-logo.jpg")}" alt="Bank Logo" alt="User Avatar" class="img-size-50 img-circle mr-3"/>
                        <div class="media-body">
                          <h3 class="dropdown-item-title">
                            Nora Silvester
                            <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                          </h3>
                          <p class="text-sm">The subject goes here</p>
                          <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                        </div>
                      </div>
                      <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                  </div>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown">
                  <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-bell"></i>
                    <span class="badge badge-warning navbar-badge">15</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">15 Notifications</span>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                      <i class="fas fa-envelope mr-2"></i> 4 new messages
                      <span class="float-right text-muted text-sm">3 mins</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                      <i class="fas fa-users mr-2"></i> 8 friend requests
                      <span class="float-right text-muted text-sm">12 hours</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                      <i class="fas fa-file mr-2"></i> 3 new reports
                      <span class="float-right text-muted text-sm">2 days</span>
                    </a>
                    <div class="dropdown-divider"></div>
<!--                    <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>-->
                      <g:link class="dropdown-item dropdown-footer" controller="authentication" action="logout">Logout</g:link>
                  </div>
                </li>
<!--                <li class="nav-item">
                  <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
                    <i class="fas fa-th-large"></i>
                  </a>
                </li>-->
              </ul>
            </nav>
            <!-- /.navbar -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
              <!-- Brand Logo -->
              <a href="index3.html" class="brand-link">
                <img src="${resource(dir: "images", file: "mbphil-logo.jpg")}" alt="Bank Logo" class="brand-image img-circle elevation-3"
                     style="opacity: .8"/>
                <span class="brand-text font-weight-light">Express - O</span>
              </a>

              <!-- Sidebar -->
              <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                  <div class="image">
                  <img src="${resource(dir: "images", file: "avatar5.png")}" alt="Bank Logo" alt="User Avatar" class="img-size-50 img-circle mr-3"/>
                  </div>
                  <div class="info">
                    <a href="#" class="d-block">System User</a>
                  </div>
                </div>
                    
                <!-- Sidebar Menu -->
                <nav class="mt-2">
                  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <br>
                    <li class="nav-item has-treeview menu-open">
                      <a href="#" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                          Dashboard
                        </p>
                      </a>
                    </li>
                    <!--<li class="nav-item">
                      <a href="pages/widgets.html" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                          Widgets
                          <span class="right badge badge-danger">New</span>
                        </p>
                      </a>
                    </li>-->
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                          Layouts
                          <i class="fas fa-angle-left right"></i>
<!--                          <span class="badge badge-info right">6</span>-->
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <g:link class="nav-link" controller="branch" action="showBranch">Branches</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="forms">Forms</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="error404">404 Error Page</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="error500">500 Error Page</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="index">Index Page</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="cashDeposit">Cash Deposit</g:link>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="main" action="checkDeposit">Check Deposit</g:link>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-user-circle"></i>
                        <p>
                          Customer
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item has-treeview">
                            <a href="pages/charts/chartjs.html" class="nav-link">
                              <p>New Customer
                                <i class="right fas fa-angle-left"></i>
                              </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                  <a href="#" class="nav-link">
                                    <i class="far fa-dot-circle nav-icon"></i>
                                    <p>Individual</p>
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a href="#" class="nav-link">
                                    <i class="far fa-dot-circle nav-icon"></i>
                                    <p>Partnership</p>
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a href="#" class="nav-link">
                                    <i class="far fa-dot-circle nav-icon"></i>
                                    <p>Corporation</p>
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a href="#" class="nav-link">
                                    <i class="far fa-dot-circle nav-icon"></i>
                                    <p>Cooperative</p>
                                  </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                          <g:link class="nav-link" controller="customer" action="index"><p>Search Customer</p></g:link>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-piggy-bank"></i>
                        <p>
                          Deposits
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <g:link class="nav-link" controller="deposit" action="create"><p>Open Deposit Account</p></g:link>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/flot.html" class="nav-link">
                            <p>Deposit Account Amendment</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Deposit Account Inquiry</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Close Deposit Account</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Passbook Maintenance</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>CTD Maintenance</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Hold Maintenance</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Memo Transaction</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Fund Transfer</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Deposit Interest Rate Maintenance</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Clear Check Manually</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/charts/inline.html" class="nav-link">
                            <p>Manual FD Rollover</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-hand-holding-usd"></i>
                        <p>
                          Loans
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="pages/UI/general.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>General</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/icons.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Icons</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/buttons.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Buttons</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/sliders.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Sliders</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/modals.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Modals & Alerts</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/navbar.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Navbar & Tabs</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/timeline.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Timeline</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/UI/ribbons.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Ribbons</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cash-register"></i>
                        <p>
                          Tellering
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="pages/forms/general.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>General Elements</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/forms/advanced.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Advanced Elements</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/forms/editors.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Editors</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/forms/validation.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Validation</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                          General Ledger
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="pages/tables/simple.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Simple Tables</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/tables/data.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>DataTables</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/tables/jsgrid.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>jsGrid</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-header">Administrator</li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tools"></i>
                        <p>
                          System Administration
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <g:link class="nav-link" controller="branch" action="index">Branch Maintenance</g:link>
                        </li>
                        <li class="nav-item">
                          <a href="pages/mailbox/compose.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Compose</p>
                          </a>
                        </li>
                        <li class="nav-item">
                            <g:link class="nav-link" controller="userMaster" action="index">User Management</g:link>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cogs"></i>
                        <p>
                          Configuration
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="pages/examples/invoice.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Invoice</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/profile.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Profile</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/e_commerce.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>E-commerce</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/projects.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Projects</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/project_add.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Project Add</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/project_edit.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Project Edit</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/project_detail.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Project Detail</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/contacts.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Contacts</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon far fa-file-alt"></i>
                        <p>
                          Audit
                          <i class="fas fa-angle-left right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="pages/examples/login.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Login</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/register.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Register</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/forgot-password.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Forgot Password</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/recover-password.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Recover Password</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/lockscreen.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Lockscreen</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/legacy-user-menu.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Legacy User Menu</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/language-menu.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Language Menu</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/404.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Error 404</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/500.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Error 500</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/pace.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Pace</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="pages/examples/blank.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Blank Page</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="starter.html" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Starter Page</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <!--<li class="nav-header">MISCELLANEOUS</li>
                    <li class="nav-item">
                      <a href="https://adminlte.io/docs/3.0" class="nav-link">
                        <i class="nav-icon fas fa-file"></i>
                        <p>Documentation</p>
                      </a>
                    </li>
                    <li class="nav-header">MULTI LEVEL EXAMPLE</li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fas fa-circle nav-icon"></i>
                        <p>Level 1</p>
                      </a>
                    </li>
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-circle"></i>
                        <p>
                          Level 1
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="#" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Level 2</p>
                          </a>
                        </li>
                        <li class="nav-item has-treeview">
                          <a href="#" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>
                              Level 2
                              <i class="right fas fa-angle-left"></i>
                            </p>
                          </a>
                          <ul class="nav nav-treeview">
                            <li class="nav-item">
                              <a href="#" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Level 3</p>
                              </a>
                            </li>
                            <li class="nav-item">
                              <a href="#" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Level 3</p>
                              </a>
                            </li>
                            <li class="nav-item">
                              <a href="#" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Level 3</p>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Level 2</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fas fa-circle nav-icon"></i>
                        <p>Level 1</p>
                      </a>
                    </li>
                    <li class="nav-header">LABELS</li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="nav-icon far fa-circle text-danger"></i>
                        <p class="text">Important</p>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="nav-icon far fa-circle text-warning"></i>
                        <p>Warning</p>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="nav-icon far fa-circle text-info"></i>
                        <p>Informational</p>
                      </a>
                    </li>
                  </ul>
                </nav>
                <!-- /.sidebar-menu -->
                          -->
              </div>
              <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
              <!-- Content Header (Page header) -->
              <div class="content-header">
                <div class="container-fluid">
                     
                  <div class="row mb-2">
                    <div class="col-sm-6">
                      <h1 class="m-0 text-dark"></h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                      <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard v1</li>
                      </ol>
                    </div><!-- /.col -->
                  </div><!-- /.row -->
                  <g:layoutBody/>
                </div><!-- /.container-fluid -->
              </div>
              <!-- /.content-header -->
        
           <script>
            $(function () {
                 $('[data-toggle="tooltip"]').tooltip()
             })
            function validateFields(){
                var formId = "Please Select Account Type";
                confirmCancelSwal(formId);
            }
            function validateButton(){
            console.log('pumasok');
                var formId = "Please Select Account Type";
                console.log('formId' + formId);
                confirmCancelSwal(formId);
            }
            $(document).ready(function(){
              var date_input=$('input[name="date"]'); //our date input has the name "date"
              var container=$('.content-wrapper form').length>0 ? $('.content-wrapper form').parent() : "body";
              var options={
                format: 'mm/dd/yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
              };
              date_input.datepicker(options);
            })
            </script>
        </body>
</html>
