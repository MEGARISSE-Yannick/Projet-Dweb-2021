<?php if (isset($_POST['supprimer'])) {
  header('location:ajout_articles.php');
}

if (isset($_POST['modifier'])) {
  header('location:ajout_articles.php');
}

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ajout articles monarduino974</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css">
  <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <script src="https://kit.fontawesome.com/a3be9883af.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style.css">
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
        Ajouté des articles pour la boutique </p>
    </div>
    <div class="sucess">
      <h1>Bienvenue</h1>
      <p>Voici l'espace admin pour ajouter et supprimer des articles</p>
    </div>


  </section>



  <div class="container2  ">
    <form action="#" method="post">
      <input class="input is-dark" type="text" name="nom" placeholder=" Nom de l'astre">
      <input class="input is-dark" type="text" name="image" placeholder=" Image">
      <input class="input is-dark" type="text" name="description" placeholder=" Description">
      <input class="input is-dark" type="textarea" name="speTech" placeholder=" Spécificité Technique">
      <input class="input is-dark" type="number" name="prix" placeholder=" Prix">

      <button type="submit" class="button is-black"><i class="fas fa-rocket"></i>Ajouter un article</button>


    </form>
    <?php
    $bdd = new PDO(
      'mysql:host=127.0.0.1;dbname=monarduino974;charset=utf8',
      'monarduinoadmin',
      'Simplon974@',
      array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
    $reponse = $bdd->query('SELECT * FROM articles');
    if (isset($_POST['nom'])) {
      $requete = 'INSERT INTO articles VALUES(NULL, "' .
        $_POST['nom'] . '", "' .
        $_POST['image'] . '", "' .
        $_POST['description'] . '", "' .
        $_POST['speTech'] . '", "' .
        $_POST['prix'] . '", )';
    }
    ?>
    <?php
    $bdd = new PDO(
      'mysql:host=localhost;dbname=monarduino974;charset=utf8',
      'monarduinoadmin',
      'Simplon974@',
      array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
    $reponse = $bdd->query('SELECT * FROM articles');

    while ($donnees = $reponse->fetch()) {
      
      echo '<div style="margin-top:30%;" class="article">';
      
      echo '<div class="nom">' . $donnees['nom'] . '</div>';
      echo '<div class="miniature"><img class="img" src="' . $donnees['image'] . '"></div>';
      echo '<div class="description">';
      echo '<p>' . $donnees['description'] . '</p>';
      echo '<br>';
      echo '<p>' . $donnees['speTech'] . '</p>';
      echo '</div>';
      echo '<div class="prix">' . $donnees['prix'] . '€</div>';
      echo '<form action="#" method="post">';
      echo '<input type="text"value="' . $donnees['nom'] . '" class="input is-primary" name="new_nom" placeholder="Nouveau nom">';
      echo '<input type="text"value="' . $donnees['image'] . '"  class="input is-primary" name="new_image" placeholder="Nouveau element">';
      echo '<input type="text"value="' . $donnees['description'] . '"  class="input is-primary" name="new_description" placeholder="Nouveau element">';
      echo '<input type="text"value="' . $donnees['speTech'] . '"  class="input is-primary" name="new_speTech" placeholder="Nouveau element">';
      echo '<input type="text"value="' . $donnees['prix'] . '" class="input is-primary" name="new_prix" placeholder="Nouveau prix">';
      echo '<input type="hidden" name="id" value="' . $donnees['id'] . '">';
      echo '<button class="button is-success" type="submit" name="modifier"">Modifier</button> ' . '';
      echo '<button class="button is-danger" type="submit" name="supprimer"">Supprimer</button> ' . '';
      echo '</form>';
      echo '</div>';

     

    }


    if (isset($_POST['modifier'])) {
      $requete = 'UPDATE articles SET 
                      nom="' . $_POST['new_nom'] . '",
                      image="' . $_POST['new_image'] . '",
                      description="' . $_POST['new_description'] . '",
                      speTech="' . $_POST['new_speTech'] . '",

                      prix="' . $_POST['new_prix'] . '" 
                       WHERE id="' . $_POST['id'] . '"';
      $resultat = $bdd->query($requete);
    }
    if (isset($_POST['supprimer'])) {
      $requete = 'DELETE FROM articles WHERE id="' . $_POST['id'] . '"';
      $resultat = $bdd->query($requete);
    }

    ?>

  </div>

</body>


</html>