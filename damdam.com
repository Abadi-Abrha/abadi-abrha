<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>TESFU | plc</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="all/STYLE.css">
  <link rel="stylesheet" href="AdminLTE-2.4.3/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="AdminLTE-2.4.3/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="AdminLTE-2.4.3/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE-2.4.3/dist/css/AdminLTE.min.css">
  <script src="AdminLTE-2.4.3/js/jquery-3.4.1.min.js"></script>
  <link rel="stylesheet" href="AdminLTE-2.4.3/css/bootstrap.min.css">
  <script  type="text/javascript" src="AdminLTE-2.4.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="AdminLTE-2.4.3/datatables/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="AdminLTE-2.4.3/datatables/js/jquery.dataTables.js"></script>


  <link rel="stylesheet" type="text/css" href="AdminLTE-2.4.3/DataTables/css/jquery.dataTables.min.css">
  <script type="text/javascript" charset="utf8" src="AdminLTE-2.4.3/DataTables/js/jquery.dataTables.min.js"></script>
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="AdminLTE-2.4.3/dist/css/skins/skin-blue.min.css">

  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">


</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="tes1.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>T</b>SFU</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>TESFU</b>&nbsp;PLC</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <span class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span><ul id="navul">
                <a href="/home">  <li>Home</li></a><a href='/sell'><li>Sells</li></a><a href="/purchaise"><li>Purchased</li></a>
                <a href="/report"><li>Report</li></a><a href="/comment"><li>Comment</li></a>
                </ul>
      </span> 
      
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <!-- Menu toggle button -->
            <a href="/messages" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">{{msgnum}}</span>
            </a>
            
          </li>
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
          <li class="dropdown notifications-menu">
            <!-- Menu toggle button -->
            <a href="/notifications" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            
          </li>
          <!-- Tasks Menu -->
          
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="/profile" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="all/abi.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">Abadi Abrha </span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="all/abi.jpg" class="img-circle" alt="User Image">

                <p>
                  Abadi Abrha - Student at MIT ethiopia
                  <small> since Sep. 2018 mekelle</small>
                </p>
              </li>
              <!-- Menu Body -->
              </ul>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="/logout" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="all/abi.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Abadi abrha</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">ኣጠቃላይ የቢዝነስ ማህደር ማስመዝገብያ ቅፅ</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="treeview"><a href="/sell"><i class="fa fa-link"></i> <span>ገቢዎች</span>
             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
<!--show again if thet the java script function is working or not-->
          <ul class="treeview-menu">
            <li ><a href="/sell" >የቀኑን ገቢ አስመዝግብ</a></li>
            <li ><a href="/sell" >የወር ጠቅላላ ገቢ</a></li>
          </ul>
            </a></li>
        <li class="treeview">
            <a href="#"><i class="fa fa-link"></i> <span>ወጪ</span>

             <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>

          <ul class="treeview-menu">
            <li ><a href="/purchaise" >የቀኑን ኣጠቃላይ ወጪ</a></li>
            <li ><a href="/purchaise" >የወር ጠቅላላ ወጪ</a></li>
          </ul>
            </a></li>

        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>ሽያጭ</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li ><a href="/purchaise">የውጭ ሽያጭ</a></li>
            <li ><a  href="/purchaise">የኣገር ውስጥ ሽያጭ</a></li>
          </ul>
               <a href="#"><i class="fa fa-link"></i> <span>ግዢ</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li ><a  href="/purchaise">የውጭ ግዢ</a></li>
            <li><a href="/purchaise" >የኣገር ውስጥ ግዢ</a></li>
          </ul>
        </li>
          <li > <a href="/report">የወር ጠቅላላ ወጪ</a></li>
          <li onclick="showwtt()">የወር ጠቅላላ ወጪ</li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="/center"><i class="fa fa-dashboard"></i> Center</a></li>
        <li class="active">centername</li>
      </ol>
      <hr>




    <section class="content container-fluid">

<div  id="selbody"class="panel">

   {{{body}}}
</div>
  

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="DataTables-1.10.8/js/jquery.dataTables.min.js"></script>

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>
