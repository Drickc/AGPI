<?php
session_start();
include('../../includes/header.php');
include('../../includes/sidebar.php');
include('../../includes/navbar.php');
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <?php
    include('../../traitements/database.php');
    $req = $bdd->prepare("SELECT id, T_Ordinateur_Id, T_Ecran_Id, T_Imprimante_Id, T_Clavier_Id, T_Souris_Id, T_Salle_Id FROM t_salle_detail WHERE id = :id");
    $req->bindParam(':id', $_GET['id']);
    $req->execute();
    $detail = $req->fetch();
    ?>

    <div><?= $detail['id'];?></div>
    <div><?= $detail['T_Imprimante_Id'];?></div>
</div>

<?php
include('../../includes/scripts.php');
include('../../includes/footer.php');
session_destroy();
?>

