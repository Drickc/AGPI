<?php
    //Etape 2 Affichage d'un utilisateur Admin 
    require_once "config/Database.php";
    
    $identifiant = "Cedric";
    $mdp = "popo";

    $req = $bdd->prepare("SELECT * FROM t_login_user WHERE identifiant=:identifiant OR mdp=:mdp ");
    $req->bindParam(':identifiant', $identifiant);
    $req->bindParam(':mdp', $mdp);
	$req->execute();

    $donnees = $req->fetchAll(PDO::FETCH_ASSOC);
    var_dump($donnees);
    print_r($donnees);

?>