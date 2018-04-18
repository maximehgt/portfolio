<!DOCTYPE html>
<html lang="fr">

<head>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Portfolio - Maxime hugonnet - Vous cherchez un développeur web ? Ça tombe bien ! Je suis la personne qu'il vous faut ! N'hésitez pas à me contacter et regardez mes réalisations.">
  	<title><?= $title; ?></title>

<!-- Twitter Card data -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="Maxime Hugonnet - Portfolio">
    <meta name="twitter:description" content="Portfolio - Maxime hugonnet - Vous cherchez un développeur web ? Ça tombe bien ! Je suis la personne qu'il vous faut ! N'hésitez pas à me contacter et regardez mes réalisations.">
    <meta name="twitter:image" content="http://maxime-hugonnet.fr/public/img/fb-twi/maximehugonnet.png">
<!-- Open Graph data -->
    <meta property="og:title" content="Maxime Hugonnet - Portfolio"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="http://maxime-hugonnet.fr">
    <meta property="og:image" content="http://maxime-hugonnet.fr/public/img/fb-twi/maximehugonnet.png"/>
    <meta property="og:description" content="Portfolio - Maxime hugonnet - Vous cherchez un développeur web ? Ça tombe bien ! Je suis la personne qu'il vous faut ! N'hésitez pas à me contacter et regardez mes réalisations."/>
    <link rel="apple-touch-icon" sizes="180x180" href="./public/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./public/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./public/img/favicon-16x16.png">
    <link rel="mask-icon" href="./public/img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

<!-- favicon -->
  	<link rel="apple-touch-icon" sizes="57x57" href="<?= PUBLICS ;?>/img/favicon/apple-icon-57x57.png">
  	<link rel="apple-touch-icon" sizes="60x60" href="<?= PUBLICS ;?>/img/favicon/apple-icon-60x60.png">
  	<link rel="apple-touch-icon" sizes="72x72" href="<?= PUBLICS ;?>/img/favicon/apple-icon-72x72.png">
  	<link rel="apple-touch-icon" sizes="76x76" href="<?= PUBLICS ;?>/img/favicon/apple-icon-76x76.png">
  	<link rel="apple-touch-icon" sizes="114x114" href="<?= PUBLICS ;?>/img/favicon/apple-icon-114x114.png">
  	<link rel="apple-touch-icon" sizes="120x120" href="<?= PUBLICS ;?>/img/favicon/apple-icon-120x120.png">
  	<link rel="apple-touch-icon" sizes="144x144" href="<?= PUBLICS ;?>/img/favicon/apple-icon-144x144.png">
  	<link rel="apple-touch-icon" sizes="152x152" href="<?= PUBLICS ;?>/img/favicon/apple-icon-152x152.png">
  	<link rel="apple-touch-icon" sizes="180x180" href="<?= PUBLICS ;?>/img/favicon/apple-icon-180x180.png">
  	<link rel="icon" type="image/png" sizes="192x192"  href="<?= PUBLICS ;?>/img/favicon/android-icon-192x192.png">
  	<link rel="icon" type="image/png" sizes="32x32" href="<?= PUBLICS ;?>/img/favicon/favicon-32x32.png">
  	<link rel="icon" type="image/png" sizes="96x96" href="<?= PUBLICS ;?>/img/favicon/favicon-96x96.png">
  	<link rel="icon" type="image/png" sizes="16x16" href="<?= PUBLICS ;?>/img/favicon/favicon-16x16.png">
<!-- /favicon -->

<!-- Bootstrap core CSS -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- Custom fonts for this template -->
  	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  	<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
  	<link href="<?= PUBLICS ;?>css/frontend.css" rel="stylesheet">
</head>

<body>
<!-- nav -->
    <div id="header-perso">
        <div class="top-header">
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
              <a class="av-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php#contact"><i class="fa fa-suitcase"></i> Recrutez-moi</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php"><i class="fa fa-home"></i> Accueil</a>
                  </li>
                  <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php#portfolio"><i class="fa fa-book"></i> Portfolio</a>
                  </li>
                  <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php#contact"><i class="fa fa-user"></i> Contact</a>
                  </li>
                  <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="public/img/cv/HUGONNET-Maxime-CV-2018.pdf"><i class="fa fa-download"></i> Télécharger CV</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
    </div>
<!-- /nav -->

<!-- banner -->
  	<header class="masthead border-index" style="background-image: url('<?= PUBLICS ;?>img/banner/<?php if(isset($post_thumbnail)){echo $post_thumbnail;}else{echo 'banner-index.svg';}?>')">
  		<div class="overlay"></div>
	    	<div class="container banner-index">
	      		<!-- messages errors -->
	      		<?php $Session->flash(); ?>
	      		<!-- messages errors -->
		      	<div class="row">
		        	<div class="col-lg-10 col-md-10 mx-auto text-center">
		          		<div class="site-heading">
		            		<h1><img src="<?= PUBLICS ;?>img/banner/dev-indep.png" alt="Maxime Hugonnet" width="250px"><br>
		            		<?=$heading?></h1>
		            		<h2 class="subheading"><?=$subHeading?></h2>
		          		</div>
		        	</div>
		      	</div>
	    	</div>
  	</header>
<!-- /banner -->

<!-- content -->
  	<?= $content;?>
<!-- /content -->

<!-- footer -->
    <footer class="py-2 bg-dark">
      <div class="row justify content center">
        <div class="col-sm-12">
          <p class="text-center"><a class="" href="https://www.linkedin.com/in/maxime-hugonnet-a626a5100/"><i class="fa fa-linkedin-square"></i></a>
          <a class="" href="http://www.viadeo.com/p/002fh5k3ncm3i4j"><i class="fa fa-viadeo"></i></a>
          <a class="" href="https://github.com/maximehgt"><i class="fa fa-github"></i></a>
          <a class="" href="https://www.facebook.com/HGT-Production-1881873732125865/"><i class="fa fa-facebook-square"></i></a>
          <a class="" href="https://twitter.com/MaximeMAO?lang=fr"><i class="fa fa-twitter"></i></a><br/>
          <span class="m-0 text-center text-white"> Copyright &copy; HGTProduction 2018</span></p>
          <div class="fb-like" data-href="https://maxime-hugonnet.fr" data-layout="button" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
            <p class="text-center">
            <p class="copyright text-muted"><a href="index.php?action=login">login</a></p>
            </p>
        </div>
      </div>
    </footer>
<!-- /footer -->

<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Script -->
	<script src="<?= PUBLICS ;?>js/app.js" type="text/javascript"></script>
  <script src="<?= PUBLICS ;?>js/fb.js" type="text/javascript"></script>
</body>

</html>
