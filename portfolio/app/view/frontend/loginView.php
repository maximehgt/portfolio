<?php $title = "Login"; ?>
<?php $subHeading = " "?>
<?php $heading = "Administration"?>
<?php ob_start(); ?>

<!-- content -->
  <div class="container">
    <div class="card card-login mx-auto px-0 justify-content-center align-items-center login-background">
      <div class="card-body text-white">
        <form action="index.php?action=loginVerify" method="post">
          <div class="col-sm-6">
            <img src="public/img/login/login.png" alt="login">
          </div>

          <div class="form-group text-center">
            <label for="exampleInputEmail1">Pseudo</label>
            <input class="form-control text-center" type="text" placeholder="Entrer votre identifiant" name="username" required>
          </div>

          <div class="form-group text-center">
            <label for="exampleInputPassword1">Mot de passe</label>
            <input class="form-control text-center" type="password" placeholder="Mot de passe" name="password" required>
          </div>

          <div class="row justify-content-center align-items-center">
            <button type="submit" class="btn btn-primary">Se connecter</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<!-- /content -->

  <?php $content = ob_get_clean(); ?>

  <?php require('template.php'); ?>
