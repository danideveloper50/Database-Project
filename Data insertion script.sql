use SOS_FA23_BAI;
-- Inserting Categories (General Education, Major Discipline Courses, etc.)
INSERT INTO Categories (Category_Name) VALUES
('General Education Courses'),
('Major Discipline Courses'), -- Includes Computing Core, Domain Core, Domain Elective
('Interdisciplinary Courses'),
('Supporting Elective Courses'),
('Internship'),
('Capstone Project');

select * from categories;
UPDATE subcategories
SET Requirement_Subcategory_ID = NULL
WHERE Subcategory_Name  IS NULL;

DELETE FROM subcategories
WHERE Subcategory_Name IS NULL;



select * from subcategories;
insert into categories(Requirement_ID) values 
(1),
(2),
(3),
(6),
(4),
(5);
select * from categories;
select * from Course_Requirements;

UPDATE Categories
SET Requirement_ID = CASE 
    WHEN Category_ID = 1 THEN 1
    WHEN Category_ID = 2 THEN 2
    WHEN Category_ID = 3 THEN 3
    WHEN Category_ID = 4 THEN 6
    WHEN Category_ID = 5 THEN 4
    WHEN Category_ID = 6 THEN 5
END
WHERE Category_ID IN (1, 2, 3, 4, 5, 6);


ALTER TABLE Categories
ADD Requirement_ID INT;
ALTER TABLE Categories
ADD CONSTRAINT fk_requirement
FOREIGN KEY (Requirement_ID)
REFERENCES Course_Requirements(Requirement_ID);



alter table Subcategories
modify Subcategory_Name varchar(100);
-- Inserting Subcategories for General Education (11 Subcategories)
INSERT INTO Subcategories (Subcategory_Name, Category_ID) VALUES
('Arts and Humanities', 1),
('Natural Sciences', 1),
('Social Sciences', 1),
('Functional English', 1),
('Expository Writing', 1),
('Quantitative Reasoning ', 1),
('Islamic Studies', 1),
('Ideology and Constitution of Pakistan', 1),
('Applications of Information and Communication Technologies', 1),
('Entrepreneurship', 1),
('Civics and Community Engagement', 1);



-- Insert Subcategories for Major Discipline Courses (Computing Core, Domain Core, Domain Elective)
INSERT INTO Subcategories (Subcategory_Name, Category_ID) VALUES
('Computing Core', 2),  -- Major Discipline Courses (Computing Core)
('Domain Core', 2),    -- Major Discipline Courses (Domain Core)
('Domain Elective', 2); -- Major Discipline Courses (Domain Elective)


-- Art and humanities courses
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('CSC210', 'Professional Practices', '2(2,0)', 1, 1),
('HUM310', 'Islamic History', '2(2,0)', 1, 1),
('ADA111', 'History and Theory of Art and Culture I', '2(2,0)', 1, 1),
('ARC108', 'Art Appreciation', '2(2,0)', 1, 1),
('ARC351', 'Calligraphic Arts', '2(2,0)', 1, 1);

-- Natural Sciences Courses
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('PHY124', 'Applied Physics', '3(2,1)', 2, 1),
('BIO100', 'Fundamentals of Biology', '3(2,1)', 2, 1),
('BIO321', 'Fundamentals of Genetics', '3(2,1)', 2, 1),
('BIO310', 'Introduction to Bioinformatics', '3(2,1)', 2, 1),
('CHM100', 'Introduction to Chemistry', '3(2,1)', 2, 1);

-- Social Sciences Courses
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('HUM122', 'Fundamentals of Psychology', '2(2,0)', 3, 1),
('HUM209', 'Fundamentals of Political Science', '2(2,0)', 3, 1),
('HUM130', 'Fundamentals of Sociology', '2(2,0)', 3, 1),
('HUM222', 'Fundamentals of International Relations', '2(2,0)', 3, 1),
('HUM131', 'Anthropology', '2(2,0)', 3, 1);
-- Functional English
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('HUM104', 'Functional English', '3(3,0)', 4, 1);
-- Expository writing
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('HUM120', 'Expository Writing', '3(3,0)', 5, 1);

-- Quantitative Reasoning
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('CSC102', 'Discrete Structures', '3(3,0)', 6, 1),
('MTH104', 'Calculus and Analytic Geometry', '3(3,0)', 6, 1),
('MTH103', 'Exploring Quantitative Skills', '3(3,0)', 6, 1),
('MTH114', 'Tools for Quantitative Reasoning', '3(3,0)', 6, 1);

INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('HUM112', 'Islamic Studies', '2(2,0)', 7, 1),
('HUM116', 'Ethics', '2(2,0)', 7, 1);

INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('HUM113', 'Ideology and Constitution of Pakistan', '2(2,0)', 8, 1);

INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('CSC101', 'Applications of Information and Communication Technologies', '3(2,1)', 9, 1),
('MGT250', 'Introduction to Entrepreneurship', '2(2,0)', 10, 1),
('HUM208', 'Civics and Community Engagement', '2(2,0)', 11, 1);

-- Computing Courses
-- Insert Computing Core Courses
-- Insert Computing Core Courses (Subcategory_ID = 12)
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('CSC103', 'Programming Fundamentals', '4(3,1)', 12, 2),
('CSC241', 'Object Oriented Programming', '4(3,1)', 12, 2),
('CSC270', 'Database Systems', '4(3,1)', 12, 2),
('EEE240', 'Fundamentals of Digital Logic Design', '3(2,1)', 12, 2),
('CSC211', 'Data Structures', '4(3,1)', 12, 2),
('CSC232', 'Information Security', '3(2,1)', 12, 2),
('CSC262', 'Artificial Intelligence', '3(2,1)', 12, 2),
('CSC275', 'Computer Networks', '3(2,1)', 12, 2),
('CSC291', 'Software Engineering', '3(3,0)', 12, 2),
('CSC325', 'Computer Organization and Assembly Language', '3(2,1)', 12, 2),
('CSC323', 'Operating Systems', '3(2,1)', 12, 2),
('CSC301', 'Design and Analysis of Algorithms', '3(3,0)', 12, 2);

-- inserting Domain Core Courses (sub category id = 13)
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('AIC270', 'Programming for Artificial Intelligence', '3(2,1)', 13, 2),
('AIC354', 'Machine Learning Fundamentals', '3(2,1)', 13, 2),
('AIC372', 'Knowledge Representation and Reasoning', '3(3,0)', 13, 2),
('AIC380', 'Artificial Neural Networks and Deep Learning', '3(2,1)', 13, 2),
('AIC341', 'Introduction to Computer Vision', '3(2,1)', 13, 2),
('AIC365', 'Natural Language Processing', '3(2,1)', 13, 2);

-- Insert Domain Elective Courses (Subcategory_ID = 14)
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Subcategory_ID, Category_ID) VALUES
('AIC332', 'Agent Based Modeling', '3(2,1)', 14, 2),
('AIC333', 'Statistical Methods for AI', '3(3,0)', 14, 2),
('AIC350', 'Topics in Artificial Intelligence I', '3(3,0)', 14, 2),
('AIC378', 'Speech Processing', '3(2,1)', 14, 2),
('AIC456', 'Reinforcement Learning', '3(2,1)', 14, 2),
('AIC468', 'Fuzzy Systems', '3(2,1)', 14, 2),
('AIC469', 'Evolutionary Computing', '3(3,0)', 14, 2),
('AIC470', 'Knowledge Based Systems', '3(2,1)', 14, 2),
('AIC471', 'Swarm Intelligence', '3(2,1)', 14, 2),
('AIC483', 'Topics in Artificial Intelligence II', '3(3,0)', 14, 2),
('CSC303', 'Mobile Application Development', '3(2,1)', 14, 2),
('CSC331', 'Digital Image Processing', '3(2,1)', 14, 2),
('CSC335', 'Game Design', '3(3,0)', 14, 2),
('CSC336', 'Web Technologies', '3(2,1)', 14, 2),
('CSC337', 'Advanced Web Technologies', '3(2,1)', 14, 2),
('CSC353', 'Computer Graphics', '3(2,1)', 14, 2),
('CSC365', 'HCI and Computer Graphics', '3(2,1)', 14, 2),
('CSC412', 'Advanced Programming', '3(2,1)', 14, 2),
('CSC417', 'E-Commerce and Digital Marketing', '3(2,1)', 14, 2),
('CSC418', 'DevOps for Cloud Computing', '3(2,1)', 14, 2),
('CSC421', 'Robotics', '3(3,0)', 14, 2),
('CSC495', 'Game Development', '3(2,1)', 14, 2),
('CSC496', 'Game Engine Development', '3(2,1)', 14, 2),
('DSC306', 'Data Mining', '3(2,1)', 14, 2);

-- interdisciplinary Courses
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Category_ID) VALUES
('MTH105', 'Multivariable Calculus', '3(3,0)', 3),
('MTH231', 'Linear Algebra', '3(3,0)', 3),
('MTH262', 'Statistics and Probability Theory', '3(3,0)', 3),
('HUM121', 'Technical and Business Writing', '3(3,0)', 3);

-- Insert Supporting Elective Courses
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Category_ID) VALUES
('MGT131', 'Financial Accounting', '3(3,0)', 4),  -- Supporting Elective Courses
('MGT210', 'Fundamentals of Marketing', '3(3,0)', 4),
('MGT350', 'Human Resource Management', '3(3,0)', 4),
('MGT513', 'New Product Development', '3(3,0)', 4),
('EC0484', 'Project Planning and Monitoring', '3(3,0)', 4),
('HUM220', 'Introduction to Psychology', '3(3,0)', 4),
('HUM221', 'International Relations', '3(3,0)', 4),
('HUM430', 'French', '3(3,0)', 4),
('HUM431', 'German', '3(3,0)', 4),
('HUM432', 'Arabic', '3(3,0)', 4),
('HUM434', 'Chinese', '3(3,0)', 4);

-- Intership
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Category_ID) VALUES
('AIC395', 'Field Experience/Internship', '3(0,3)', 5); 
-- Capstone Project
INSERT INTO Courses (Course_Code, Course_Title, Credit_Hours, Category_ID) VALUES
('AIC498', 'Final Year Project I', '2(0,2)', 6), -- Capstone Project I
('AIC499', 'Final Year Project II', '4(0,4)', 6); -- Capstone Project II

-- Pre-requisites for computing core Courses
INSERT INTO Course_Prerequisites (Course_Code, Prerequisite_Code) VALUES
('CSC241', 'CSC103'), -- Object Oriented Programming requires Programming Fundamentals
('CSC211', 'CSC103'), -- Data Structures requires Programming Fundamentals
('CSC301', 'CSC211'), -- Design and Analysis of Algorithms requires Data Structures
('CSC325', 'EEE240'); -- Computer Organization and Assembly Language requires Digital Logic Design

-- prerequisites for Domain Core Courses
INSERT INTO Course_Prerequisites (Course_Code, Prerequisite_Code) VALUES
('AIC270', 'CSC262'), -- Programming for AI requires Object Oriented Programming
('AIC372', 'CSC262'), -- Knowledge Representation and Reasoning requires Artificial Intelligence
('AIC380', 'CSC262'); -- Artificial Neural Networks and Deep Learning requires Artificial Intelligence

-- prerequisites for Domain Elective Courses
INSERT INTO Course_Prerequisites (Course_Code, Prerequisite_Code) VALUES
('AIC333', 'MTH262'), -- Statistical Methods for AI requires Statistics and Probability
('CSC303', 'CSC241'),
('CSC336', 'CSC241'), -- Web Technologies requires Object Oriented Programming
('CSC337', 'CSC336'), -- Advanced Web Technologies requires Web Technologies
('CSC412', 'CSC241'), -- Advanced Programming requires Object Oriented Programming
('CSC495', 'CSC241'), -- Game Development requires Object Oriented Programming
('CSC496', 'CSC495'); -- Game Engine Development requires Game Development

-- prerequisits for Capstone Project
INSERT INTO Course_Prerequisites (Course_Code, Prerequisite_Code) VALUES
('AIC498', 'CSC270'), -- Final Year Project I requires Database Systems
('AIC498', 'CSC291'), -- Final Year Project I requires Software Engineering
('AIC498', 'CSC241'), -- Final Year Project I requires Object Oriented Programming
('AIC499', 'AIC498'); -- Final Year Project II requires Final Year Project I

ALTER TABLE Courses ADD Program_ID INT;
ALTER TABLE Courses ADD FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID);
INSERT INTO Program (Program_Name, Approval_Date, Minimum_Duration_Years, Minimum_Semesters, Minimum_Credit_Hours) VALUES
('Bachelor of Science in Artificial Intelligence (BS AI)', '2023-08-22', 4, 8, 133);
-- Associate all existing courses with Program_ID = 1
UPDATE Courses SET Program_ID = 1 WHERE Category_ID between 1 and 6 ;
select * from Subcategories;
UPDATE Subcategories
SET Requirement_Subcategory_ID = CASE 
    WHEN Subcategory_ID = 1 THEN 4
    WHEN Subcategory_ID = 5 THEN 5
    WHEN Subcategory_ID = 6 THEN 6
    WHEN Subcategory_ID = 7 THEN 7
    WHEN Subcategory_ID = 8 THEN 8
    WHEN Subcategory_ID = 9 THEN 9
    WHEN Subcategory_ID = 10 THEN 10
    WHEN Subcategory_ID = 11 THEN 11
    WHEN Subcategory_ID = 12 THEN 12
    WHEN Subcategory_ID = 13 THEN 13
    WHEN Subcategory_ID = 14 THEN 14
    WHEN Subcategory_ID = 1 THEN 1
    WHEN Subcategory_ID = 2 THEN 2
    WHEN Subcategory_ID = 3 THEN 3
END
WHERE Subcategory_ID IN (4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3);

UPDATE Subcategories
SET Requirement_Subcategory_ID = CASE 
    WHEN Subcategory_ID = 1 THEN 4
    WHEN Subcategory_ID = 2 THEN 5
    WHEN Subcategory_ID = 3 THEN 6
    WHEN Subcategory_ID = 4 THEN 7
    WHEN Subcategory_ID = 5 THEN 8
    WHEN Subcategory_ID = 6 THEN 9
    WHEN Subcategory_ID = 7 THEN 10
    WHEN Subcategory_ID = 8 THEN 11
    WHEN Subcategory_ID = 9 THEN 12
    WHEN Subcategory_ID = 10 THEN 13
    WHEN Subcategory_ID = 11 THEN 14
    WHEN Subcategory_ID = 12 THEN 1
    WHEN Subcategory_ID = 13 THEN 2
    WHEN Subcategory_ID = 14 THEN 3
END
WHERE Subcategory_ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14);

insert into Subcategories(Requirement_Subcategory_ID) values 
(4), -- when subcategory_id = 1
(5), -- subcategory_id = 1
(6), -- 3
(7), -- 4
(8), -- 5
(9),
(10), -- 7
(11),
(12), -- subcategory_id = 9
(13), -- 10
(14),
(1),
(2), -- 13
(3); -- 14
select * from Requirement_Subcategories;

ALTER TABLE Subcategories
ADD Requirement_Subcategory_ID INT;
ALTER TABLE Subcategories
ADD CONSTRAINT fk_requirement_subcategory
FOREIGN KEY (Requirement_Subcategory_ID)
REFERENCES Requirement_Subcategories(Requirement_Subcategory_ID);

select * from Requirement_Subcategories;


alter table Course_Requirements 
drop constraint course_requirements_ibfk_1;
drop table Course_Requirements;
select * from Course_Requirements;

INSERT INTO Course_Requirements (Program_ID, Category_Name, Min_Courses, Min_Credit_Hours) VALUES
(1, 'General Education Courses', 12, 30),
(1, 'Major Discipline Courses', 25, 79),
(1, 'Interdisciplinary/Allied Courses', 5, 15),
(1, 'Internship', 1, 3),
(1, 'Capstone Project', 2, 6);
INSERT INTO Course_Requirements (Program_ID, Category_Name, Min_Courses, Min_Credit_Hours) VALUES
(1, 'Supporting Elective Courses', 1, 3);
INSERT INTO Categories (Category_Name) VALUES
('General Education Courses'),
('Major Discipline Courses'), -- Includes Computing Core, Domain Core, Domain Elective
('Interdisciplinary Courses'),
('Supporting Elective Courses'),
('Internship'),
('Capstone Project');

INSERT INTO Requirement_Subcategories (Requirement_ID, Subcategory_Name, Min_Courses, Min_Credit_Hours) VALUES
(2, 'Computing Core', 12, 40),
(2, 'Domain Core', 6, 18),
(2, 'Domain Elective', 7, 21);
ALTER TABLE Requirement_Subcategories
RENAME COLUMN Subcategory_ID TO Requirement_Subcategory_ID;
select * from Requirement_Subcategories;
-- Link Subcategories for General Education Courses
INSERT INTO Requirement_Subcategories (Requirement_ID, Subcategory_Name, Min_Courses, Min_Credit_Hours) VALUES
(1, 'Arts and Humanities', 1, 2),
(1, 'Natural Sciences', 1, 3),
(1, 'Social Sciences', 1, 2),
(1, 'Functional English', 1, 3),
(1, 'Expository Writing', 1, 3),
(1, 'Quantitative Reasoning', 2, 6),
(1, 'Islamic Studies', 1, 2),
(1, 'Ideology and Constitution of Pakistan', 1, 2),
(1, 'Applications of ICT', 1, 3),
(1, 'Entrepreneurship', 1, 2),
(1, 'Civics and Community Engagement', 1, 2);

ALTER TABLE Courses
ADD Requirement_Subcategory_ID int;

UPDATE Courses
SET Requirement_Subcategory_ID = 2
WHERE Subcategory_ID = 13;

select Requirement_Subcategory_ID,Subcategory_Name from Requirement_Subcategories;
select Subcategory_ID, Subcategory_Name from courses natural join subcategories;
UPDATE Courses
SET Requirement_Subcategory_ID = 4 -- Arts and Humanities
WHERE Subcategory_ID = 1;

UPDATE Courses
SET Requirement_Subcategory_ID = 5 -- Natural Sciences
WHERE Subcategory_ID = 2;

UPDATE Courses
SET Requirement_Subcategory_ID = 6 -- Social Sciences
WHERE Subcategory_ID = 3;

UPDATE Courses
SET Requirement_Subcategory_ID = 7 -- Functional English
WHERE Subcategory_ID = 4;

UPDATE Courses
SET Requirement_Subcategory_ID = 8 -- Expository Writing
WHERE Subcategory_ID = 5;

UPDATE Courses
SET Requirement_Subcategory_ID = 9 -- Quantitative Reasoning
WHERE Subcategory_ID = 6;

UPDATE Courses
SET Requirement_Subcategory_ID = 11 -- Ideology and Constitution of Pakistan
WHERE Subcategory_ID = 8;

UPDATE Courses
SET Requirement_Subcategory_ID = 12 -- Applications of ICT
WHERE Subcategory_ID = 9;

UPDATE Courses
SET Requirement_Subcategory_ID = 13 -- Entrepreneurship
WHERE Subcategory_ID = 10;

UPDATE Courses
SET Requirement_Subcategory_ID = 14 -- Civics and Community Engagement
WHERE Subcategory_ID = 11;

UPDATE Courses
SET Requirement_Subcategory_ID = 1 -- Computing Core
WHERE Subcategory_ID = 12;

UPDATE Courses
SET Requirement_Subcategory_ID = 2 -- Domain Core
WHERE Subcategory_ID = 13;

UPDATE Courses
SET Requirement_Subcategory_ID = 3 -- Domain Elective
WHERE Subcategory_ID = 14;
INSERT INTO Program_Structure (Program_ID, Name, Credits_Required, Description) VALUES
(1, 'Single Major', 130, 'A single major program requiring 30 credits for General Education, 82 for the major, 12 for interdisciplinary studies, 3 for Field Experience, and 3 for Capstone Project.'),
(1, 'Single Major with Minor', 142, 'A single major with a minor requiring 30 credits for General Education, 82 for the major, 12 for interdisciplinary studies, 3 for Field Experience, 3 for Capstone Project, and 12 for the minor.'),
(1, 'Single Major with Two Minors', 154, 'A single major with two minors requiring 30 credits for General Education, 72 for the major, 12 for interdisciplinary studies, 3 for Field Experience, 3 for Capstone Project, and 24 for two minors.'),
(1, 'Double Major', 192, 'A double major program requiring 30 credits for General Education, 72 for each major, 3 for Field Experience, and 3 for Capstone Project.');

alter table courses
drop Requirement_Subcategory_ID;

-- Link Subcategories to Courses
ALTER TABLE Courses ADD Requirement_Subcategory_ID INT;
ALTER TABLE Courses ADD FOREIGN KEY (Requirement_Subcategory_ID) REFERENCES Requirement_Subcategories(Subcategory_ID);
