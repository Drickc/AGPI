<style>
.test{
    height : 100px;
    width: 180px;
    border: 1px solid black;
}

</style>

<?php
/* exemple 1 */
$salles = 9;
for ($i=1; $i<=$salles; $i++) { ?>

<div class="test">
<h1>salle n°<?php echo $i; ?></h1>
<p>Description de la salle n°<?php echo $i; ?></p>
</div>

<?php

}

        
         

    