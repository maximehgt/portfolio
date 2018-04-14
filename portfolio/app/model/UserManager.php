<?php

/**
 * class UserManager
 */
class UserManager extends Database
{

  /**
  * function addUser
  * ajoute un utilisateur
  */
  public function addUser() {
      $newUser = [];
      // Hachage du mot de passe
      $pass = "password";
      $pass_hache = password_hash($pass, PASSWORD_DEFAULT);

      $req = $this->db->prepare('INSERT INTO users(username, password, email) VALUES(:username, :password, :email)');
      $req->execute(array(
        'username' => "maxime",
        'password' => $pass_hache,
        'email' => "maxime@maxime-hugonnet.fr"
      ));

      return $newUser;
  }

  /**
  * function loginVerify
  * verification utilisateur et mot de passe
  */
  public function loginVerify($username){
    $user = [];
    $req = $this->db->prepare('SELECT id, username, password, email FROM users WHERE username = :username');
    $req->execute(array(
      'username' => $username
    ));
    while ($donnees = $req->fetch(PDO::FETCH_ASSOC)) {
    $user = new User($donnees);
    }
    return $user;
  }
}
