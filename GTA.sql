CREATE TABLE Characters (

id_character INTEGER PRIMARY KEY AUTOINCREMENT,
Name VarChar(50),
FirstName VarChar(50),
XP INTEGER,
SPE VarChar(50),
Level INTEGER,
Health INTEGER

);


CREATE TABLE Location ( 

id_location INTEGER PRIMARY KEY AUTOINCREMENT,
NameLocation VarChar(50)

);


CREATE Table Weapons (

id_weapons INTEGER PRIMARY KEY AUTOINCREMENT,
NameWeapons VarChar(50),
Type VarChar(50),
Power INTEGER

);

ALTER TABLE Weapons ADD COLUMN Price FLOAT;

CREATE TABLE Vehicles (

id_vehicles INTEGER PRIMARY KEY AUTOINCREMENT,
NameVehicles VarChar(50),
Type Varchar(50),
Color VarChar(50),
Price FLOAT

);

CREATE TABLE Sounds ( 

id_sounds INTEGER PRIMARY KEY AUTOINCREMENT,
NameSounds VarChar(50)

);

CREATE TABLE Mission ( 

id_mission INTEGER PRIMARY KEY AUTOINCREMENT,
NameMission VarChar(50),
state INTEGER

);

CREATE TABLE Clothes ( 

id_clothes INTEGER PRIMARY KEY AUTOINCREMENT,
NameClothes VarChar(50)

);

CREATE TABLE Action ( 

id_action INTEGER PRIMARY KEY AUTOINCREMENT,
NameAction VarChar(50)

);

CREATE TABLE Reward ( 

id_reward INTEGER PRIMARY KEY AUTOINCREMENT,
NameReward VarChar(50)

);

--- Structure BD => Clic droit sur la table "Reward" => Modfier => "AmountReward INTEGER" à la place de la ligne 75 -----

---- DEBUT RELATIONNEL -----


CREATE TABLE Char_Weapons (

id_character INTEGER,
id_Weapons INTEGER,
PRIMARY KEY (id_character, id_Weapons),

CONSTRAINT FK_Id_char_weapons FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_weap_weapons FOREIGN KEY (id_weapons) REFERENCES Weapons (id_weapons) ON DELETE CASCADE

);


CREATE TABLE Char_Vehicles (

id_character INTEGER,
id_Vehicles INTEGER,
PRIMARY KEY (id_character, id_Vehicles),

CONSTRAINT FK_Id_char_Vehicles FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_vehicles_Vehicles FOREIGN KEY (id_Vehicles) REFERENCES Vehicles (id_Vehicles) ON DELETE CASCADE

---- FAIL : 

);


CREATE TABLE Char_Mission (

id_character INTEGER,
id_Mission INTEGER,
PRIMARY KEY (id_character, id_Mission),

CONSTRAINT FK_Id_char_Mission FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_mission_Mission FOREIGN KEY (id_Mission) REFERENCES Vehicles (id_Mission) ON DELETE CASCADE

);


CREATE TABLE Char_Clothes (

id_character INTEGER,
id_Clothes INTEGER,
PRIMARY KEY (id_character, id_Clothes),

CONSTRAINT FK_Id_char_Clothes FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_clothes_Clothes FOREIGN KEY (id_Clothes) REFERENCES Vehicles (id_Clothes) ON DELETE CASCADE

);


CREATE TABLE Char_Mission (

id_character INTEGER,
id_Mission INTEGER,
PRIMARY KEY (id_character, id_Mission),

CONSTRAINT FK_Id_char_Mission FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_mission_Mission FOREIGN KEY (id_Mission) REFERENCES Vehicles (id_Mission) ON DELETE CASCADE

);


CREATE TABLE Char_Action (

id_character INTEGER,
id_Action INTEGER,
PRIMARY KEY (id_character, id_Action),

CONSTRAINT FK_Id_char_Action FOREIGN KEY (id_character) REFERENCES Characters (id_character) ON DELETE CASCADE,
CONSTRAINT FK_Id_act_Action FOREIGN KEY (id_Action) REFERENCES Vehicles (id_Action) ON DELETE CASCADE

);


CREATE TABLE Loc_Action (

id_Location INTEGER,
id_Action INTEGER,
PRIMARY KEY (id_Location, id_Action),

CONSTRAINT FK_Id_loc_Action FOREIGN KEY (id_Location) REFERENCES Location (id_Location) ON DELETE CASCADE,
CONSTRAINT FK_Id_act_Action FOREIGN KEY (id_Action) REFERENCES Vehicles (id_Action) ON DELETE CASCADE

);


CREATE TABLE Reward_Action (

id_Reward INTEGER,
id_Action INTEGER,
PRIMARY KEY (id_Reward, id_Action),

CONSTRAINT FK_Id_reward_Action FOREIGN KEY (id_Reward) REFERENCES Reward (id_Reward) ON DELETE CASCADE,
CONSTRAINT FK_Id_act_Action FOREIGN KEY (id_Action) REFERENCES Vehicles (id_Action) ON DELETE CASCADE

);

INSERT INTO Characters (Name, FirstName, XP, SPE, Level, Health) VALUES 

('De Santa', 'Michael', 1, 'Tireur d''élite', 1, 100),
('Phillips', 'Trevor', 1, 'Mastodonte de combat', 1, 100),
('Clinton', 'Franklin', 20, 'Conducteur', 1, 100);
