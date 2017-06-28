<!-- Basic fixed sidebar -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="http://propeller.in/components/typography/css/typography.css" />
<link rel="stylesheet" href="http://propeller.in/components/navbar/css/navbar.css" />


<link rel="stylesheet" href="http://propeller.in/components/dropdown/css/dropdown.css" />
<link rel="stylesheet" href="http://propeller.in/components/button/css/button.css"/>
<link rel="stylesheet" href="http://propeller.in/components/list/css/list.css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" href="http://propeller.in/components/icons/css/google-icons.css" />
<link rel="stylesheet" href="http://propeller.in/components/sidebar/css/sidebar.css"/>
<!-- Jquery js -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Bootstrap js -->
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Propeller Dropdown js -->
<script type="text/javascript" language="javascript" src="http://propeller.in/components/dropdown/js/dropdown.js"></script>

<!-- Propeller ripple effect js -->
<script type="text/javascript" language="javascript" src=
"http://propeller.in/components/button/js/ripple-effect.js"></script>

<!-- Propeller Sidebar js -->
<script type="text/javascript" language="javascript" src="http://propeller.in/components/sidebar/js/sidebar.js"></script>
<nav class="navbar navbar-inverse pmd-navbar navbar-fixed-top pmd-z-depth" style="position:absolute;">
  <div class="container-fluid"> 
      <!-- Sidebar Toggle Button-->
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
          <a href="javascript:void(0);" class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-primary pull-left margin-r8 pmd-sidebar-toggle"><i class="material-icons">menu</i></a>
          <a class="navbar-brand" href="javascript:void(0);">Brand</a> 
      </div>
  </div>
</nav>
    
<!-- Sidebar -->
<section id="pmd-main">
    <!-- Left sidebar -->
    <aside class="pmd-sidebar sidebar-custom sidebar-default pmd-sidebar-left-fixed pmd-sidebar-left pmd-z-depth sidebar-hide-custom" role="navigation" style="position: absolute;">
        <ul class="nav pmd-sidebar-nav">
            <!-- My Account -->
            <li class="dropdown pmd-dropdown pmd-user-info">
                <a aria-expanded="false" data-toggle="dropdown" data-sidebar="true" class="btn-user dropdown-toggle media" href="javascript:void(0);">
                    <div class="media-left">
                        <img width="40" height="40" alt="avatar" src="<?php echo base_url(); ?>/assets/images/posts/images.png">
                    </div>
                    
                </a>
                <?php 


                if(!$this->session->userdata('logged_in')) : ?>
                 <ul class="dropdown-menu">
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>users/login" tabindex="-1"><i class="material-icons media-left media-middle">L</i> <span class="media-body">Login</span></a></li>
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>users/register" tabindex="-1"><i class="material-icons media-left media-middle">settings</i> <span class="media-body">Register</span></a></li>
                    
                </ul> 
                <?php endif; ?>
                <?php if($this->session->userdata('logged_in') && ($this->session->userdata('user_type')==1)) : ?>
                <ul class="dropdown-menu">                    
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>categories/create" tabindex="-1"><i class="material-icons media-left media-middle">settings</i> <span class="media-body">Create Catagory</span></a></li>
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>users/permission" tabindex="-1"><i class="material-icons media-left media-middle">history</i> <span class="media-body">Permission</span></a></li>
                </ul>
                <?php endif; ?>
                <?php if($this->session->userdata('logged_in')) : ?>                
                <ul class="dropdown-menu">
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>posts/create" tabindex="-1"><i class="material-icons media-left media-middle">C</i> <span class="media-body">Create Post</span></a></li>                    
                    <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>users/logout" tabindex="-1"><i class="material-icons media-left media-middle">history</i> <span class="media-body">Logout</span></a></li>
                </ul>
                <?php endif; ?>
            </li>
            <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>"><i class="material-icons media-left media-middle">delete</i> <span class="media-body">Home</span></a> </li>
            <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>posts"><i class="material-icons media-left media-middle">notifications</i> <span class="media-body">Blog</span></a> </li>
            <li> <a class="pmd-ripple-effect" href="<?php echo base_url(); ?>categories"><i class="material-icons media-left media-middle">notifications</i> <span class="media-body">Categories</span></a> </li>
        </ul>
    </aside>

    <!-- Content -->
    