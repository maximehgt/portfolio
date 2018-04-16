<?php

$errorMSG = "";

// Nom
if (empty($_POST["name"])) {
    $errorMSG = "Le nom est requis ";
} else {
    $name = $_POST["name"];
}

// EMAIL
if (empty($_POST["email"])) {
    $errorMSG .= "L'email est requis ";
} else {
    $email = $_POST["email"];
}

// MESSAGE
if (empty($_POST["message"])) {
    $errorMSG .= "Le message est requis ";
} else {
    $message = $_POST["message"];
}


$EmailTo = "maxime@maxime-hugonnet.fr";
$Subject = "Contact site perso";

// préparer le texte du corps de la messagerie
$Body = "";
$Body .= "Name: ";
$Body .= $name;
$Body .= "\n";
$Body .= "Email: ";
$Body .= $email;
$Body .= "\n";
$Body .= "Message: ";
$Body .= $message;
$Body .= "\n";

// envoyer un email
$success = mail($EmailTo, $Subject, $Body, "From:".$email);

// rediriger vers la page de réussite
if ($success && $errorMSG == ""){
   echo "Envoyé";
}else{
    if($errorMSG == ""){
        echo "Quelque chose s'est mal passé :(";
    } else {
        echo $errorMSG;
    }
}

?>