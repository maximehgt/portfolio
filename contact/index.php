<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Contact</title>

    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
    <!-- /favicon -->

    <!--CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/contact.css">
    <!--/CSS-->
</head>

<body class="background-contact">
    <!--contact-->
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="well bg-dark" style="margin-top: 25%;">
                <h3 class="text-center">Envoyez-moi un message</h3>
                <form role="form" id="contactForm" data-toggle="validator" class="shake">
                    <div class="row">
                        <div class="form-group col-sm-6 text-center">
                            <label for="name" class="h4">Nom</label>
                            <input type="text" class="form-control text-center" id="name" placeholder="Votre nom" required data-error="Message d'erreur">
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group col-sm-6 text-center">
                            <label for="email" class="h4">Email</label>
                            <input type="email" class="form-control text-center" id="email" placeholder="Votre email" required>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <label for="message" class="h4 ">Message</label>
                        <textarea id="message" class="form-control text-center" rows="5" placeholder="Votre message" required></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
                    <button type="submit" id="form-submit" class="btn btn-success btn-lg pull-left">Envoyer</button>
                    <div id="msgSubmit" class="h3 text-center hidden"></div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <!--/contact-->

    <!--retour-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <a class="btn btn-info" href="http://maxime-hugonnet.fr/openclassrooms/portfolio/" role="button">Retour Portfolio</a>
            </div>
        </div>
    </div>
    <!--/retour-->

    <!--footer-->
    <footer>
        <p class="text-center">Copyright &copy; HGTProduction 2018</p>
    </footer>
    <!--/footer-->

    <!--script-->
    <script  type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/validator.min.js"></script>
    <script type="text/javascript" src="js/form-scripts.js"></script>
    <!--/script-->
</body>
</html>
