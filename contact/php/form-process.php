<?php

$errorMSG = "";

// NAME
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

// prepare email body text
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

// send email
$success = mail($EmailTo, $Subject, $Body, "From:".$email);

// redirect to success page
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