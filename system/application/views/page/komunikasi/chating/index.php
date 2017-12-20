<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="Sistem Monitoring Skripsi Universitas Mercubuana">
  <meta name="author" content="">
  <title><?=$title?> | Sistem e-SOP Kementerian Sekretariat Negara</title>
  <link rel="shortcut icon" href="<?=base_url()?>assets/images/favicon.png">
  <!-- Stylesheets -->
  <link rel="stylesheet" href="<?=base_url()?>assets/global/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/css/bootstrap-extend.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/css/site.min.css">
  <!-- Plugins -->
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/animsition/animsition.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/asscrollable/asScrollable.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/switchery/switchery.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/intro-js/introjs.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/slidepanel/slidePanel.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/vendor/flag-icon-css/flag-icon.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/examples/css/apps/message.css">
  <!-- Fonts -->
  <link rel="stylesheet" href="<?=base_url()?>assets/global/fonts/web-icons/web-icons.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/global/fonts/brand-icons/brand-icons.min.css">
  <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
  <link rel="stylesheet" href="<?=base_url()?>assets/css/reset.css">
  <!--[if lt IE 9]>
    <script src="<?=base_url()?>assets/global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
  <!--[if lt IE 10]>
    <script src="<?=base_url()?>assets/global/vendor/media-match/media.match.min.js"></script>
    <script src="<?=base_url()?>assets/global/vendor/respond/respond.min.js"></script>
    <![endif]-->
  <!-- Scripts -->
  <script src="<?=base_url()?>assets/global/vendor/breakpoints/breakpoints.js"></script>
  <script>
  Breakpoints();
  </script>
</head>
<body class="animsition site-navbar-small app-message page-aside-scroll page-aside-left">
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega navbar-inverse"
  role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided"
      data-toggle="menubar">
        <span class="sr-only">Toggle navigation</span>
        <span class="hamburger-bar"></span>
      </button>
      <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse"
      data-toggle="collapse">
        <i class="icon wb-more-horizontal" aria-hidden="true"></i>
      </button>
      <a class="navbar-brand navbar-brand-center" href="<?=base_url()?>dashboard">
        <img class="navbar-brand-logo navbar-brand-logo-normal" src="<?=base_url()?>assets/images/logo.png" title="Sistem e-SOP Sekretariat Negara">
        <img class="navbar-brand-logo navbar-brand-logo-special" src="<?=base_url()?>assets/images/logo-blue.png" title="Sistem e-SOP Sekretariat Negara">
        <span class="navbar-brand-text hidden-xs-down"> Sistem e-SOP Kementerian Sekretariat Negara</span>
      </a>
      <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-search"
      data-toggle="collapse">
        <span class="sr-only">Toggle Search</span>
        <i class="icon wb-search" aria-hidden="true"></i>
      </button>
    </div>
    <div class="navbar-container container-fluid">
      <!-- Navbar Collapse -->
      <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
        <!-- Navbar Toolbar -->
        <ul class="nav navbar-toolbar">
          <li class="nav-item hidden-float" id="toggleMenubar">
            <a class="nav-link" data-toggle="menubar" href="#" role="button">
              <i class="icon hamburger hamburger-arrow-left">
                  <span class="sr-only">Toggle menubar</span>
                  <span class="hamburger-bar"></span>
                </i>
            </a>
          </li>
        </ul>
        <!-- End Navbar Toolbar -->
        <!-- Navbar Toolbar Right -->
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          <li class="nav-item hidden-sm-down" id="toggleFullscreen">
            <a class="nav-link icon icon-fullscreen" data-toggle="fullscreen" href="#" role="button">
              <span class="sr-only">Toggle fullscreen</span>
            </a>
          </li>
          <li class="nav-item hidden-float">
            <a class="nav-link icon wb-search" data-toggle="collapse" href="#" data-target="#site-navbar-search"
            role="button">
              <span class="sr-only">Toggle Search</span>
            </a>
          </li>
		  <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="javascript:void(0)" title="Pemberitahuan"
            aria-expanded="false" data-animation="scale-up" role="button">
              <i class="icon wb-bell" aria-hidden="true"></i>
              <?=($notif->num_rows() > 0 ? '<span class="badge badge-pill badge-danger up">'.$notif->num_rows().'</span>' : '')?>
            </a>
            <ul class="dropdown-menu dropdown-menu-right dropdown-menu-media" role="menu">
              <li class="dropdown-menu-header" role="presentation">
                <h5>Pemberitahuan</h5>
				<?=($notif->num_rows() > 0 ? '<span class="badge badge-round badge-danger">New '.$notif->num_rows().'</span>' : '')?>
              </li>
              <li class="list-group" role="presentation">
                <div data-role="container">
                  <div data-role="content">
				  <?php if($notif->num_rows() > 0){
					  foreach($notif->result_array() as $row){
						$linkgrup = ($groupid == 11 ? 'periksa' : 'lihat');
						$link = ($row['notif_jenis'] == 'reviu' ? ''.base_url().'sop/reviu/'.$linkgrup.'/'.$row['sop_alias'].'/'.$row['notif_id'].'/'.$row['reviu_id'].'' : ''.base_url().'sop/revisi_sop/periksa/'.$row['sop_alias'].'/'.$row['revisi_id'].'');
				  ?>
						<a class="list-group-item" href="<?=$link?>" role="menuitem">
						  <div class="media">
							<div class="pr-10">
							  <i class="icon <?=$row['notif_icon']?> white icon-circle" aria-hidden="true"></i>
							</div>
							<div class="media-body">
							  <h6 class="media-heading"><?=$row['notif_title']?></h6>
							  <!--<time class="media-meta" datetime="2017-06-12T20:50:48+08:00">5 hours ago</time>-->
							</div>
						  </div>
						</a>
				  <?php }}else{ ?>
				  <a class="list-group-item" href="#" role="menuitem">
                      <div class="media">
                        <div class="media-body">
                          <h6 class="media-heading">Tidak ada pemberitahuan</h6>
                        </div>
                      </div>
                    </a>
				  <?php }?>
                  </div>
                </div>
              </li>
              <li class="dropdown-menu-footer" role="presentation">
                <a class="dropdown-item" href="<?=base_url()?>notification/semua" role="menuitem">
                    Lihat Semua
                  </a>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false"
            data-animation="scale-up" role="button">
              <span class="avatar avatar-online">
				<img src="<?=base_url()?>assets<?=($foto != '' ? '/media/profile/'.$foto.'' : '/global/portraits/5.jpg')?>" alt="<?=$fullname?>">
                <i></i>
              </span>
            </a>
            <div class="dropdown-menu" role="menu">
              <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Profile</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="<?=base_url()?>logout" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Logout</a>
            </div>
          </li>
        </ul>
        <!-- End Navbar Toolbar Right -->
      </div>
      <!-- End Navbar Collapse -->
      <!-- Site Navbar Seach -->
      <div class="collapse navbar-search-overlap" id="site-navbar-search">
        <form role="search">
          <div class="form-group">
            <div class="input-search">
              <i class="input-search-icon wb-search" aria-hidden="true"></i>
              <input type="text" class="form-control" name="site-search" placeholder="Search...">
              <button type="button" class="input-search-close icon wb-close" data-target="#site-navbar-search"
              data-toggle="collapse" aria-label="Close"></button>
            </div>
          </div>
        </form>
      </div>
      <!-- End Site Navbar Seach -->
    </div>
  </nav>
  <div class="site-menubar site-menubar-light">
    <div class="site-menubar-body">
      <div>
        <div>
          <ul class="site-menu" data-plugin="menu">
			<?php 
				if($menu->num_rows() > 0){
					foreach($menu->result_array() as $rows) {
						$level = $rows['menu_level'];
						$this->menubackend->addToArray($rows['menu_id'], $rows['menu_name'], $rows['parent'], $rows['menu_link'], $level, $rows['menu_sts_child'], $rows['menu_icon']);
					}
					
					$this->menubackend->drawTree(); 
				}
			?>
				
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Page -->
  <div class="page">
    <!-- Message Sidebar -->
    <div class="page-aside">
      <div class="page-aside-switch">
        <i class="icon wb-chevron-left" aria-hidden="true"></i>
        <i class="icon wb-chevron-right" aria-hidden="true"></i>
      </div>
      <div class="page-aside-inner">
        <div class="input-search">
          <button class="input-search-btn" type="submit">
            <i class="icon wb-search" aria-hidden="true"></i>
          </button>
          <form>
            <input class="form-control" type="text" placeholder="Search Keyword" name="">
          </form>
        </div>
        <div class="app-message-list page-aside-scroll">
          <div data-role="container">
            <div data-role="content">
              <ul class="list-group">
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-online" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/1.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Kerem Sure</h5>
                      <span class="media-time">15 sec ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger">3</span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-online" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/2.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Eric hoffman</h5>
                      <span class="media-time">1 minutes ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-online" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/3.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Eddie Lobanovskiy</h5>
                      <span class="media-time">5 minutes ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-online" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/4.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Bill S Kenney</h5>
                      <span class="media-time">15 minutes ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger">5</span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item active">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-away" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/5.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Derek Bradley</h5>
                      <span class="media-time">40 minutes ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-away" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/6.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Mariusz Ciesla</h5>
                      <span class="media-time">2 hours ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-online" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/7.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Jesse Dodds</h5>
                      <span class="media-time">3 hours ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-off" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/8.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Gerren Lamson</h5>
                      <span class="media-time">3 hours ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-off" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/9.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Daniel Waldron</h5>
                      <span class="media-time">5 hours ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="media">
                    <div class="pr-20">
                      <a class="avatar avatar-off" href="javascript:void(0)">
                        <img class="img-fluid" src="<?=base_url()?>assets/global/portraits/10.jpg" alt="..."><i></i></a>
                    </div>
                    <div class="media-body">
                      <h5 class="mt-0 mb-5">Celikovic</h5>
                      <span class="media-time">7 hours ago</span>
                    </div>
                    <div class="pl-20">
                      <span class="badge badge-pill badge-danger"></span>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Message Sidebar -->
    <div class="page-main">
      <!-- Chat Box -->
      <div class="app-message-chats">
        <button type="button" id="historyBtn" class="btn btn-round btn-outline btn-default">History Messages</button>
        <div class="chats">
          <div class="chat">
            <div class="chat-avatar">
              <a class="avatar" data-toggle="tooltip" href="#" data-placement="right" title="">
                <img src="<?=base_url()?>assets/global/portraits/4.jpg" alt="June Lane">
              </a>
            </div>
            <div class="chat-body">
              <div class="chat-content">
                <p>
                  Hello. What can I do for you?
                </p>
              </div>
            </div>
          </div>
          <div class="chat chat-left">
            <div class="chat-avatar">
              <a class="avatar" data-toggle="tooltip" href="#" data-placement="left" title="">
                <img src="<?=base_url()?>assets/global/portraits/5.jpg" alt="Edward Fletcher">
              </a>
            </div>
            <div class="chat-body">
              <div class="chat-content">
                <p>
                  I'm just looking around.
                </p>
                <p>Will you tell me something about yourself? </p>
              </div>
              <div class="chat-content">
                <p>
                  Are you there? That time!
                </p>
              </div>
            </div>
          </div>
          <div class="chat">
            <div class="chat-avatar">
              <a class="avatar" data-toggle="tooltip" href="#" data-placement="right" title="">
                <img src="<?=base_url()?>assets/global/portraits/4.jpg" alt="June Lane">
              </a>
            </div>
            <div class="chat-body">
              <div class="chat-content">
                <p>
                  Where?
                </p>
              </div>
              <div class="chat-content">
                <p>
                  OK, my name is Limingqiang. I like singing, playing basketballand so on.
                </p>
              </div>
            </div>
          </div>
          <p class="time">1 hours ago</p>
          <div class="chat chat-left">
            <div class="chat-avatar">
              <a class="avatar" data-toggle="tooltip" href="#" data-placement="left" title="">
                <img src="<?=base_url()?>assets/global/portraits/5.jpg" alt="Edward Fletcher">
              </a>
            </div>
            <div class="chat-body">
              <div class="chat-content">
                <p>You wait for notice.</p>
              </div>
              <div class="chat-content">
                <p>Consectetuorem ipsum dolor sit?</p>
              </div>
              <div class="chat-content">
                <p>OK?</p>
              </div>
            </div>
          </div>
          <div class="chat">
            <div class="chat-avatar">
              <a class="avatar" data-toggle="tooltip" href="#" data-placement="right" title="">
                <img src="<?=base_url()?>assets/global/portraits/4.jpg" alt="June Lane">
              </a>
            </div>
            <div class="chat-body">
              <div class="chat-content">
                <p>OK!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Chat Box -->
      <!-- Message Input-->
      <form class="app-message-input">
        <div class="message-input">
          <textarea class="form-control" rows="1"></textarea>
          <div class="message-input-actions btn-group">
            <button class="btn btn-pure btn-icon btn-default" type="button">
              <i class="icon wb-emoticon" aria-hidden="true"></i>
            </button>
            <button class="btn btn-pure btn-icon btn-default" type="button">
              <i class="icon wb-image" aria-hidden="true"></i>
            </button>
            <button class="btn btn-pure btn-icon btn-default" type="button">
              <i class="icon wb-paperclip" aria-hidden="true"></i>
            </button>
            <input id="messageImage" type="file" name="messageImage">
            <input id="messageFile" type="file" name="messageFile">
          </div>
        </div>
        <button class="message-input-btn btn btn-primary" type="button">SEND</button>
      </form>
      <!-- End Message Input-->
    </div>
  </div>
  <!-- Footer -->
  <footer class="site-footer">
    <div class="site-footer-legal">&copy; 2017 Sekretariat Negara</div>
    <div class="site-footer-right">
     <a href="http://www.jake.co.id" target="_blank">Jake Id</a>
    </div>
  </footer>
  <!-- Core  -->
  <script src="<?=base_url()?>assets/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/jquery/jquery.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/tether/tether.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/bootstrap/bootstrap.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/animsition/animsition.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/mousewheel/jquery.mousewheel.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/asscrollable/jquery-asScrollable.js"></script>
  <!-- Plugins -->
  <script src="<?=base_url()?>assets/global/vendor/switchery/switchery.min.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/intro-js/intro.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/screenfull/screenfull.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/slidepanel/jquery-slidePanel.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/slidepanel/jquery-slidePanel.js"></script>
  <script src="<?=base_url()?>assets/global/vendor/autosize/autosize.js"></script>
  <!-- Scripts -->
  <script src="<?=base_url()?>assets/global/js/State.js"></script>
  <script src="<?=base_url()?>assets/global/js/Component.js"></script>
  <script src="<?=base_url()?>assets/global/js/Plugin.js"></script>
  <script src="<?=base_url()?>assets/global/js/Base.js"></script>
  <script src="<?=base_url()?>assets/global/js/Config.js"></script>
  <script src="<?=base_url()?>assets/js/Section/Menubar.js"></script>
  <script src="<?=base_url()?>assets/js/Section/Sidebar.js"></script>
  <script src="<?=base_url()?>assets/js/Section/PageAside.js"></script>
  <script src="<?=base_url()?>assets/js/Plugin/menu.js"></script>
  <!-- Config -->
  <script src="<?=base_url()?>assets/global/js/config/colors.js"></script>
  <script src="<?=base_url()?>assets/js/config/tour.js"></script>
  <script>
  Config.set('assets', '<?=base_url()?>assets');
  </script>
  <!-- Page -->
  <script src="<?=base_url()?>assets/js/Site.js"></script>
  <script src="<?=base_url()?>assets/global/js/Plugin/asscrollable.js"></script>
  <script src="<?=base_url()?>assets/global/js/Plugin/slidepanel.js"></script>
  <script src="<?=base_url()?>assets/global/js/Plugin/switchery.js"></script>
  <script src="<?=base_url()?>assets/js/Site.js"></script>
  <script src="<?=base_url()?>assets/js/App/Message.js"></script>
  <script src="<?=base_url()?>assets/examples/js/apps/message.js"></script>
</body>
</html>