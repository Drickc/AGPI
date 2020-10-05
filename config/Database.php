<?php

	define('HOST', 'localhost:3308');
	define('DBNAME', 'agpi_db');
	define('USER', 'root');
	define('MDP', '');

	//ETAPE 1 : Connexion à la BDD
	try {
		$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
		$bdd = new PDO('mysql:host='.HOST.';dbname='.DBNAME.';charset=utf8', USER, MDP, $options);
	}
	catch(Exception $e){
		echo $e->getMessage();
		
	}	