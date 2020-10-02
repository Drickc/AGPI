<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container">
<div class="row">
<h3> CRUD </h3>
</div>
<div class="row">
<table class="table table-striped table-bordered">
<thead>
  <tr>
    <th>identifiant</th>
    <th>mdp</th>
    </tr>
</thead>
<tbody>
<?php 
include 'config/database.php';
$pdo = Database::connect();
$sql = 'SELECT * FROM t_login_user ORDER BY id DESC';
foreach ($pdo->query($sql) as $row) {
echo '<tr>';
echo '<td>' . $row['identifiant'] . '</td>';
echo '<td>' . $row['mdp'] . '</td>';
echo '</tr>';
}
Database::disconnect();
?>
</tbody>
</table>
</div>
</div> <!-- /container -->
</body>
</html>