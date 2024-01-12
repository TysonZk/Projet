<!DOCTYPE html>

<html lang="FR">

    <?php require "header.php"; ?>
    <body>
        <?php
    if(isset($_POST["email"]) && $_POST["email"]!="" && $_POST["type-demande"]&& $_POST["type-demande"]!=""){
        echo "<br>".  "Votre demande : " . $_POST["type-demande"] . " a bien été envoyer nous vous répondrons a l'email suivant : " . $_POST["email"];
    }else{
        echo "<br>" . "email manquante";
    }
 
    if(isset($_POST["commentaire"]) && $_POST["commentaire"]!="" ){
        echo "<br>".  "Votre Demande [  " . $_POST["commentaire"] . " .]";
    }else{
        echo "<br>" .  "Pas de description";
    }
        ?>
    </body>
</html>
