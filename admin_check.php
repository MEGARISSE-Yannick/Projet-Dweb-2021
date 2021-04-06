<?php
    if (!isset($_SESSION['role']) == ['client']) {
        include('navbar-client.php');
   } else {
        include('navbar.php');
        exit(); // Afin que la suite du code ne s'exécute pas
    }

    ?>