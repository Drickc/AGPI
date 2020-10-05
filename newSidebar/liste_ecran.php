
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style-origin.css">
  </head>

  <body>
    <div class="wrapper d-flex align-items-stretch">
      <!--Sidebar-->
      <?php include('sidebar.php'); ?>
        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5">
          <h1>Test - Liste des écrans </h1>
        <!-- <div class="row">
        </div> -->
          <div class="row">
            <table class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th>id_Ecran</th>
                  <th>Référence</th>
                  <th>Type</th>
                  <th>Modéle</th>
                  <th>HDMI</th>
                  <th>VGA</th>
                  <th>DVI</th>
                  <th>Display_Port</th>
                  <th>Salle_Id</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  $getEcrans =$bdd->prepare('SELECT * FROM t_ecran');
                  $getEcrans->execute();
                  if($getEcrans->rowCount() > 0) {
                    while ($row = $getEcrans->fetch()){
                      echo '<tr>';
                      echo '<td>'.$row['id'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['ref'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['type'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['modele'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['hdmi'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['vga'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['dvi'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['display_port'].'</td>'. PHP_EOL;
                      echo '<td>'.$row['salle_Id'].'</td>'. PHP_EOL;
                      echo '<td>' . PHP_EOL;
                      echo '<a class="btn btn-default" href="read.php?id='.$row['id'].'">Read</a>' . PHP_EOL;
                      echo '<a class="btn btn-success" href="update.php?id='.$row['id'].'">Update</a>' . PHP_EOL;
                      echo '<a class="btn btn-danger" href="delete.php?id='.$row['id'].'">Delete</a>' . PHP_EOL;
                      echo '</td>' . PHP_EOL;
                      echo '</tr>' . PHP_EOL;
                    }
                  } else {
                    echo '<tr>';
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '<td>Nothing here...</td>' . PHP_EOL;
                        echo '</tr>';
                  }
                ?>
              </tbody>
            </table>
        </div>
    </div>
  </body>
</html>

