.open setapp.db

CREATE TABLE answers(
    ans_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    question_id INTEGER NOT NULL REFERENCES questions(question_id),
    ans_text TEXT

);

CREATE TABLE questions(
    question_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    quiz_id INTEGER NOT NULL REFERENCES quiz(quiz_id),
    question_text TEXT NOT NULL,
    correct_ans_id INTEGER NOT NULL REFERENCES answers(ans_id)
);

CREATE TABLE quiz(
    quiz_id INTEGER NOT NULL PRIMARY KEY,
    quiz_difficulty TEXT NOT NULL,
    quiz_number INTEGER NOT NULL
);

CREATE TABLE user_quizzes(
    user_id INTEGER REFERENCES user(user_id) NOT NULL,
    quiz_id INTEGER REFERENCES quiz(quiz_id) NOT NULL,
    user_quiz_score INTEGER NOT NULL,
    PRIMARY KEY (user_id, quiz_id)
);

CREATE TABLE user_badges(
    user_id INTEGER REFERENCES user(user_id) NOT NULL,
    badge_id INTEGER REFERENCES badges(badge_id) NOT NULL,
    PRIMARY KEY (user_id, badge_id)
);

--USER TABLE--
CREATE TABLE user (user_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, f_name TEXT NOT NULL,user_email TEXT NOT NULL);

--Badges table--
CREATE TABLE badges(badge_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, badge_name TEXT NOT NULL, badge_price INTEGER NOT NULL);


----data for tables--
--quiz--
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (1, 'easy', 1);
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (2, 'easy', 2);
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (3, 'medium', 1);
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (4, 'medium', 2);
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (5, 'hard', 1);
INSERT INTO quiz(quiz_id, quiz_difficulty, quiz_number) VALUES (6, 'hard', 2);

--question--
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (1,1,'How many legs does a spider have?',1);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (2,1,'What city is Buckingham Palace in?',5);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (3,1,'What country do kangeroos live in?',9);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (4,1,'Which is not a 4 sided shape?',13);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (5,1,'What day is remembered for Jesus birth?',17);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (6,1,'When is Remberance day?',21);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (7,1,'When did Queen Elizabeth II die?',25);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (8,1,'How many dwarfs were there in Snow White?',29);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (9,1,'What superhero is known for being green?',33);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (10,1,'What social media logo has a bird in?',37);

INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (11,2,'What country flag has red, yellow and black in?',41);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (12,2,'An iPhone is made by what brand ?',45);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (13,2,'What city is known for having a naval base?',49);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (14,2,'Which singer has the song ''shape of you''',53);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (15,2,'What supermarket has an orange logo?',57);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (16,2,'What Disney film is based on superheroes?',61);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (17,2,'What fizzy drink brand is known for doing coke?',65);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (18,2,'What chocolate brand does Milkybar?',69);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (19,2,'What film features the character Captain Jack Sparrow?',73);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (20,2,'How many days in march?',77);

INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (21,3,'What football fan club are known as gunners?',81);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (22,3,'What was the other gift given by the 3 wise men, frankensence,gold and …?',85);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (23,3,'How many wives did Henry VIII have?',89);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (24,3,'How much does an average person spend on groceries a month?',93);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (25,3,'What do married people normally wear?',97);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (26,3,'In programming, true and false is known as?',101);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (27,3,'Who is the manager of Liverpool FC?',105);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (28,3,'How many people in a netball team?',109);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (29,3,'Which reality TV show has maya jama started to present recently?',113);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (30,3,'What is the main colour in the Sinagpore flag?',117);

INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (31,4,'What country is known for having pryamids?',121);      
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (32,4,'Who is the longest reigning monarch?',125);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (33,4,'How many carats does pure gold have?',129);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (34,4,'Where is the show "Friends" set?',133);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (35,4,'Which of the options did is not a Shakespeare play?',137);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (36,4,'How many colours in a rainbow?',141);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (37,4,'Which fast foods mascot is a clown?',145);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (38,4,'What animal is Jurassic Park about?',149);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (39,4,'When was Queen Elizabeth II born?',153);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (40,4,'What is the chemical symbol for Potassium?',157);

INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (41,5,'Which Chelsea manager recently got sacked?',161);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (42,5,'What was the original name of "Google"?',165);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (43,5,'What is the most expensive spice?',169);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (44,5,'How many days in a leap year?',173);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (45,5,'What shape is the sign on roads with speed limits?',177);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (46,5,'Which artist is known for cutting off his ear?',181);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (47,5,'What did Prince William name his first child?',185);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (48,5,'How many udders does a cow have?',189);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (49,5,'Which animal spends 90% of its time sleeping?',193);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (50,5,'What is a baby goat called?',197);

INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (51,6,'How many sports play at the Olympics?',201);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (52,6,'What is the largest planet in the solar system?',205);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (53,6,'What is the currency in Denmark?',209);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (54,6,'What year did David Cameron become PM?',213);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (55,6,'What is the fastest animal in the world?',217);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (56,6,'When did EastEnders first air on TV?',221);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (57,6,'What was the name of the clown in the Simpsons? ',225);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (58,6,'When did Buddhism become a religion?',229);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (59,6,'What is the smallest country in the world?',233);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (60,6,'How many miles is the longest river in the UK?',237);

---data for questions---
--CREATE TABLE answers(
  --  ans_id INTEGER NOT NULL PRIMARY KEY,
    -- question_id INTEGER NOT NULL REFERENCES questions(question_id),
    -- ans_text TEXT(100)

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (1,1,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (2,1,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (3,1,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (4,1,'10');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (5,2,'London');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (6,2,'Paris');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (7,2,'Amsterdam');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (8,2,'New York');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (9,3,'Australia');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (10,3,'England');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (11,3,'India');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (12,3,'Egypt');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (13,4,'Octagon');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (14,4,'Square');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (15,4,'Trapezium');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (16,4,'Rectangle');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (17,5,'Christmas');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (18,5,'Easter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (19,5,'Lent ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (20,5,'Halloween');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (21,6,'11/11');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (22,6,'1/11');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (23,6,'1/1');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (24,6,'11/10');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (25,7,'2022');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (26,7,'2021');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (27,7,'2020');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (28,7,'1998');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (29,8,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (30,8,'5');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (31,8,'10');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (32,8,'12');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (33,9,'Hulk');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (34,9,'Spiderman');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (35,9,'Superman');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (36,9,'Captain America');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (37,10,'Twitter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (38,10,'Instagram');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (39,10,'Facebook');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (40,10,'Discord');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (41,11,'Germany');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (42,11,'Barbardos');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (43,11,'Russia');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (44,11,'Italy');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (45,12,'Apple');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (46,12,'Samsung');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (47,12,'Google');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (48,12,'HTC');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (49,13,'Portsmouth');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (50,13,'Southampton');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (51,13,'Bournemouth');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (52,13,'Oxford');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (53,14,'Ed Sheeran');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (54,14,'Lewis Capaldi');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (55,14,'Sam Smith');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (56,14,'Stormzy');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (57,15,'Sainsbury');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (58,15,'Tesco');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (59,15,'Lidl');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (60,15,'Aldi');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (61,16,'The Incredibles');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (62,16,'Big Hero 6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (63,16,'Aladdin');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (64,16,'Spiderman');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (65,17,'Coca Cola');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (66,17,'Pepsi');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (67,17,'7 UP');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (68,17,'Dr Pepper');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (69,18,'Nestle');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (70,18,'Mars');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (71,18,'Kinder');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (72,18,'Nutella');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (73,19,'Pirates of the Carribean');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (74,19,'Titanic');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (75,19,'Harry Potter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (76,19,'Fast and Furious');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (77,20,'31');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (78,20,'30');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (79,20,'28');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (80,20,'29');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (81,21,'Arsenal');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (82,21,'ManU');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (83,21,'Chelsea');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (84,21,'Dortmund');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (85,22,'Murr');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (86,22,'Silver');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (87,22,'Saphire');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (88,22,'Emerald');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (89,23,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (90,23,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (91,23,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (92,23,'2');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (93,24,'£206');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (94,24,'£20');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (95,24,'£150');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (96,24,'£90');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (97,25,'Rings');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (98,25,'Necklaces');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (99,25,'Bracelets');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (100,25,'Anklets');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (101,26,'Boolean');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (102,26,'String');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (103,26,'Char');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (104,26,'Integers');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (105,27,'Juergon Klopp');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (106,27,'Rio Ferdinand');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (107,27,'Wayne Rooney');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (108,27,'Steven Gerrard');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (109,28,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (110,28,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (111,28,'9');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (112,28,'10');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (113,29,'Love Island');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (114,29,'Big Brother');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (115,29,'Pointless');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (116,29,'Apprentice');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (117,30,'Red');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (118,30,'Blue');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (119,30,'Green');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (120,30,'Yellow');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (121,31,'Egypt');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (122,31,'Amsterdam ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (123,31,'Dubai ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (124,31,'Saudi Arabia');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (125,32,'Louis XIV');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (126,32,'Charles VI ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (127,32,'Victoria I');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (128,32,'Elizabeth II');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (129,33,'24');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (130,33,'20');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (131,33,'21');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (132,33,'25');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (133,34,'New York');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (134,34,'Nashville');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (135,34,'LA');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (136,34,'Las Vegas');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (137,35,'Titanic');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (138,35,'Macbeth');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (139,35,'Hamlet');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (140,35,'12th Night ');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (141,36,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (142,36,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (143,36,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (144,36,'9');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (145,37,'Mcdonalds');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (146,37,'KFC');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (147,37,'Burger King');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (148,37,'Taco Bell');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (149,38,'Dinosaurs');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (150,38,'Tigers');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (151,38,'Elephants');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (152,38,'Leopards');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (153,39,'1930');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (154,39,'1954');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (155,39,'1926');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (156,39,'1931');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (157,40,'K');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (158,40,'P');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (159,40,'PO');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (160,40,'T');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (161,41,'Thomas Tuchel');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (162,41,'Jurgen Klopp');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (163,41,'Pep Guandua');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (164,41,'Mikel Arteta');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (165,42,'BackRub');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (166,42,'Meta');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (167,42,'Tide');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (168,42,'Waver');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (169,43,'Saffron');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (170,43,'Tumeric');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (171,43,'Oregano');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (172,43,'Herbs');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (173,44,'366');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (174,44,'364');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (175,44,'365');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (176,44,'367');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (177,45,'Circle');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (178,45,'Triangle');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (179,45,'Square');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (180,45,'Hexagon');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (181,46,'Van Gogh');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (182,46,'Da Vinci ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (183,46,'Andy Warhol');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (184,46,'Cecily Brown');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (185,47,'George');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (186,47,'Charlotte');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (187,47,'Harry');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (188,47,'Louis');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (189,48,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (190,48,'4');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (191,48,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (192,48,'5');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (193,49,'Koala');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (194,49,'Bat');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (195,49,'Owls');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (196,49,'Goats');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (197,50,'Kid');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (198,50,'Joey');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (199,50,'Fid');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (200,50,'Sygnet');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (201,51,'32');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (202,51,'30');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (203,51,'40');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (204,51,'48');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (205,52,'Juipiter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (206,52,'Saturn');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (207,52,'Mars');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (208,52,'Uranus ');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (209,53,'Krone');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (210,53,'Euros');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (211,53,'Pounds');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (212,53,'Zerk');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (213,54,'2010');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (214,54,'2011');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (215,54,'2012');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (216,54,'2016');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (217,55,'Cheetah');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (218,55,'Tiger');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (219,55,'Lions');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (220,55,'Lions');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (221,56,'1985');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (222,56,'1980');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (223,56,'1965');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (224,56,'1971');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (225,57,'Crusty');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (226,57,'Ronald');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (227,57,'Bart');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (228,57,'Lisa');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (229,58,'5th Century');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (230,58,'1890');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (231,58,'50AD');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (232,58,'1500BC');


INSERT INTO answers(ans_id, question_id, ans_text) VALUES (233,59,'Vatican City');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (234,59,'UK');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (235,59,'Monaco ');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (236,59,'Marshall Islands');

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (237,60,'220 Miles');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (238,60,'150 Miles');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (239,60,'180 Miles');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (240,60,'280 Miles');