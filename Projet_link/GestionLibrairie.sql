CREATE DATABASE GestionLibrairie 

---------------

CREATE TABLE Fournisseur (

Code_Fournisseur INTEGER PRIMARY KEY AUTO_INCREMENT


);

-----------

ALTER TABLE Fournisseur ADD Raison_sociale VARCHAR(20);

---

ALTER TABLE Fournisseur ADD Rue_fournisseur Varchar(50);
ALTER TABLE Fournisseur ADD Code_postal BIGINT;
ALTER TABLE Fournisseur ADD Localite Varchar(50);
ALTER TABLE Fournisseur ADD Pays Varchar(30);
ALTER TABLE Fournisseur ADD Tel_fournisseur Varchar(20);
ALTER TABLE Fournisseur ADD Url_fournisseur Varchar(200);
ALTER TABLE Fournisseur ADD Email_fournisseur Varchar(100);
ALTER TABLE Fournisseur ADD Fax_fournisseur Varchar(20);

--------------

INSERT INTO Fournisseur (Code_fournisseur, Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

(concat('F', Code_Fournisseur), 'Eyrolles', '61 rue St Germain', 75240, 'Paris', 'France',
'00 33 1 44 41 11 11', 'http://www.editions-eyrolles.com', 'contact@editions-eyrolles.com',
'00 33 1 44 41 11 10');

---

-- Via interface graphique  = UPDATE `fournisseur` SET `Code_Fournisseur` = 'F1' WHERE `fournisseur`.`Code_Fournisseur` = 1; 
--Tentative changement key	= Fail car n'est pas un INTEGER
-- 					Retour  = UPDATE `fournisseur` SET `Code_Fournisseur` = '1' WHERE `fournisseur`.`Code_Fournisseur` = 0; 


INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('First_interactive', '27 boulevard Bargue', '75015', 'Paris',	
'France',	'00 33 1 45 49 60 00',	'http://www.efirst.com/',
'contact@efirst.com', '00 33 1 45 49 60 05');

---

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays) VALUES

('Eni eds',	'5 cours du Temple', 1201,	'Geneve', 'Suisse');

-------------------------	

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Dunod', '25 rue de Rivoli', 75002, 'Paris', 'France', '00 33 1 40 46 35 00', 'http://www.dunod.com', 'contact@dunod.com', '00 33 1 40 46 3505');

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Campuspress', '47 impasse des Vinaigriers', 75010, 'Paris', 'France', '00 33 1 72 74 90 00',  'http://www.campuspress.fr', 'contact@campuspress.fr', '01 72 74 9010');

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

("O'reilly", '1005 square Gravenstein', 9542, 'Sebastopol,CA', 'USA', '00 1 707 827 7000', 'http://www.oreilly.com', 'contact@oreilly.com',
'707 827 7004');

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Peachpit Press', '1249 Eighth', 94710, 'Berkeley,CA', 'USA', '00 1 510 524 2178',  'http://www.peachpit.com/', 'contact@peachpit.com', '800 283 9444');

----------------------------------------------------------------

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Micro applications', '19 rue du Marais', 1228, 'Plan les ouates', 'Suisse', '00 41 22 884 18 08', 'http://www.microapp.com', 'contact@microapp.com', '00 41 22 884 18 10');

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Economica', '1201 Bd de Lausanne', 1201, 'Geneve', 'Suisse', '00 41 22 327 56 89', 'http://www.economica.com', 'contact@economica.com', '00 41 223 27 56 86');

INSERT INTO Fournisseur (Raison_sociale, 
Rue_fournisseur, Code_postal, Localite, Pays, Tel_fournisseur, Url_fournisseur,
Email_fournisseur, Fax_fournisseur) VALUES 

('Microsoft Press', '3 square Richtistrasse', 8304, 'Zurich', 'Suisse', '00 41 84 822 44 88', 'http://www.mirosoft.com/mspress', 'contact@mirosoft.com', '00 41 848 22 44 89');


