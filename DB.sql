REM   Script: DB_PROJECT
REM   Database project

CREATE TABLE Armor (
    item_id int NOT NULL,
    armor_value int NOT NULL
);

CREATE TABLE Class_1 (
    class_id int NOT NULL,
    class_name varchar (20) -- 20 bytes--
);

CREATE TABLE Consumable (
    item_id int NOT NULL,
    item_effect varchar(20) -- 20 bytes is the max for item effect
);

CREATE TABLE Equipment (
    item_id int NOT NULL,
    strength_required int NOT NULL,
    skill_required int NOT NULL,
    charisma_required int NOT NULL,
    class_required int NOT NULL,
    endurance_class_required int NOT NULL,
    dexterity_class_required int NOT NULL,
    intelligence_class_required int NOT NULL
);

CREATE TABLE Inventory (
    player_name varchar (20), --20 bytes is maximum 
    item_id int NOT NULL,
    item_name varchar (20), --20 bytes is maximum 
    equipped_weapon varchar (20), --20 bytes is maximum 
    equipped_armor varchar (20), --20 bytes is maximum 
    current_size int NOT NULL,
    max_size int NOT NULL
);

CREATE TABLE Item (
    item_id int NOT NULL,
    item_name varchar (20), --20 bytes is maximum
    price int NOT NULL
);

CREATE TABLE Player (
    player_name varchar (20), --20 bytes is maximum
    class_id int NOT NULL,
    current_health int NOT NULL,
    max_health int NOT NULL,
    max_mana int NOT NULL,
    current_mana int NOT NULL,
    level_ int NOT NULL,
    gold int NOT NULL,
    endurance int NOT NULL,
    dexterity int NOT NULL,
    intelligence int NOT NULL,
    charisma int NOT NULL,
    strength int NOT NULL,
    skill int NOT NULL
);

CREATE TABLE Skill (
    skill_id int NOT NULL,
    skill_name varchar (20), --20 bytes is maximum
    skill_effect varchar (20), --20 bytes is maximum
    level_requirement int NOT NULL,
    training_cost int NOT NULL,
    strength_required int NOT NULL,
    endurance_required int NOT NULL,
    dexterity_required int NOT NULL, 
    skill_required int NOT NULL,
    intelligence_required int NOT NULL,
    charisma_required int NOT NULL
);

CREATE TABLE Skill_Cooldown (
    skill_id int NOT NULL,
    mana_cost int NOT NULL,
    cooldown_time int NOT NULL --in seconds--
);

CREATE TABLE Stat_bonus (
    item_id int NOT NULL,
    stat_bonus int NOT NULL
);

CREATE TABLE Weapon (
    item_id int NOT NULL,
    attack_power int NOT NULL
);

ALTER TABLE Class_1
ADD CONSTRAINT Class_pkey 
PRIMARY KEY (class_id);

ALTER TABLE Consumable
ADD CONSTRAINT Consumable_pkey 
PRIMARY KEY (item_id);

ALTER TABLE Equipment
ADD CONSTRAINT Equipment_pkey 
PRIMARY KEY (item_id);

ALTER TABLE Inventory
ADD CONSTRAINT Inventory_pkey 
PRIMARY KEY (player_name,item_id);

ALTER TABLE Player
ADD CONSTRAINT Player_pkey PRIMARY KEY (player_name,class_id);

ALTER TABLE Skill_Cooldown
    ADD CONSTRAINT Skill_Cooldown_pkey PRIMARY KEY (skill_id);

ALTER TABLE Skill
    ADD CONSTRAINT Skill_pkey PRIMARY KEY (skill_id);

ALTER TABLE Stat_bonus
    ADD CONSTRAINT Stat_bonus_pkey PRIMARY KEY (item_id);

ALTER TABLE Armor
    ADD CONSTRAINT Armor_pkey PRIMARY KEY (item_id);

ALTER TABLE Weapon
    ADD CONSTRAINT Weapon_pkey PRIMARY KEY (item_id);

ALTER TABLE Item
    ADD CONSTRAINT item_pkey PRIMARY KEY (item_id);

INSERT INTO Class_1 VALUES (1, 'Berserker');
INSERT INTO Class_1 VALUES (2, 'Paladin');
INSERT INTO Class_1 VALUES (3, 'Priest');
INSERT INTO Class_1 VALUES (4, 'Mage');
INSERT INTO Class_1 VALUES (5, 'Thief');
INSERT INTO Class_1 VALUES (6, 'Druid');
INSERT INTO Class_1 VALUES (7, 'Warlock');
INSERT INTO Class_1 VALUES (8, 'Hunter');
INSERT INTO Class_1 VALUES (9, 'Juggernaut');
INSERT INTO Class_1 VALUES (10, 'Ninja');

INSERT INTO Player VALUES ('Kratos', 1, 100, 100, 40, 40, 1, 0, 6, 5, 2, 1, 7, 3);
INSERT INTO Player VALUES ('Arthas', 2, 90, 90, 70, 70, 1, 0, 6, 2, 5, 5, 5, 2);
INSERT INTO Player VALUES ('Benedict', 3, 70, 70, 90, 90, 1, 0, 5, 2, 5, 5, 1, 2);
INSERT INTO Player VALUES ('Jaina', 4, 60, 60, 100, 100, 1, 0, 4, 3, 11, 3, 1, 3);
INSERT INTO Player VALUES ('Robin Hood', 5, 75, 75, 50, 50, 1, 100, 3, 5, 3, 6, 2, 6);
INSERT INTO Player VALUES ('Cenarius', 6, 80, 80, 65, 65, 1, 0, 5, 4, 3, 4, 5, 4);
INSERT INTO Player VALUES ('Malphor', 7, 70, 70, 80, 80, 1, 0, 8, 2, 8, 3, 1, 3);
INSERT INTO Player VALUES ('Artemis', 8, 65, 65, 60, 60, 1, 0, 4, 6, 3, 2, 3, 7);
INSERT INTO Player VALUES ('Zangief', 9, 150, 150, 30, 30, 1, 0, 8, 5, 2, 1, 6, 3);
INSERT INTO Player VALUES ('Naruto', 10, 75, 75, 60, 60, 1, 0, 6, 6, 3, 1, 3, 6);


INSERT INTO Stat_bonus VALUES (1, 50);
INSERT INTO Stat_bonus VALUES (2, 43);
INSERT INTO Stat_bonus VALUES (7, 90);
INSERT INTO Stat_bonus VALUES (8, 12);
INSERT INTO Stat_bonus VALUES (9, 22);
INSERT INTO Stat_bonus VALUES (10, 33);
INSERT INTO Stat_bonus VALUES (11, 20);
INSERT INTO Stat_bonus VALUES (12, 30);
INSERT INTO Stat_bonus VALUES (13,35);
INSERT INTO Stat_bonus VALUES (14,34);

INSERT INTO Skill_Cooldown VALUES (1, 21, 12);
INSERT INTO Skill_Cooldown VALUES (2, 23, 22);
INSERT INTO Skill_Cooldown VALUES (3, 32, 24);
INSERT INTO Skill_Cooldown VALUES (4, 64, 32);
INSERT INTO Skill_Cooldown VALUES (5, 32, 10);
INSERT INTO Skill_Cooldown VALUES (6, 45, 30);
INSERT INTO Skill_Cooldown VALUES (7, 23, 55);
INSERT INTO Skill_Cooldown VALUES (8, 10, 29);
INSERT INTO Skill_Cooldown VALUES (9, 39, 44);
INSERT INTO Skill_Cooldown VALUES (10, 48, 27);

INSERT INTO Skill VALUES (1, 'Cleave', 'AOE Damage', 1, 50, 0, 6, 0, 0, 0, 0);
INSERT INTO Skill VALUES (2, 'Meteor', 'AOE Damage', 3, 100, 0, 0, 0, 7, 10, 0);
INSERT INTO Skill VALUES (3, 'Barrage', 'Damage', 3, 65, 0, 6, 0, 1, 0, 0);
INSERT INTO Skill VALUES (4, 'Stealth', 'Invisibility', 5, 75, 0, 7, 0, 2, 0, 0);
INSERT INTO Skill VALUES (5, 'Cleanse', 'Debuff Cure', 5, 50, 0, 6, 0, 0, 8, 0);
INSERT INTO Skill VALUES (6, 'Thrust', 'Damage', 5, 40, 0, 0, 0, 8, 0, 0);
INSERT INTO Skill VALUES (7, 'Hex', 'Debuff', 7, 120, 0, 3, 0, 0, 0, 6);
INSERT INTO Skill VALUES (8, 'Frenzy', 'Buff', 7, 150, 0, 0, 4, 0, 2, 3);
INSERT INTO Skill VALUES (9, 'Flurry', 'Damage', 7, 250, 0, 6, 2, 0, 4, 0);
INSERT INTO Skill VALUES (10, 'Evasion', 'Buff', 9, 150, 3, 6, 0, 0, 2, 0);

INSERT INTO Consumable VALUES (1, 'Speed');
INSERT INTO Consumable VALUES (2, 'Agility');
INSERT INTO Consumable VALUES (3, 'Healing');
INSERT INTO Consumable VALUES (4, 'Regeneration');
INSERT INTO Consumable VALUES (5, 'X-ray');
INSERT INTO Consumable VALUES (6, 'Accuracy');
INSERT INTO Consumable VALUES (7,'Extra life');
INSERT INTO Consumable VALUES (8,'Random weapon box');
INSERT INTO Consumable VALUES (9, 'Fire enhancement');
INSERT INTO Consumable VALUES (10, 'Super Strength');
INSERT INTO Consumable VALUES (11,'Camoflauge');
INSERT INTO Consumable VALUES (12,'Death');
INSERT INTO Consumable VALUES (13, 'Telepathy');
INSERT INTO Consumable VALUES (14, 'Walk on water');

INSERT INTO Inventory VALUES ('Kratos', 3, 'HP Potion', 'Axe', '', 2, 20);
INSERT INTO Inventory VALUES ('Arthas', 3, 'HP Potion', 'Sword', 'Shield', 3, 20);
INSERT INTO Inventory VALUES ('Benedict', 4, 'Mana Potion', 'Staff', '', 2, 20);
INSERT INTO Inventory VALUES ('Jaina', 4, 'Mana Potion', 'Staff', '', 2, 20);
INSERT INTO Inventory VALUES ('Robin Hood', 3, 'HP Potion', 'Bow', '', 2, 20);
INSERT INTO Inventory VALUES ('Cenarius', 3, 'HP Potion', 'Staff', '', 2, 20);
INSERT INTO Inventory VALUES ('Malphor', 4, 'Mana Potion', 'Staff', '', 2, 20);
INSERT INTO Inventory VALUES ('Artemis', 3, 'HP Potion', 'Bow', '', 2, 20);
INSERT INTO Inventory VALUES ('Zangief', 3, 'HP Potion', 'Sword', 'Shield', 3, 20);
INSERT INTO Inventory VALUES ('Naruto', 3, 'HP Potion', 'Dagger', '', 2, 20);

INSERT INTO Item VALUES (1, 'Sword', 60);
INSERT INTO Item VALUES (2, 'Shield', 40);
INSERT INTO Item VALUES (3, 'HP Potion', 15);
INSERT INTO Item VALUES (4, 'Mana Potion', 20);
INSERT INTO Item VALUES (5, 'Antidote', 5);
INSERT INTO Item VALUES (6, 'Charm', 10);
INSERT INTO Item VALUES (7, 'Staff', 80);
INSERT INTO Item VALUES (8, 'Axe', 100);
INSERT INTO Item VALUES (9, 'Dagger', 50);
INSERT INTO Item VALUES (10, 'Bow', 60);
INSERT INTO Item VALUES (11, 'Witchcraft', 90);
INSERT INTO Item VALUES (12, 'Poison arrow', 90);
INSERT INTO Item VALUES (13, 'Slingshot', 95);
INSERT INTO Item VALUES (14, 'Fire', 70);

INSERT INTO Weapon VALUES (15,  60);
INSERT INTO Weapon VALUES (16, 40);
INSERT INTO Weapon VALUES (17, 80);
INSERT INTO Weapon VALUES (18, 80);
INSERT INTO Weapon VALUES (19, 50);
INSERT INTO Weapon VALUES (20, 60);
INSERT INTO Weapon VALUES (21, 90);
INSERT INTO Weapon VALUES (22, 90);
INSERT INTO Weapon VALUES (23,95);
INSERT INTO Weapon VALUES (24,70);
INSERT INTO Armor VALUES (25, 14);
INSERT INTO Armor VALUES (26, 24);
INSERT INTO Armor VALUES (27, 44);
INSERT INTO Armor VALUES (28, 34);
INSERT INTO Armor VALUES (29, 40);
INSERT INTO Armor VALUES (30, 32);
INSERT INTO Armor VALUES (31,65);
INSERT INTO Armor VALUES (32,39);
INSERT INTO Armor VALUES (33, 77);
INSERT INTO Armor VALUES (34, 27);


INSERT INTO Equipment VALUES (1, 0, 0, 0,122,17 ,32 ,25);
INSERT INTO Equipment VALUES (2, 0, 7, 0,112,19 ,33 ,26);
INSERT INTO Equipment VALUES (3, 0, 1, 0,192,15 ,99 ,91);
INSERT INTO Equipment VALUES (4, 0, 2, 0,170,15 ,33 ,34);
INSERT INTO Equipment VALUES (5, 0, 0, 0,122,16 ,95 ,54);
INSERT INTO Equipment VALUES (6, 0, 8, 0,132,18 ,91 ,32);
INSERT INTO Equipment VALUES (7, 0, 0, 6,111,12 ,42 ,81);
INSERT INTO Equipment VALUES (8, 0, 0, 3,121,12 ,61 ,82);
INSERT INTO Equipment VALUES (9, 0, 0, 0,120,19 ,65 ,39);
INSERT INTO Equipment VALUES (10, 3, 0, 0, 132,10 ,71 ,26);
INSERT INTO Equipment VALUES (11, 10, 48, 10,112,139 ,300 ,399);
INSERT INTO Equipment VALUES (12, 9, 40, 3,122,130 ,310 ,290);
INSERT INTO Equipment VALUES (13, 12, 12, 12,132,140 ,200 ,299);
INSERT INTO Equipment VALUES (14, 15, 20, 31,133,141 ,311 ,350);
INSERT INTO Equipment VALUES (15, 23, 30, 19,111,151 ,210 ,341);
INSERT INTO Equipment VALUES (16, 33, 42, 18,110,180 ,301 ,361);
INSERT INTO Equipment VALUES (17, 44, 52, 11,109,183 ,303 ,371);
INSERT INTO Equipment VALUES (18, 81, 21, 21,130,185 ,330 ,281);
INSERT INTO Equipment VALUES (19, 17, 52, 30,139,190 ,351 ,307);
INSERT INTO Equipment VALUES (20, 19, 23, 45,141,191 ,371 ,373);
INSERT INTO Equipment VALUES (21, 21, 11, 32,151,122 ,322 ,341);
INSERT INTO Equipment VALUES (22, 12, 23, 21,155,100 ,388 ,355);
INSERT INTO Equipment VALUES (23, 30, 45, 9,180,91,366,388);
INSERT INTO Equipment VALUES (24, 49, 12, 4,112,140,365,391);
INSERT INTO Equipment VALUES (26, 50, 43, 12,190,141,342,312);
INSERT INTO Equipment VALUES (27, 47, 30, 10,199,122,339,334);
INSERT INTO Equipment VALUES (28, 21, 41, 28,112,131,341,333);
INSERT INTO Equipment VALUES (29, 32, 21, 20,121,145,350,319);
INSERT INTO Equipment VALUES (30, 41, 32, 31,112,147,381,320);
INSERT INTO Equipment VALUES (31, 11, 22, 19,90,151,391,319);
INSERT INTO Equipment VALUES (32, 10, 41, 21,130,139 ,201,361);
INSERT INTO Equipment VALUES (33, 7, 40, 11,160,130,343,353);
INSERT INTO Equipment VALUES (34, 48, 13, 3,175,155,399,335);
