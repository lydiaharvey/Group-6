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
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (2,1,'What city is Buckingham Palace in?',2);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (3,1,'What country do kangeroos live in?',3);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (4,1,'Which is not a 4 sided shape?',4);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (5,1,'What day is remembered for Jesus birth?',5);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (6,1,'When is Remberance day?',6);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (7,1,'When did Queen Elizabeth II die?',7);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (8,1,'How many dwarfs were there in Snow White?',8);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (9,1,'What superhero is known for being green?',9);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (10,1,'What social media logo has a bird in?',10);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (11,2,'What country flag has red, yellow and black in?',11);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (12,2,'An iPhone is made by what brand ?',12);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (13,2,'What city is known for having a naval base?',13);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (14,2,'Which singer has the song ''shape of you''',14);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (15,2,'What supermarket has an orange logo?',15);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (16,2,'What Disney film is based on superheroes?',16);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (17,2,'What fizzy drink brand is known for doing coke?',17);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (18,2,'What chocolate brand does Milkybar?',2);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (19,2,'What film features the character Captain Jack Sparrow?',2);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (20,2,'How many days in march?',20);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (21,3,'What football fan club are known as gunners?',21);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (22,3,'What was the other gift given by the 3 wise men, frankensence,gold and …?',22);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (23,3,'How many wives did Henry VIII have?',23);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (24,3,'How much does an average person spend on groceries a month?',24);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (25,3,'What do married people normally wear?',25);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (26,3,'In programming, true and false is known as?',26);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (27,3,'Who is the manager of Liverpool FC?',27);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (28,3,'How many people in a netball team?',28);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (29,3,'Which reality TV show has maya jama started to present recently?',29);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (30,3,'What is the main colour in the Sinagpore flag?',30);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (31,4,'What country is known for having pryamids?',31);      
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (32,4,'Who is the longest reigning monarch?',32);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (33,4,'How many carats does pure gold have?',33);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (34,4,'Where is the show "Friends" set?',34);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (35,4,'Which of the options did is not a Shakespeare play?',35);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (36,4,'How many colours in a rainbow?',36);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (37,4,'Which fast foods mascot is a clown?',37);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (38,4,'What animal is Jurassic Park about?',38);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (39,4,'When was Queen Elizabeth II born?',39);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (41,4,'What is the chemical symbol for Potassium?',41);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (42,5,'Which Chelsea manager recently got sacked?',42);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (43,5,'What was the original name of "Google"?',43);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (44,5,'What is the most expensive spice?',44);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (45,5,'How many days in a leap year?',45);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (46,5,'What shape is the sign on roads with speed limits?',46);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (47,5,'Which artist is known for cutting off his ear?',47);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (48,5,'What did Prince William name his first child?',48);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (49,5,'How many udders does a cow have?',49);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (50,5,'Which animal spends 90% of its time sleeping?',50);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (51,5,'What is a baby goat called?',51);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (52,6,'How many sports play at the Olympics?',52);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (53,6,'What is the largest planet in the solar system?',53);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (54,6,'What is the currency in Denmark?',54);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (55,6,'What year did David Cameron become PM?',55);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (56,6,'What is the fastest animal in the world?',56);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (57,6,'When did EastEnders first air on TV?',57);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (58,6,'What was the name of the clown in the Simpsons? ',58);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (59,6,'When did Buddhism become a religion?',59);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (60,6,'What is the smallest country in the world?',60);
INSERT INTO questions(question_id, quiz_id,  question_text, correct_ans_id) VALUES (61,6,'How many miles is the longest river in the UK?',61);

---data for questions---
--CREATE TABLE answers(
  --  ans_id INTEGER NOT NULL PRIMARY KEY,
    -- question_id INTEGER NOT NULL REFERENCES questions(question_id),
    -- ans_text TEXT(100)

INSERT INTO answers(ans_id, question_id, ans_text) VALUES (1,1,'8');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (2,2,'London');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (3,3,'Australia');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (4,4,'Octagon');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (5,5,'Christmas');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (6,6,'11/11');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (7,7,'2022');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (8,8,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (9,9,'Hulk');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (10,10,'Twitter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (11,11,'Germany');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (12,12,'Apple');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (13,13,'Portsmouth');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (14,14,'Ed Sheeran');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (15,15,'Sainsbury');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (16,16,'The Incredibles');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (17,17,'Coca Cola');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (18,18,'Nestle');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (19,19,'Pirates of the Carribean');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (20,20,'31');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (21,21,'Arsenal');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (22,22,'Murr');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (23,23,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (24,24,'£206');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (25,25,'Rings');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (26,26,'Boolean');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (27,27,'Juergon Klopp');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (28,28,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (29,29,'Love Island');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (30,30,'Red');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (31,31,'Egypt');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (32,32,'Louis XIV');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (33,33,'24');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (34,34,'New York');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (35,35,'Titanic');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (36,36,'7');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (37,37,'Mcdonalds');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (38,38,'Dinosaurs');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (39,39,'1930');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (40,40,'K');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (41,41,'Thomas Tuchel');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (42,42,'Backrub');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (43,43,'Saffron');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (44,44,'366');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (45,45,'Circle');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (46,46,'Van Gogh');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (47,47,'George');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (48,48,'6');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (49,49,'Koala');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (50,50,'Kid');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (51,51,'32');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (52,52,'Juipiter');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (53,53,'Krone');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (54,54,'2010');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (55,55,'Cheetah');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (56,56,'1985');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (57,57,'Crusty');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (58,58,'5th Century');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (59,59,'Vatican City');
INSERT INTO answers(ans_id, question_id, ans_text) VALUES (60,60,'220 Miles');