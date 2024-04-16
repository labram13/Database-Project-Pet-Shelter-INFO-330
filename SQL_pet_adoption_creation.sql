
IF DB_ID('pet_adoption_db') IS NOT NULL
    DROP DATABASE pet_adoption_db;
GO

CREATE DATABASE pet_adoption_db;
GO
------- Shelter, Donation, Interview Tables


--Shelter
IF OBJECT_ID('Shelter') IS NOT NULL
    DROP TABLE Shelter;
GO
CREATE TABLE Shelter (
    shelter_id INT PRIMARY KEY,
    Shelter_Name VARCHAR(50) NOT NULL,
    Operating_Hours VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Contact_Information VARCHAR(20) NOT NULL
);
INSERT INTO Shelter (shelter_id, Shelter_Name, Operating_Hours, Location, Contact_Information)
VALUES
    (1, 'Happy Paws Shelter', '9:00 AM - 6:00 PM', '123 Main St, Cityville', '2056378491'),
    (2, 'Cozy Critters Haven', '10:00 AM - 7:00 PM', '456 Oak St, Townsville', '2056378492'),
    (3, 'Safe Haven for Pets', '8:00 AM - 5:00 PM', '789 Pine St, Villagetown', '2056378493'),
    (4, 'Sunshine Pet Sanctuary', '11:00 AM - 8:00 PM', '101 Sunny Lane, Beach City', '2056378494'),
    (5, 'Whisker Wonderland', '9:00 AM - 6:00 PM', '222 Feline Ave, Kittyville', '2056378495'),
    (6, 'Paws and Claws Retreat', '8:00 AM - 5:00 PM', '333 Pawprint Dr, Dogtown', '2056378496'),
    (7, 'Feathered Friends Haven', '10:00 AM - 7:00 PM', '444 Aviary St, Birdsville', '2056378497'),
    (8, 'Scales and Tails Refuge', '9:00 AM - 6:00 PM', '555 Reptile Rd, Slitherville', '2056378498'),
    (9, 'Bunny Bliss Center', '8:00 AM - 5:00 PM', '666 Hoppity Ln, Rabbitville', '2056378499'),
    (10, 'Horse Haven', '11:00 AM - 8:00 PM', '777 Equine Ave, Stableville', '2056378500'),
    (11, 'Forever Home for Ferrets', '10:00 AM - 7:00 PM', '888 Ferret Blvd, Furrytown', '2056378501'),
    (12, 'Tropical Tank Retreat', '9:00 AM - 6:00 PM', '999 Aquarium Ln, Fishville', '2056378502'),
    (13, 'Loving Lap Lodge', '8:00 AM - 5:00 PM', '111 Cuddle Ct, Snuggle City', '2056378503'),
    (14, 'Wildlife Wonders Refuge', '10:00 AM - 7:00 PM', '222 Wilderness Way, Natureville', '2056378504'),
    (15, 'Zen Zoo Retreat', '9:00 AM - 6:00 PM', '333 Tranquil Trail, Harmonyville', '2056378505'),
    (16, 'Furry Farmstead', '8:00 AM - 5:00 PM', '444 Cozy Corner, Homestead', '2056378506'),
    (17, 'Aquatic Bliss Bay', '11:00 AM - 8:00 PM', '555 Waterfront Rd, Baytown', '2056378507'),
    (18, 'Purr-fect Meadows', '9:00 AM - 6:00 PM', '666 Kitty Corner, Meadowville', '2056378508'),
    (19, 'Canine Comfort Cove', '8:00 AM - 5:00 PM', '777 Doggy Dr, Comfortville', '2056378509'),
    (20, 'Avian Serenity Spot', '10:00 AM - 7:00 PM', '888 Feather Ln, Serenaville', '2056378510'),
    (21, 'Reptile Retreat', '9:00 AM - 6:00 PM', '999 Sssslither St, Reptileville', '2056378511'),
    (22, 'Hoppy Haven', '8:00 AM - 5:00 PM', '111 Bunny Bounce, Hareville', '2056378512'),
    (23, 'Equine Elysium', '11:00 AM - 8:00 PM', '222 Gallop Blvd, Equinetown', '2056378513'),
    (24, 'Furry Feathery Friends', '10:00 AM - 7:00 PM', '333 Menagerie Dr, Animalopolis', '2056378514'),
    (25, 'Fintastic Oceanarium', '9:00 AM - 6:00 PM', '444 Coral Cove, Oceanville', '2056378515'),
    (26, 'Critter Cuddle Cabin', '8:00 AM - 5:00 PM', '555 Snuggle St, Cuddleburg', '2056378516'),
    (27, 'Feathertail Haven', '10:00 AM - 7:00 PM', '666 Plume Pl, Birdington', '2056378517'),
    (28, 'Slithery Sanctuary', '9:00 AM - 6:00 PM', '777 Scale St, Ssssnuggle', '2056378518'),
    (29, 'Bouncy Bunny Burrow', '8:00 AM - 5:00 PM', '888 Jump Rd, Hoppington', '2056378519'),
    (30, 'Stable Snuggle Spot', '11:00 AM - 8:00 PM', '999 Stable St, Snuggleville', '2056378520'),
    (31, 'Ferret Frolic Farm', '10:00 AM - 7:00 PM', '111 Playful Pl, Frolictown', '2056378521'),
    (32, 'Aqua Haven', '9:00 AM - 6:00 PM', '222 Serene Sea, Aquaville', '2056378522'),
    (33, 'Leafy Lap Lodge', '8:00 AM - 5:00 PM', '333 Verdant View, Greenburg', '2056378523'),
    (34, 'Galloping Grove', '11:00 AM - 8:00 PM', '444 Meadow Mews, Horseburg', '2056378524'),
    (35, 'Paw-some Paddocks', '9:00 AM - 6:00 PM', '555 Petal Pl, Bloomington', '2056378525'),
    (36, 'Feathery Retreat', '8:00 AM - 5:00 PM', '666 Winged Way, Featherfall', '2056378526'),
    (37, 'Slithering Serenity', '10:00 AM - 7:00 PM', '777 Serpent St, Slythertown', '2056378527'),
    (38, 'Bouncing Bunny Bungalow', '9:00 AM - 6:00 PM', '888 Jumping Jack, Bounceville', '2056378528'),
    (39, 'Equestrian Eden', '8:00 AM - 5:00 PM', '999 Equine Easeway, Stableburg', '2056378529'),
    (40, 'Ferret Friendly Farm', '11:00 AM - 8:00 PM', '111 Ferret Fields, Ferretland', '2056378530'),
    (41, 'Reef Refuge', '10:00 AM - 7:00 PM', '222 Oceanic Oasis, Reefville', '2056378531'),
    (42, 'Woodland Wonders Lodge', '9:00 AM - 6:00 PM', '333 Timber Trail, Forestburg', '2056378532'),
    (43, 'Mountain Critter Sanctuary', '8:00 AM - 5:00 PM', '777 Peak Rd, Summitville', '2056378533'),
    (44, 'Ocean Paws Paradise', '10:00 AM - 7:00 PM', '888 Wave Blvd, Coastal City', '2056378534'),
    (45, 'Sky High Aviary', '9:00 AM - 6:00 PM', '999 Cloud St, Skytown', '2056378535'),
    (46, 'Mystical Menagerie', '8:00 AM - 5:00 PM', '111 Enchanted End, Magicville', '2056378536'),
    (47, 'Celestial Creature Corner', '11:00 AM - 8:00 PM', '222 Starry St, Celestia', '2056378537'),
    (48, 'Lively Lagoon Lodge', '10:00 AM - 7:00 PM', '333 Ripple Rd, Aquatica', '2056378538'),
    (49, 'Plush Pet Pavilion', '9:00 AM - 6:00 PM', '444 Cozy Cushion, Softville', '2056378539'),
    (50, 'Harmony Haven', '8:00 AM - 5:00 PM', '555 Serene St, Calmville', '2056378540');
SELECT * FROM Shelter;


IF OBJECT_ID('Donation') IS NOT NULL
    DROP TABLE Donation;
GO
CREATE TABLE Donation (
    donation_id INT PRIMARY KEY,
    Donor_Information VARCHAR(100) NOT NULL,
    Donating_Amount DECIMAL(10, 2) NOT NULL,
    Donation_Time DATETIME NOT NULL
);
INSERT INTO Donation (donation_id, Donor_Information, Donating_Amount, Donation_Time)
VALUES
    (102548, 'John Doe', 100.00, '2023-01-01 12:30:00'),
    (305789, 'Jane Smith', 50.00, '2023-01-02 14:45:00'),
    (408523, 'Robert Johnson', 75.50, '2023-01-03 09:15:00'),
    (607214, 'Emily Davis', 120.00, '2023-01-04 17:20:00'),
    (804671, 'Michael Wilson', 200.00, '2023-01-05 11:10:00'),
    (905432, 'Olivia Brown', 30.00, '2023-01-06 16:00:00'),
    (120987, 'Daniel Taylor', 80.00, '2023-01-07 13:25:00'),
    (140326, 'Sophia Martinez', 150.50, '2023-01-08 10:45:00'),
    (160954, 'William Anderson', 45.00, '2023-01-09 18:30:00'),
    (180215, 'Emma Jackson', 90.00, '2023-01-10 15:05:00'),
    (200547, 'Aiden Thomas', 110.00, '2023-01-11 12:40:00'),
    (220369, 'Mia White', 60.00, '2023-01-12 14:15:00'),
    (240815, 'James Harris', 85.00, '2023-01-13 09:50:00'),
    (260134, 'Isabella Turner', 70.50, '2023-01-14 16:35:00'),
    (280679, 'Ethan Scott', 40.00, '2023-01-15 11:20:00'),
    (300482, 'Ava Hall', 95.00, '2023-01-16 13:55:00'),
    (320798, 'Alexander Adams', 120.00, '2023-01-17 18:10:00'),
    (340127, 'Sophie Baker', 55.50, '2023-01-18 10:30:00'),
    (360239, 'Benjamin Wright', 75.00, '2023-01-19 15:45:00'),
    (380561, 'Chloe Martin', 110.50, '2023-01-20 12:05:00'),
    (400874, 'Jackson Reed', 65.00, '2023-01-21 16:20:00'),
    (420586, 'Lily Murphy', 85.00, '2023-01-22 09:40:00'),
    (440935, 'Christopher Cook', 50.50, '2023-01-23 14:55:00'),
    (460218, 'Grace Kelly', 100.00, '2023-01-24 11:15:00'),
    (480375, 'Daniel Turner', 30.50, '2023-01-25 13:40:00'),
    (500794, 'Ella Bryant', 120.00, '2023-01-26 18:05:00'),
    (520673, 'Ryan Brooks', 80.50, '2023-01-27 10:25:00'),
    (540926, 'Avery Miller', 45.00, '2023-01-28 15:50:00'),
    (560348, 'Nathan Cox', 70.00, '2023-01-29 12:10:00'),
    (580147, 'Hannah Long', 130.50, '2023-01-30 16:25:00'),
    (600359, 'David Reed', 55.00, '2023-01-31 09:45:00'),
    (620481, 'Aria Turner', 90.50, '2023-02-01 14:00:00'),
    (640596, 'Joseph Murphy', 110.00, '2023-02-02 11:20:00'),
    (660794, 'Abigail Hall', 65.50, '2023-02-03 15:35:00'),
    (680165, 'Andrew Martin', 75.00, '2023-02-04 12:55:00'),
    (700942, 'Emily Reed', 40.50, '2023-02-05 17:10:00'),
    (720437, 'Christopher Scott', 95.00, '2023-02-06 10:30:00'),
    (740628, 'Harper Adams', 120.50, '2023-02-07 14:45:00'),
    (760743, 'William Turner', 50.00, '2023-02-08 12:05:00'),
    (780314, 'Madison Baker', 80.50, '2023-02-09 16:20:00'),
    (800697, 'Liam Martin', 110.00, '2023-02-10 09:40:00'),
    (820961, 'Evelyn Harris', '60.50', '2023-02-11 14:55:00'),
    (840278, 'Noah Cook', 85.00, '2023-02-12 12:15:00'),
    (860523, 'Emma Bryant', '30.50', '2023-02-13 16:30:00'),
    (880345, 'James Turner', 100.00, '2023-02-14 11:50:00'),
    (900472, 'Ava Adams', '55.50', '2023-02-15 15:05:00'),
    (920193, 'Logan Wright', 70.00, '2023-02-16 12:25:00'),
    (940586, 'Sophia Reed', 130.50, '2023-02-17 16:40:00'),
    (960874, 'Lucas Hall', 90.00, '2023-02-18 10:00:00'),
    (980231, 'Isabella Kelly', '45.50', '2023-02-19 14:15:00');
SELECT * FROM Shelter;

IF OBJECT_ID('Interview') IS NOT NULL
    DROP TABLE Interview;
GO
CREATE TABLE Interview (
    interview_id INT PRIMARY KEY,
    Adoptor_ID INT NOT NULL,
    Employee_ID INT NOT NULL,
    Interview_Date DATE NOT NULL,
    Interview_Time TIME NOT NULL,
    Eligibility VARCHAR(20) NOT NULL
);
INSERT INTO Interview (interview_id, Adoptor_ID, Employee_ID, Interview_Date, Interview_Time, Eligibility)
VALUES
    (1001, 567, 10001, '2023-01-01', '10:00:00', 'Eligible'),
    (1002, 568, 10002, '2023-01-02', '11:15:00', 'Ineligible'),
    (1003, 569, 10003, '2023-01-03', '12:30:00', 'Eligible'),
    (1004, 570, 10004, '2023-01-04', '13:45:00', 'Ineligible'),
    (1005, 571, 10005, '2023-01-05', '14:00:00', 'Eligible'),
    (1006, 572, 10006, '2023-01-06', '15:00:00', 'Ineligible'),
    (1007, 573, 10007, '2023-01-07', '16:00:00', 'Eligible'),
    (1008, 574, 10008, '2023-01-08', '17:00:00', 'Ineligible'),
    (1009, 575, 10009, '2023-01-09', '18:00:00', 'Eligible'),
    (1010, 576, 10010, '2023-01-10', '19:00:00', 'Ineligible'),
    (1011, 577, 10011, '2023-01-11', '20:00:00', 'Eligible'),
    (1012, 578, 10012, '2023-01-12', '21:00:00', 'Ineligible'),
    (1013, 579, 10013, '2023-01-13', '22:00:00', 'Eligible'),
    (1014, 580, 10014, '2023-01-14', '23:00:00', 'Ineligible'),
    (1015, 581, 10015, '2023-01-15', '14:30:00', 'Eligible'),
    (1016, 582, 10016, '2023-01-16', '15:45:00', 'Ineligible'),
    (1017, 583, 10017, '2023-01-17', '16:15:00', 'Eligible'),
    (1018, 584, 10018, '2023-01-18', '17:30:00', 'Ineligible'),
    (1019, 585, 10019, '2023-01-19', '18:45:00', 'Eligible'),
    (1020, 586, 10020, '2023-01-20', '19:15:00', 'Ineligible'),
    (1021, 587, 10021, '2023-01-21', '20:30:00', 'Eligible'),
    (1022, 588, 10022, '2023-01-22', '21:45:00', 'Ineligible'),
    (1023, 589, 10023, '2023-01-23', '22:15:00', 'Eligible'),
    (1024, 590, 10024, '2023-01-24', '23:30:00', 'Ineligible'),
    (1025, 591, 10025, '2023-01-25', '16:45:00', 'Eligible'),
    (1026, 592, 10026, '2023-01-26', '17:00:00', 'Ineligible'),
    (1027, 593, 10027, '2023-01-27', '18:15:00', 'Eligible'),
    (1028, 594, 10028, '2023-01-28', '19:30:00', 'Ineligible'),
    (1029, 595, 10029, '2023-01-29', '20:45:00', 'Eligible'),
    (1030, 596, 10030, '2023-01-30', '21:00:00', 'Ineligible'),
    (1031, 597, 10031, '2023-01-31', '22:15:00', 'Eligible'),
    (1032, 598, 10032, '2023-02-01', '23:30:00', 'Ineligible'),
    (1033, 599, 10033, '2023-02-02', '15:30:00', 'Eligible'),
    (1034, 600, 10034, '2023-02-03', '16:45:00', 'Ineligible'),
    (1035, 601, 10035, '2023-02-04', '17:00:00', 'Eligible'),
    (1036, 602, 10036, '2023-02-05', '18:15:00', 'Ineligible'),
    (1037, 603, 10037, '2023-02-06', '19:30:00', 'Eligible'),
    (1038, 604, 10038, '2023-02-07', '20:45:00', 'Ineligible'),
    (1039, 605, 10039, '2023-02-08', '21:00:00', 'Eligible'),
    (1040, 606, 10040, '2023-02-09', '22:15:00', 'Ineligible'),
    (1041, 607, 10041, '2023-02-10', '23:30:00', 'Eligible'),
    (1042, 608, 10042, '2023-02-11', '15:30:00', 'Ineligible'),
    (1043, 609, 10043, '2023-02-12', '16:45:00', 'Eligible'),
    (1044, 610, 10044, '2023-02-13', '17:00:00', 'Ineligible'),
    (1045, 611, 10045, '2023-02-14', '18:15:00', 'Eligible'),
    (1046, 612, 10046, '2023-02-15', '19:30:00', 'Ineligible'),
    (1047, 613, 10047, '2023-02-16', '20:45:00', 'Eligible'),
    (1048, 614, 10048, '2023-02-17', '21:00:00', 'Ineligible'),
    (1049, 615, 10049, '2023-02-18', '22:15:00', 'Eligible'),
    (1050, 616, 10050, '2023-02-19', '23:30:00', 'Ineligible');
SELECT * FROM Interview;
-------------- Pet, Adoptors, Adoption Tables


--Create Pets Table
DROP TABLE IF EXISTS Pets;
CREATE TABLE Pets (
    pet_id INT NOT NULL PRIMARY KEY,
    pet_name VARCHAR(20) NOT NULL,
    pet_age VARCHAR(10) NOT NULL,
    pet_type VARCHAR(20) NOT NULL,
    pet_breed VARCHAR(30) NOT NULL,
    pet_gender VARCHAR(10) NOT NULL,
    pet_size VARCHAR(10) NOT NULL,
    shelter_id INT, -- Adjust the length as needed
    FOREIGN KEY (shelter_id) REFERENCES Shelter (shelter_id)
);

USE pet_adoption_db;

INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48570420,'Ruff','Baby','Dog','German Sheppard','Male','small',1);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549950,'Delilah','Adult','Dog','German Sheppard','Male','large',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550360,'Red','Adult','Dog','Labrador','Male','large',3);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550730,'Louie','Baby','Cat','Bombay','Male','small',4);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552648,'Kenny','Senior','Dog','German Sheppard','Female','large',5);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549792,'Stormy','Senior','Cat','Bombay','Female','medium',1);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551137,'Copper','Baby','Dog','German Sheppard','Female','small',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549854,'Christian','Adult','Cat','Bombay Cat','Female','medium',1);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551072,'Jasper','Young','Dog','Chihuaha','Male','small',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550819,'Wendy','Senior','Cat','Bombay','Male','medium',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553223,'Cricket','Baby','Cat','Bombay','Male','small',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555123,'Chase','Young','Dog','Labrador','Female','medium',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554732,'Maggie','Adult','Cat','Bombay','Male','small',2);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554677,'Spotiana','Young','Cat','Snowshoe','Female','small',14);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555066,'Daisy Mea','Baby','Cat','Manx','Male','small',15);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552609,'Rufus','Baby','Dog','Labrador','Female','small',16);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549696,'Tia','Adult','Cat','Manx','Male','medium',21);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550008,'Flounder','Baby','Rabbit','Holland Lop','Female','small',22);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551249,'Paris','Adult','Rabbit','Holland Lop','Male','small',23);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552936,'Zeke','Young','Dog','Australian Sheppard','Male','medium',28);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555158,'RONIN','Senior','Dog','Beagle','Male','small',29);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555271,'Stevie','Young','Dog','Poodle','Female','medium',30);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554876,'Stormy','Baby','Bird','Cockatiel','Male','small',28);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552625,'Lille','Adult','Bird','Cockatiel','Female','small',29);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550248,'MURRAY','Young','Bird','Cockatiel','Female','small',30);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552760,'Nadine','Young','Bird','Cockatiel','Male','small',31);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554437,'Penelope','Baby','Bird','Cockatiel','Female','small',33);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550927,'Sunny','Senior','Cat','Manx','Female','medium',34);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549655,'Mia','Adult','Cat','Manx','Male','medium',35);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555119,'Mike','Baby','Cat','Burmese','Male','small',36);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550931,'Raina','Baby','Cat','Manx','Male','small',37);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549881,'Piglet','Young','Rabbit','Mini Lop','Female','small',38);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551048,'Chloe','Adult','Cat','Chausie','Female','medium',39);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553425,'Madness','Young','Cat','Chausie','Male','medium',40);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553649,'Hotch','Baby','Cat','Chausie','Male','small',29);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553219,'Arlo','Baby','Rabbit','Mini Lop','Male','small',30);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549614,'Dora','Baby','Cat','Chausie','Male','small',47);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555322,'Bernie','Young','Cat','Chausie','Female','small',48);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550570,'Yogi','Young','Rabbit','Mini Lop','Male','small',49);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554860,'Gus','Adult','Rabbit','Mini Lop','Male','small',50);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553281,'Buddy','Baby','Dog','Poodle','Male','small',47);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549726,'Nizhoni','Young','Rabbit','Holland Lop','Male','small',50);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550012,'Moose','Baby','Rabbit','Holland Lop','Male','small',50);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555210,'Olive','Baby','Dog','Bulldog','Male','small',50);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553844,'Buddy','Adult','Dog','Daschund','Male','small',47);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552613,'Quiet Riot','Adult','Bird','Parakeet','Male','small',48);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552994,'Rainier','Young','Dog','Husky','Male','large',49);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551204,'Lenny','Young','Dog','Husky','Male','large',19);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553540,'Roscoe','Baby','Bird','Parakeet','Female','small',20);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555494,'Penelope','Baby','Dog','Pomeranian','Female','small',19);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550679,'Laurel','Adult','Dog','Labrador','Male','large',20);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553405,'Buddy','Baby','Dog','Pitbull','Female','small',19);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555314,'Stout','Young','Bird','Cockatoo','Female','small',20);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48549788,'Buddy','Young','Dog','Pitbull','Female','medium',8);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552594,'Rudy','Adult','Cat','Burmese','Female','medium',9);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48554440,'Jake','Baby','Reptile','Lizard','Male','small',10);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550680,'Jackson','Young','Cat','Burmese','Female','small',11);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555197,'BANKSY','Baby','Cat','Burmese','Female','small',33);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555206,'SASHA','Baby','Reptile','Lizard','Male','small',33);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550792,'Dakota','Baby','Reptile','Snake','Male','small',33);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48553014,'Reagan','Adult','Dog','Pitbull','Female','medium',33);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551029,'Larry','Young','Reptile','Lizard','Female','small',13);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552557,'Honey','Young','Dog','Pitbull','Female','medium',13);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555292,'Baby','Baby','Reptile','Lizard','Male','small',13);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48552804,'Koda','Senior','Reptile','Snake','Male','small',1);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550993,'Tank','Adult','Dog','Dobermann','Female','large',1);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48550643,'Huey','Baby','Dog','Labrador','Female','small',47);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48555441,'Annie','Baby','Dog','Beagle','Female','small',47);
INSERT INTO Pets(pet_id,pet_name,pet_age,pet_type,pet_breed,pet_gender,pet_size,shelter_id) VALUES (48551117,'Willie','Young','Dog','Beagle','Female','small',47);

select * from pets;

--Create Adoptors table

DROP TABLE IF EXISTS Adoptors;
CREATE TABLE Adoptors(
   adoptor_id      INTEGER  NOT NULL PRIMARY KEY 
  ,adoptor_fname   VARCHAR(9) NOT NULL
  ,adoptor_lname   VARCHAR(10) NOT NULL
  ,adoptor_gender  VARCHAR(6) NOT NULL
  ,adoptor_age     INTEGER  NOT NULL
  ,adoptor_salary  INTEGER  NOT NULL
  ,adoptor_marital VARCHAR(7) NOT NULL
  ,adoptor_kids    INTEGER  NOT NULL
  ,adoptor_state   VARCHAR(3) NOT NULL
  ,adoptor_city    VARCHAR(13)
);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (636,'Rafael','Farrell','Male',28,190749,'Single',4,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (758,'Frederick','Bailey','Male',28,170691,'Single',2,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (460,'Penelope','Fowler','Female',19,81847,'Single',2,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (688,'Dominik','Perkins','Male',19,118477,'Married',0,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (291,'Frederick','Edwards','Male',19,38775,'Single',2,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (643,'Albert','Lloyd','Male',23,156344,'Single',4,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (89,'Jack','Adams','Male',29,56543,'Married',0,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (350,'Spike','Holmes','Male',28,44102,'Married',2,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (224,'Isabella','Rogers','Female',18,92307,'Single',1,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (571,'Adam','Reed','Male',22,194587,'Married',5,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (999,'Meridith','West','Female',33,174869,'Married',5,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (63,'Lilianna','Johnston','Female',38,58249,'Married',0,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (742,'Luke','Montgomery','Male',37,168667,'Single',3,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (115,'Owen','Phillips','Male',37,197807,'Single',0,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (635,'Alexander','Miller','Male',37,59794,'Married',5,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (622,'Paul','Moore','Male',36,112229,'Married',2,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (869,'William','Casey','Male',33,54063,'Married',1,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (90,'Ellia','Reed','Female',33,46340,'Single',3,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (789,'Dainton','Wilson','Male',30,150786,'Married',5,'WA','Tacoma');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (686,'Edgar','Farrell','Male',39,149944,'Married',5,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (903,'Lucy','Stewart','Female',58,82155,'Married',4,'WA','Yakima');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (547,'Audrey','Carter','Female',52,94662,'Single',4,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (712,'Kristian','Roberts','Male',50,113488,'Single',5,'WA','Yakima');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (664,'Isabella','Moore','Female',56,56690,'Married',3,'WA','Yakima');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (681,'Deanna','Johnson','Female',51,44787,'Married',3,'WA','Yakima');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (25,'Nicole','Crawford','Female',56,120909,'Single',2,'WA','Bellingham');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (494,'Lucas','Ellis','Male',59,86769,'Married',3,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (172,'Kimberly','Cooper','Female',52,178686,'Single',4,'WA','Bellingham');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (670,'Lyndon','Howard','Male',58,191060,'Single',0,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (564,'Brooke','Hawkins','Female',55,58882,'Single',4,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (195,'Lily','Montgomery','Female',65,190821,'Married',0,'WA','Bellingham');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (812,'Clark','Thomas','Male',60,60183,'Married',0,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (367,'Ned','Evans','Male',69,30919,'Single',2,'WA','Bellingham');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (675,'Ada','Ferguson','Female',67,133685,'Married',0,'WA','Bellingham');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (377,'Savana','Kelly','Female',60,111559,'Married',2,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (847,'Adele','Wright','Female',65,176887,'Married',5,'WA','Everett');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (218,'Dominik','Rogers','Male',68,114948,'Married',5,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (584,'Wilson','Jones','Male',62,113083,'Single',4,'WA','Everett');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (784,'Cherry','Craig','Female',66,59539,'Married',3,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (814,'Maria','Perry','Female',65,115086,'Single',4,'WA','Everett');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (989,'Heather','Jones','Female',27,172076,'Single',3,'WA','Everett');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (647,'Ned','Fowler','Male',29,189367,'Married',5,'WA','Everett');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (22,'Elise','Fowler','Female',29,63814,'Married',4,'WA','Leavingworth');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (50,'Sydney','Farrell','Female',23,123572,'Married',2,'WA','Port Townsend');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (685,'Ashton','Ferguson','Male',24,102972,'Married',5,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (4,'Valeria','Morrison','Female',30,64451,'Single',1,'WA','Port Townsend');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (838,'Honey','Holmes','Female',24,138863,'Single',5,'WA','Port Townsend');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (85,'James','Campbell','Male',21,86093,'Single',4,'WA','Port Angeles');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (579,'John','Williams','Male',23,59153,'Single',1,'WA','Seattle');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (464,'Mike','Hall','Male',18,127217,'Married',3,'WA','Port Angeles');
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (893,'Dominik','Rogers','Male',30,190151,'Single',3,'893',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (520,'Mary','Clark','Female',27,102404,'Married',1,'520',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (848,'Alexia','Wells','Female',22,156806,'Married',0,'848',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (74,'Lydia','Grant','Female',19,178435,'Married',2,'74',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (860,'Kirsten','Parker','Female',26,96792,'Married',5,'860',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (96,'Adelaide','Stewart','Female',29,178238,'Single',0,'96',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (540,'Kellan','Turner','Male',27,79197,'Single',0,'540',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (259,'Rosie','Stewart','Female',26,184776,'Married',1,'259',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (54,'Miley','Thomas','Female',27,103751,'Married',5,'54',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (666,'James','Kelley','Male',19,132630,'Single',2,'666',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (283,'Clark','Roberts','Male',30,132949,'Single',0,'283',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (773,'Miller','Warren','Male',24,80770,'Single',1,'773',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (292,'Wilson','Payne','Male',25,74331,'Married',5,'292',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (794,'Carlos','Walker','Male',26,193787,'Married',5,'794',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (855,'Catherine','Allen','Female',26,117688,'Married',2,'855',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (820,'Paige','Gray','Female',29,138146,'Single',4,'820',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (129,'Derek','Perry','Male',29,46825,'Single',0,'129',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (863,'Charlie','Craig','Male',29,62253,'Single',0,'863',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (965,'Sofia','Roberts','Female',26,199785,'Married',1,'965',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (215,'Alexia','Thompson','Female',20,166179,'Married',5,'215',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (570,'Owen','Brown','Male',30,51388,'Single',1,'570',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (137,'Rafael','Hamilton','Male',24,128569,'Married',0,'137',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (93,'Frederick','Perkins','Male',27,198287,'Single',1,'93',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (972,'Alisa','Ross','Female',22,78394,'Single',1,'972',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (108,'David','Hunt','Male',23,54650,'Married',5,'108',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (343,'Edward','Barrett','Male',26,143438,'Married',3,'343',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (887,'Julian','Smith','Male',20,77050,'Single',1,'887',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (306,'Ned','Kelly','Male',29,55332,'Married',0,'306',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (182,'Edwin','Parker','Male',24,56539,'Married',2,'182',NULL);
INSERT INTO Adoptors(adoptor_id,adoptor_fname,adoptor_lname,adoptor_gender,adoptor_age,adoptor_salary,adoptor_marital,adoptor_kids,adoptor_state,adoptor_city) VALUES (274,'Sophia','Barrett','Female',19,173266,'Married',3,'274',NULL);



select * from Adoptors;

--Created Adoptions table
DROP TABLE IF EXISTS Adoption;
CREATE TABLE Adoption (
    adoption_id INT PRIMARY KEY IDENTITY(1,1),
    adoptor_id INT,
    pet_id INT,
    adoption_date DATE NOT NULL,
    FOREIGN KEY (adoptor_id) REFERENCES Adoptors(adoptor_id),
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);



INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555119,675,'2023-05-12');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555197,460,'2023-02-18');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551117,291,'2023-11-01');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48549614,887,'2023-04-25');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550993,965,'2023-09-20');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552936,274,'2023-07-09');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551137,647,'2023-08-30');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48549792,675,'2023-01-03');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550679,570,'2023-10-14');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553281,847,'2023-06-11');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552648,647,'2023-12-07');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553223,688,'2023-03-28');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48554732,63,'2023-04-02');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48554860,367,'2023-07-31');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555271,74,'2023-05-22');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552609,54,'2023-02-06');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555123,647,'2023-08-10');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553425,848,'2023-11-15');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551072,742,'2023-09-05');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555066,965,'2023-01-28');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552613,215,'2023-06-17');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555158,343,'2023-03-20');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553405,848,'2023-10-25');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553219,343,'2023-04-11');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551249,643,'2023-12-20');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553014,520,'2023-07-24');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552557,63,'2023-09-30');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552594,89,'2023-05-08');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550643,742,'2023-01-17');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551137,115,'2023-08-02');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552625,903,'2023-11-27');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48549696,887,'2023-02-22');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552804,584,'2023-10-05');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550931,903,'2023-04-14');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48554437,182,'2023-07-13');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550680,520,'2023-06-04');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48550012,520,'2023-03-11');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555314,675,'2023-09-15');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48553223,965,'2023-05-30');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555210,584,'2023-12-24');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551029,218,'2023-01-11');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48554876,224,'2023-08-25');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48552594,820,'2023-11-04');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48549726,218,'2023-03-01');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48551204,622,'2023-06-25');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555441,172,'2023-10-19');
INSERT INTO Adoption(pet_id,adoptor_id,adoption_date) VALUES (48555322,85,'2023-10-19');


Select * from Adoption;

