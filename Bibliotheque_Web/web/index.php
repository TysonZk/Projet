<!DOCTYPE html>

<html lang="FR">

    <?php require "header.php"; ?>

    <body class="bodyone">

        <main>
            <aside>
                <h2> <u>Liste de nos livres </u> </h2>
                <ul>    
                  <li> Influence et manipulation </li>
                  <li> L'art d'avoir toujours raison </li>
                  <li> Le Pouvoir du moment présent</li>
                  <li> La magie de voir grand</li>
                  <li> Le pouvoir de la passion et de la persévérance </li>
                  <li>  L'art subtil de s'en foutre </li>
                  <li> L'obstacle est le chemin </li>
                  <li> Oser avec audace​ </li>
                  <li> L'éveil de votre puissance intérieure</li>
                  <li> Les 7 habitudes des personnes très efficaces</li>
                </ul>
            </aside>            
            <div class="ok" id="book"> 
                <?php 
                $sql = 
                "SELECT livre.isbn AS isbn, livre.annee AS annee, livre.titre, personne.nom AS nom_auteur, personne.prenom AS prenom_auteur
                FROM livre
                JOIN auteur ON livre.isbn = auteur.idlivre  
                JOIN personne ON auteur.idpersonne = personne.id";
                
        
                $result = mysqli_query($link, $sql);
        
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<div>";
                        echo "<a href='" . $row['isbn'] . ".php'><button> Lire </button>";                        
                        echo "<img src='img/" . $row['isbn'] . ".jpg' alt='Livre "  . "'>";
                        echo "<p>Titre: " . $row["titre"] . "</p>";
                        echo "<p>Ecrivain: " . $row["prenom_auteur"] . " " . $row["nom_auteur"] . "</p>";
                        echo "<p>Date: " . $row["annee"] ."</p>";
                        echo "</div>";
                    }
                } 
            ?>
            </div>
        </main> 
        <?php require "footer.php"; ?>
    </body>
</html>


