/* Student name: Jamie-Lee Gordon              
Student username: adck899            
*/

/* SECTION 1 CREATE TABLE STATEMENTS */
CREATE TABLE adck899_Club (
clubName VARCHAR(255) PRIMARY KEY,
country VARCHAR(255) NOT NULL,
league VARCHAR(255) NOT NULL,
titlesWon INTEGER(10),
stadiumName VARCHAR(255) NOT NULL,
kitSponsor VARCHAR(255) NOT NULL
);

CREATE TABLE adck899_Agent (
agentID INTEGER(10) PRIMARY KEY NOT NULL,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
agentFee INTEGER(10) NOT NULL,
countryLocated VARCHAR(255) NOT NULL,
emailAddress VARCHAR(255) NOT NULL,
phoneNumber CHAR(11) NOT NULL
);

CREATE TABLE adck899_Player (
playerID INTEGER(10) PRIMARY KEY,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
age INTEGER(2) NOT NULL,
height INTEGER(3) NOT NULL,
weight INTEGER(3) NOT NULL,
nationality VARCHAR(255) NOT NULL,
position VARCHAR(255) NOT NULL,
kitNumber INTEGER(2) NOT NULL,
clubName VARCHAR(255),
agentID INTEGER(10) NOT NULL,
FOREIGN KEY(clubName) REFERENCES adck899.adck899_Club(clubName),
FOREIGN KEY(agentID) REFERENCES adck899.adck899_Agent(agentID)
);

CREATE TABLE adck899_PlayerCareerStats (
playerID INTEGER(10) NOT NULL,
FOREIGN KEY(playerID) REFERENCES adck899.adck899_Player(playerID),
appearences INTEGER(4),
goals INTEGER(3),
assists INTEGER(3),
cleanSheets INTEGER(3)
);

CREATE TABLE adck899_PlayerContract (
playerID INTEGER(10) PRIMARY KEY,
FOREIGN KEY(playerID) REFERENCES adck899.adck899_Player(playerID),
startDate DATE NOT NULL,
endDate DATE NOT NULL,
wages DEC(19,2),
marketValue DEC(19,2),
releaseClause DEC(19,2)
);

CREATE TABLE adck899_Manager (
managerID INTEGER(10) PRIMARY KEY,
firstName VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
clubName VARCHAR(255),
emailAddress VARCHAR(255) NOT NULL,
phoneNumber CHAR(11) NOT NULL,
agentID INTEGER(10) NOT NULL,
FOREIGN KEY(clubName) REFERENCES adck899.adck899_Club(clubName),
FOREIGN KEY (agentID) REFERENCES adck899.adck899_Agent(agentID)
);

CREATE TABLE adck899_ManagerContract (
managerID INTEGER(10) PRIMARY KEY,
startDate DATE NOT NULL,
endDate DATE NOT NULL,
salary DEC(19,2) NOT NULL,
FOREIGN KEY (managerID) REFERENCES adck899.adck899_Manager(managerID)
);

/* SECTION 2 INSERT STATEMENTS */
INSERT INTO adck899.adck899_Agent VALUES (1, 'Bob', 'Illem', 5, 'Brazil', 'billem0@gmail.com', '01081404656'),
(2, 'Brendis', 'Ivashin', 18, 'China', 'bivashin1@gmail.com', '05625187392'),
(3, 'Coleman', 'Forde', 25, 'Colombia', 'cforde2@yahoo.com', '08938727630'),
(4, 'Reid', 'Gove', 13, 'United Kingdom', 'rgove3@yahoo.co.uk', '01209872315'),
(5, 'Alano', 'Dawidowitz', 18, 'China', 'adawidowitz4@gmail.com', '09217085847'),
(6, 'Giffy', 'Leversha', 4, 'South Africa', 'gleversha5@gmail.com', '03197966781'),
(7, 'Abran', 'Attwill', 19, 'United States', 'aattwill6@gmail.com', '06466448918'),
(8, 'Moss', 'D''Andrea', 7, 'Kosovo', 'mdandrea7@gmail.com', '06088485340'),
(9, 'Godard', 'Kopisch', 17, 'United States', 'gkopisch8@yahoo.com', '03605212479'),
(10, 'Bruce', 'Kellie', 5, 'Ukraine', 'bkellie9@yahoo.com', '08866022242'),
(13, 'Dalt', 'Aizikovitz', 7, 'Thailand', 'daizikovitza@gmail.com', '04855065052'),
(12, 'Gustave', 'Trattles', 21, 'Indonesia', 'gtrattlesb@yahoo.com', '04698539025'),
(11, 'Rogerio', 'Sinyard', 27, 'Brazil', 'rsinyardc@yahoo.com', '04619095114');

INSERT INTO adck899.adck899_Club VALUES ('Manchester United', 'United Kingdom', 'Premier League', '13', 'Old Trafford', 'Team Viewer'),
('Manchester City', 'United Kingdom', 'Premier League', '5', 'The Ethiad', 'Ethiad Airways'),
('Chelsea', 'United Kingdom', 'Premier League', '6', 'Stamford Bridge', 'Three'),
('Tottenham Hotspur', 'United Kingdom', 'Premier League', '0', 'The Tottenham Hotspur Stadium', 'AIA'),
('Paris Saint Germain', 'France', 'League 1', '9', 'Le Parc des Princes', 'Accor Live Limitless'),
('FC Barcelona', 'Spain', 'La Liga', '26', 'Camp Nou', 'Rakuten'),
('Bayern Munich', 'Germany', 'Bundesliga', '14', 'Allianz Arena', 'T Mobile'),
('Real Madrid', 'Spain', 'La Liga', '34', 'Santiago Bernabeu Stadium', 'Emirates'),
('Liverpool', 'United Kingdom', 'Premier League', '1', 'Anfield', 'Standard Chartered'),
('Juventus', 'Italy', 'Serie A', '36', 'Allianz Stadium', 'JEEP');

INSERT INTO adck899.adck899_Manager VALUES (14, 'Ralf', 'Ragnick', 'Manchester United', 'ralf57@gmail.com', '04235165086', 1),
(15, 'Pep', 'Guardiola', 'Manchester City', 'pepg@gmail.com', '05094781901', 11),
(16, 'Thomas', 'Tuchel', 'Chelsea', 'thomast444@gmail.com', '06858795998', 5),
(18, 'Anthonio', 'Conte', 'Tottenham Hotspur', 'conte77@yahoo.com', '09611503403', 9),
(17, 'Maurizio', 'Pochettino', 'Paris Saint Germain', 'potch4@yahoo.com', '02548019248', 13),
(19, 'Xavi', 'Hernandez', 'FC Barcelona', 'messithegoat10@gmail.com', '02531216425', 13),
(20, 'Julian', 'Nagelsmann', 'Bayern Munich', 'famersleague@yahoo.com', '02587635310', 13),
(21, 'Carlo', 'Ancelotti', 'Real Madrid', 'doncarlo@gmail.com', '01974933614', 7),
(22, 'Jurgen', 'Klopp', 'Liverpool', 'kloppjurgen6@gmail.com', '03854224216', 9),
(23, 'Massimilano', 'Allegri', 'Juventus', 'allegri88@yahoo.com', '09777959854', 2);

INSERT INTO adck899.adck899_ManagerContract VALUES (14, '2020/07/08', '2023/03/09', 8350473),
(15, '2018/04/06', '2024/08/02', 3266630),
(16, '2020/06/07', '2025/03/01', 4797710),
(18, '2021/07/02', '2024/04/09', 9452548),
(17, '2021/08/11', '2025/12/07', 9169999),
(19, '2018/07/05', '2023/01/07', 3315773),
(20, '2020/08/07', '2024/04/08', 3568912),
(21, '2019/06/12', '2025/08/12', 3698394),
(22, '2021/09/02', '2025/01/05', 7868181),
(23, '2019/03/11', '2024/06/11', 2662952);

INSERT INTO adck899.adck899_Player VALUES (24, 'Cristiano', 'Ronaldo', '36', '187', '83', 'Portugal', 'Forward', 7, 'Manchester United', 11),
(25, 'Lionel', 'Messi', '34', '170', '72', 'Argentina', 'Forward', 30, 'Paris Saint Germain', 3),
(26, 'Karim', 'Benzema', '34', '185', '81', 'France', 'Forward', 9, 'Real Madrid', 11),
(27, 'Marcus', 'Rashford', '24', '186', '70', 'England', 'Forward', 10, 'Manchester United', 13),
(28, 'Bernardo', 'Silva', '27', '173', '64', 'Portugal', 'Midfielder', 20, 'Manchester City', 1),
(29, 'Harry', 'Kane', '28', '188', '89', 'England', 'Forward', 10, 'Tottenham Hotspur', 5),
(30, 'Paulo', 'Dybala', '28', '177', '75', 'Argentina', 'Forward', 10, 'Juventus', 7),
(31, 'Robert', 'Lewandowski', '33', '185', '81', 'Poland', 'Forward', 9, 'Bayern Munich', 6),
(32, 'Mohamed', 'Salah', '29', '175', '71', 'Egypt', 'Forward', 11, 'Liverpool', 11),
(33, 'Memphis', 'Depay', '27', '176', '78', 'Netherlands', 'Forward', 9, 'FC Barcelona', 11),
(34, 'Trevoh', 'Chalobah', '22', '191', '84', 'England', 'Defender', 14, 'Chelsea', 13),
(35, 'David', 'De Gea', '31', '192', '82', 'Spain', 'Goalkeeper', 1, 'Manchester United', 2),
(36, 'Ruben', 'Dias', '24', '187', '82', 'Portugal', 'Defender', 3, 'Manchester City', 12),
(37, 'Luke', 'Shaw', '26', '181', '75', 'England', 'Defender', 23, 'Manchester United', 4),
(38, 'Manuel', 'Neuer', '35', '193', '93', 'Germany', 'Goalkeeper', 1, 'Bayern Munich', 1),
(39, 'Anthony', 'Martial', '26', '184', '76', 'France', 'Forward', 9, 'Manchester United', 13),
(40, 'Frenkie', 'De Jong', '24', '180', '74', 'Netherlands', 'Midfielder', 21, 'FC Barcelona', 11),
(41, 'Eric', 'Dier', '27', '190', '90', 'England', 'Defender', 15, 'Tottenham Hotspur', 10);

INSERT INTO adck899.adck899_PlayerCareerStats VALUES (24, 1097, 802, 229, NULL),
(25, 951, 758, 319, NULL),
(26, 536, 281, 125, NULL),
(27, 262, 80, 35, NULL),
(28, 346, 64, 35, NULL),
(29, 351, 222, 48, NULL),
(30, 312, 112, 51, NULL),
(31, 498, 393, 79, NULL),
(32, 355, 191, 77, NULL),
(33, 340, 144, 79, NULL),
(34, 123, 8, 4, NULL),
(35, 498, NULL, NULL, 126),
(36, 200, 16, 6, NULL),
(37, 244, 3, 23, NULL),
(38, 521, NULL, NULL, 205),
(39, 300, 80, 37, NULL),
(40, 202, 10, 19, NULL),
(41, 280, 11, 10, NULL);

INSERT INTO adck899.adck899_PlayerContract VALUES (24, '2021/02/04', '2023/02/04', 350000, 25000000, NULL),
(25, '2021/02/01', '2024/02/01', 550000, 54000000, NULL),
(26, '2019/06/04', '2024/06/04', 275000, 60000000, 850000000),
(27, '2018/08/09', '2023/08/09', 250000, 90000000, NULL),
(28, '2020/02/04', '2024/02/04', 160000, 80000000, NULL),
(29, '2019/09/09', '2024/09/09', 290000, 150000000, NULL),
(30, '2021/02/04', '2025/02/04', 190000, 40000000, NULL),
(31, '2018/02/08', '2023/02/08', 300000, 100000000, NULL),
(32, '2019/07/02', '2024/07/02', 275000, 130000000, NULL),
(33, '2021/02/04', '2026/02/04', 210000, 45000000, NULL),
(34, '2020/03/09', '2025/03/09', 75000, 25000000, NULL),
(35, '2018/07/02', '2023/07/02', 350000, 50000000, NULL),
(36, '2020/05/05', '2025/05/05', 220000, 80000000, NULL),
(37, '2019/04/06', '2023/04/06', 180000, 50000000, NULL),
(38, '2019/02/04', '2024/02/04', 275000, 75000000, NULL),
(39, '2019/09/08', '2023/09/08', 220000, 35000000, NULL),
(40, '2018/04/03', '2024/04/03', 240000, 80000000, NULL),
(41, '2019/07/09', '2023/07/09', 80000, 25000000, NULL);
                  
/* SECTION 3 UPDATE STATEMENTS */

/* 1) Update titles won by Manchester City to 6: */
UPDATE adck899.adck899_Club SET titlesWon = 6 WHERE clubName = 'Manchester City';

/* 2) Update the club that playerID 25 belongs to, to FC Barcelona: */
UPDATE adck899.adck899_Player SET clubName = 'FC Barcelona' WHERE playerID = 25;



/* SECTION 4 SINGLE TABLE QUERIES */

/* 1) List all club attributes in the Premier League:  */
SELECT * FROM adck899.adck899_Club WHERE league = 'Premier League'; 

/* 2) List the playerID and the numbers of goals of players who have more than 100 goals: */
SELECT playerID, goals FROM adck899.adck899_PlayerCareerStats WHERE goals > 100;

/* 3) Output the number of player wages over 300,000 */
SELECT COUNT(wages) FROM adck899.adck899_PlayerContract WHERE wages > 300000;

/* 4) Output the average goals scored by a player in their career */
SELECT AVG(goals) FROM adck899.adck899_PlayerCareerStats;

/* 5) List every unique club from (LIKE) Manchester */
SELECT DISTINCT(clubName) FROM adck899.adck899_Club WHERE clubName LIKE 'Manchester %';

/* 6) List the sum of titles won by Premier Leafue clubs: */
SELECT SUM(titlesWon) FROM adck899.adck899_Club WHERE league = 'Premier League';




/* SECTION 5 MULTIPLE TABLE QUERIES */
/* 1) List all the last names of players who scored less than 50 goals: */
SELECT lastName FROM adck899.adck899_Player 
WHERE playerID IN (SELECT DISTINCT playerID FROM adck899.adck899_PlayerCareerStats WHERE goals < 50);

/* 2) List the first names, last names, start date and end date of players and their contracts: */
SELECT firstName, lastName, startDate, endDate FROM adck899.adck899_Player P 
INNER JOIN adck899.adck899_PlayerContract PC ON P.playerID = PC.playerID;

/* 3) List the first names, last names, league, start date and end date of managers with their contracts to the league they manage in: */
SELECT firstName, lastName, league, startDate, endDate FROM adck899.adck899_Club C 
INNER JOIN adck899.adck899_Manager M ON C.clubName = M.clubName 
INNER JOIN adck899.adck899_ManagerContract MC ON MC.managerID = M.managerID;

/* 4) List the first and last names of all players who's contracts expire in 2024: */
SELECT firstName, lastName FROM adck899.adck899_Player WHERE playerID IN 
(SELECT playerID FROM adck899.adck899_PlayerContract WHERE endDate LIKE '2024%');

/* 5) List the first and last names of all players who have more than the average amoubt of assists: */
SELECT firstName, lastName FROM adck899.adck899_Player WHERE playerID IN 
(SELECT playerID FROM adck899.adck899_PlayerCareerStats 
 WHERE assists > (SELECT AVG(assists) FROM adck899.adck899_PlayerCareerStats));

/* 6) List the first and last names of all players who play for a Manchester club: */
SELECT firstName, lastName FROM adck899.adck899_Player 
WHERE clubName IN (SELECT clubName FROM adck899.adck899_Club WHERE clubName LIKE 'Manchester %');



/* SECTION 6 DELETE ROWS (make sure the SQL is commented out in this section)

/* 1) Delete all attributes of agent with agentID 8: */
DELETE FROM adck899.adck899_Agent WHERE agentID = 8;

/* 2) Delete all attributes of the player contract belonging to player with playerID 41: */
DELETE FROM adck899.adck899_PlayerContract WHERE playerID = 41;

*/

/* SECTION 6 DROP TABLES (make sure the SQL is commented out in this section)

DROP TABLES adck899_PlayerContract, adck899_PlayerCareerStats, adck899_Player, adck899_ManagerContract, adck899_Manager, adck899_Club, adck899_Agent;

*/