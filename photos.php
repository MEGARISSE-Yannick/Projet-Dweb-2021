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
  <?php include("navbar.php"); ?>
  <section class="hero has-text-centered is-dark">
    <div class="hero">
      <p class="title ">
        Voici une gallery d'images pour vous! </p>
    </div>
  </section>
    <section class="section">
      <div class="columns">
        <div class="column is-16by9">
          <?php
          $bdd = new PDO(
            'mysql:host=localhost;dbname=nasa;charset=utf8',
            'root',
            '',
            array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
          $reponse = $bdd->query('SELECT * FROM hubble');
          while ($donnees = $reponse->fetch()) {
            echo '     <section class="section has-text-centered">';
            echo '        <div class="container is-fluid">';
            echo '          <div class="columns">';
            echo '            <div class="column">';
            echo '              <img src="' . $donnees['image'] . '"> <br>';
            echo "            </div>";
            echo "          </div>";
            echo "          </div>";
            echo "    </section>";
          }
          ?>
        </div>

      </div>


    </section>
    <script>

    </script>

</body>

</html>