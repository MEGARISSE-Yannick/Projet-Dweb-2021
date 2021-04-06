<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hubble_NASA</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    <script src="https://kit.fontawesome.com/a3be9883af.js" crossorigin="anonymous"></script>
    <!--icons link-->
</head>

<body>
  
<?php include("admin_check.php"); ?>
 
    <!--navbar link avec include-->
    <section class="hero has-text-centered is-dark">
        <div class="hero">
            <p class="title ">
                Bienvenue </p>
            <p class="subtitle">
                Sur la boutique MonArduino974</p>

        </div>
    </section>


    <?php
    $bdd = new PDO(
        'mysql:host=localhost;dbname=monarduino974;charset=utf8',
        'monarduinoadmin',
        'Simplon974@',
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
    $reponse = $bdd->query('SELECT * FROM articles');
    echo '<div class="container2">';

    while ($donnees = $reponse->fetch()) {
        echo '<a href="article_detail.php?id=' . $donnees['id'] . '">';
        echo '<div class="article">';
        echo '<div class="nom">' . $donnees['nom'] . '</div>';
        echo '<div class="miniature"><img class="img" src="' . $donnees['image'] . '"></div>';
        echo '<div class="description">';
        echo '<span>' . $donnees['description'] . '</span>';
        echo '</div>';
        echo '<div class="prix">' . $donnees['prix'] . '€</div>';
        echo '</div></a>';
    }
    echo 'good';
    echo '</div>';
    ?>
    <!-- image en premiere vue -->



</body>

</html>