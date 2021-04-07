<?php


include('index.html');




$BDD = new PDO('mysql:host=localhost;dbname=gestionlibrairie2','root','');
#private PDO::query ( string $BDD ) : PDOStatement

$Requete1 = $BDD->query('SELECT * FROM Fournisseurs');
$BDD->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

trigger_error("PDO errorInfo: ".$BDD->errorInfo());

	while ($Data1 = $Requete1 -> fetch()) {

		echo '<p>'.$Data1['Code_fournisseur'].'</p>';
		echo '<p>'.$Data1['raison_sociale'].'</p>';
		echo '<p>'.$Data1['Rue_fournisseur'].'</p>';
		echo '<p>'.$Data1['Code_Postal'].'</p>';
		echo '<p>'.$Data1['Localite'].'</p>';
		echo '<p>'.$Data1['Pays'].'</p>';
		echo '<p>'.$Data1['Tel_fournisseur'].'</p>';
		echo '<p>'.$Data1['Url_fournisseur'].'</p>';
		echo '<p>'.$Data1['Email_fournisseur'].'</p>';
		echo '<p>'.$Data1['Fax_fournisseur'].'</p>';

	}

$Requete1->closeCursor();


?>
