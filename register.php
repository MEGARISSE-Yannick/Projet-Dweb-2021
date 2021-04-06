<?php
// inclure le conifg.php
require_once "config.php";
 
// definir les variable avec des valeurs vides
$username = $password = $confirm_password = $email = "";
$username_err = $password_err = $confirm_password_err = $email_err = "";
 
// Traitement des données du formulaire lors de la soumission du formulaire
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Valider le nom d'utilisateur
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter a username.";
        } else{
        // Préparez le select
        $sql = "SELECT id FROM utilisateur WHERE username = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Lier des variables à l'instruction préparée en tant que paramètres
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            // Définir les paramètres
            $param_username = trim($_POST["username"]);
            
            // Tentative d'exécuter l'instruction préparée
            if(mysqli_stmt_execute($stmt)){
                /* résultats */
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $username_err = "This username is already taken.";
                } else{
                    $username = trim($_POST["username"]);
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Fermer la déclaration
            mysqli_stmt_close($stmt);
        }
    }
    // Validate email
    if(empty(trim($_POST["email"]))){
        $email_err = "Please enter a email.";
    } else{
        // Prepare a select statement
        $sql = "SELECT id FROM utilisateur WHERE email = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_email);
            
            // Définir les paramètres
            $param_email = trim($_POST["email"]);
            
            // Tentative d'exécuter l'instruction préparée
            if(mysqli_stmt_execute($stmt)){
                /* résultats */
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $email_err = "This email is already taken.";
                } else{
                    $email = trim($_POST["email"]);
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Fermer la déclaration
            mysqli_stmt_close($stmt);
        }
    }
    // Validate password
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter a password.";     
    } elseif(strlen(trim($_POST["password"])) < 6){
        $password_err = "Password must have atleast 6 characters.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Please confirm password.";     
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($password_err) && ($password != $confirm_password)){
            $confirm_password_err = "Password did not match.";
        }
    }
    
    // Check input errors before inserting in database
    if(empty($username_err) && empty($password_err) && empty($confirm_password_err) && empty($email_err)){
        
        // Prepare an insert statement
        $sql = "INSERT INTO utilisateur (username, email, password) VALUES (?, ?, ?)";
         
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sss", $param_username, $param_email, $param_password);
            
            // Définir les paramètres
            $param_username = $username;
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            $param_email = $email;

            
            // Tentative d'exécuter l'instruction préparée
            if(mysqli_stmt_execute($stmt)){
                // Redirect to login page
                header("location: login.php");
            } else{
                echo "Something went wrong. Please try again later.";
            }

            // Fermer la déclaration
            mysqli_stmt_close($stmt);
        }
    }
    
    // Fermez la connection
    mysqli_close($link);
}
?>
 
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    <script src="https://kit.fontawesome.com/a3be9883af.js" crossorigin="anonymous"></script>
    
</head>
<body>
<?php include("navbar.php"); ?>

    <div class="container">        
        <h2>Inscription</h2>
        <p>Remplissez le formulaire pour vous inscrire.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <img src="https://zupimages.net/up/21/14/0wqp.png" alt="" /></a>
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Nom d'utilisateur</label>
                <input type="text" name="username" class="form-control" value="<?php echo $username; ?>">
                <span class="help-block"><?php echo $username_err; ?></span>
            </div>    
            <div class="mb-3 form-group <?php echo (!empty($email_err)) ? 'has-error' : ''; ?>">
                <label for="exampleInputEmail1" class="form-label">Addresse email</label>
                <input type="email" class="form-control" name="email" value="<?php echo $email; ?>" aria-describedby="emailHelp ">
                <span class="help-block"><?php echo $email_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Mot de passe</label>
                <input type="password" name="password" class="form-control" value="<?php echo $password; ?>">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($confirm_password_err)) ? 'has-error' : ''; ?>">
                <label>Entrez à nouveau le mot de passe</label>
                <input type="password" name="confirm_password" class="form-control" value="<?php echo $confirm_password; ?>">
                <span class="help-block"><?php echo $confirm_password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Inscription">
                <a href="reset-password.php?id=" class="btn btn-primary "  >reset</a>
            </div>
            <p>Déjà inscrit ? <a href="login.php">Connectez vous</a>.</p>
        </form>
    </div>
     <?php include("footer.php"); ?>
  
</body>

</html>