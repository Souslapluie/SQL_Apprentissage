<?php







$BDD = new PDO('mysql:host=localhost;dbname=GestionLibrairie2','root','');

$Requete1 = $BDD->query('SELECT * FROM Fournisseurs');

	while ($Data1 = $Requete1->fetch()) {

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
