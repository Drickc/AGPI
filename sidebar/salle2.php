<!doctype html>
<html lang="en">
    <head>
      <title>A.G.P.I</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
      
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/style.css">
    </head>
      <body>
        <style>
          /* style css colour et margin */
          .row div:nth-child(1) {
              background: #fff200;
              margin: 15px;
          }
          .row div:nth-child(2) {
              background: #00a0dc;
              margin: 15px;
          }
          .row div:nth-child(3) {
              background: #fff200;
              margin: 15px;
          }
          .row div:nth-child(4) {
              background: #00a0dc;
              margin: 15px;
          }
          .row div:nth-child(5) {
              background: #fff200;
              margin: 15px;
          }
          .row div:nth-child(6) {
              background: #00a0dc;
              margin: 15px;
          }
          .row div:nth-child(7) {
              background: #fff200;
              margin: 15px;
          }
          .row div:nth-child(8) {
              background: #00a0dc;
              margin: 15px;
          }
          .row div:nth-child(9) {
              background: #fff200;
              margin: 15px;
          }
          .row div:nth-child(10) {
              background: #00a0dc;
              margin: 15px;
          }
        </style>
          
            <div class="container">
              <!-- Example row of columns -->
              <div class="row">
                <!-- debut boucle for pour grille salle -->
                  <?php
                  $salles = 10;
                  for ($i=1; $i<=$salles; $i++) { ?>

                  <div class="test">
                  <h1>salle n°<?php echo $i; ?></h1>
                  <p>Description de la salle n°<?php echo $i; ?></p>
                </div>
                <?php
                }
                ?>
              </div>
            </div>
  </body>
</html>