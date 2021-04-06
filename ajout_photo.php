<?php if (isset($_POST['modifier'])) {
    header('location:ajout_photo.php');
} 
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Hubble_NASA</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css">
  <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <script src="https://kit.fontawesome.com/a3be9883af.js" crossorigin="anonymous"></script>
  <!--icons link-->
</head>

<body>
  <?php include("navbar.php"); ?>
  <section class="hero has-text-centered is-dark">
    <div class="hero">
      <p class="title ">
        Ajouté des images de tous les coins! </p>
    </div>
  </section>

  <div class="columns is-mobile">
    <div class="column is-three-quarters-mobile is-two-thirds-tablet is-half-desktop is-one-third-widescreen is-one-quarter-fullhd">
      <form action="#" method="post">
        <input class="input is-dark" type="text" name="nom" placeholder=" Nom de l'astre">
        <input class="input is-dark" type="text" name="image" placeholder=" Image">
        <input class="input is-dark" type="textarea" name="description" placeholder=" Description">
        <input class="input is-dark" type="text" name="parution" placeholder=" Date de publication">
        <button type="submit" class="button is-large is-black"><i class="fas fa-rocket"></i></button>

        <?php
        $bdd = new PDO(
          'mysql:host=127.0.0.1;dbname=nasa;charset=utf8',
          'Root',
          'Simplon974',
          array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
        );
        $reponse = $bdd->query('SELECT * FROM hubble');
        if (isset($_POST['nom'])) {
          $requete = 'INSERT INTO hubble VALUES(NULL, "' .
            $_POST['image'] . '", "' .
            $_POST['nom'] . '", "' .
            $_POST['description'] . '", "' .
            $_POST['parution'] . '")';
          $resultat = $bdd->query($requete);
        }
        ?>
      </form>
    </div>
    <div class="column">
    <?php $bdd = new PDO('mysql:host=127.0.0.1;dbname=nasa;charset=utf8', 'Root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            $reponse = $bdd->query('SELECT * FROM hubble');
            while ($donnees = $reponse->fetch()) {
                echo '<form action="#" method="post">';
                echo '<br>';
                echo '<input type="text"value="' . $donnees['nom'] . '" 
                class="input is-primary" name="new_nom" placeholder="Nouveau nom">';
                echo '<br>';
                echo '<input type="text"value="' . $donnees['image'] . '" 
                class="input is-primary" name="new_image" placeholder="Nouveau element">';
                echo '<br>';
                echo '<input type="text"value="' . $donnees['description'] . '" 
                class="input is-primary" name="new_description" placeholder="Nouvelle histoire">';
                echo  '<br>';
                echo '<input type="text"value="' . $donnees['parution'] . '" 
                class="input is-primary" name="new_parution" placeholder="Nouvelle dates de parution">';
                echo '<input type="hidden" name="id" value="' . $donnees['id'] . '">';
                echo '<button class="button is-success" type="submit" name="modifier"">Modifier</button> ' . '<br/>';
                echo '</form>';
                if (isset($_POST['modifier'])) {
                    $requete = 'UPDATE hubble SET 
                    nom="' . $_POST['new_nom'] . '",
                    image="' . $_POST['new_image'] . '",
                    description="' . $_POST['new_description'] . '",
                    parution="' . $_POST['new_parution'] . '" 
                    WHERE id="' . $_POST['id'] . '"';
                    $resultat = $bdd->query($requete);
                }

              }
            ?>
    </div>
    <div class="column">
    <?php 
    $bdd = new PDO('mysql:host=127.0.0.1;dbname=nasa;charset=utf8', 'Root', '', 
    array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    $reponse = $bdd->query('SELECT * FROM hubble');
    while ($donnees = $reponse->fetch()) {
      echo '<form method="post">';
      echo '<input type="hidden" name="id" value="' . $donnees['id'] . '">';
            echo "      <div class=\"media-left\">\n";
            echo "        <figure class=\"image is-256x256\">\n";
            echo '<img src="' . $donnees['image'] . '"> <br>';
            echo "        </figure>\n";
            echo "      </div>\n";
            echo  '<br>';
    }
    ?>
    </div>

    <?php include("footer.php"); ?>

  </div>
</body>


</html>