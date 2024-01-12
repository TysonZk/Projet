<!DOCTYPE html>

<html lang="FR">

    <?php require "header.php"; ?>

    <body class="bodyone">

    <div class="fiche">
        <form action="confirmation.php" method="post">
            <section class="section">
                <h2> Support Novan </h2>
                    <fieldset>
                    <legend> Formulaire :     </legend>
                    </fieldset>
                    <label for="type-demande" class="td"> type-demande : </label>
                    <select id="demande" name="type-demande">
                        <option value="Autre">Autre </option>
                        <option value="Problème">Problème </option>
                        <option value="Question">Question </option>
                        <option value="Nouveau livre">Nouveau livre </option>
                    </select>
                    <label for="email"> Adresse mail : </label>
                    <input id="email" name="email" type="email">
                    <label for="commentaire"> Description :  </label>
                    <textarea id="com" name="commentaire" rows="4" cols="50" placeholder="Votre commentaire..."></textarea>
                    <input id="send" type="submit" value="Envoyer">

            </section>   
        </form>
    </div>
    <?php require "footer.php"; ?>
</body>
</html>
