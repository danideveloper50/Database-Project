use SOS_FA23_BAI;
CREATE TABLE Program (
    Program_ID INT PRIMARY KEY AUTO_INCREMENT,
    Program_Name VARCHAR(200),
    Approval_Date DATE,
    Minimum_Duration_Years INT,
    Minimum_Semesters INT,
    Minimum_Credit_Hours INT
);
CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(50)
);
ALTER TABLE Categories
ADD Program_ID INT;

ALTER TABLE Categories
ADD CONSTRAINT fk_program
FOREIGN KEY (Program_ID)
REFERENCES Program(Program_ID);

select * from categories;
UPDATE Categories
SET Program_ID = 1
Where Category_ID between 1 and 8;

ALTER TABLE Categories
ADD Requirement_ID INT;
ALTER TABLE Categories
ADD CONSTRAINT fk_requirement
FOREIGN KEY (Requirement_ID)
REFERENCES Course_Requirements(Requirement_ID);
-- Subcategories Table
CREATE TABLE Subcategories (
    Subcategory_ID INT PRIMARY KEY AUTO_INCREMENT,
    Subcategory_Name VARCHAR(50),
    Category_ID INT,
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);
ALTER TABLE Subcategories
ADD Requirement_Subcategory_ID INT;
ALTER TABLE Subcategories
ADD CONSTRAINT fk_requirement_subcategory
FOREIGN KEY (Requirement_Subcategory_ID)
REFERENCES Requirement_Subcategories(Requirement_Subcategory_ID);

-- Courses Table
CREATE TABLE Courses (
    Course_Code VARCHAR(10) PRIMARY KEY,
    Course_Title VARCHAR(100),
    Credit_Hours VARCHAR(10),
    Subcategory_ID INT,
    Category_ID INT,
    FOREIGN KEY (Subcategory_ID) REFERENCES Subcategories(Subcategory_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);
ALTER TABLE Courses ADD Program_ID INT;
ALTER TABLE Courses ADD FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID);

-- Course Prerequisites Table
CREATE TABLE Course_Prerequisites (
    Course_Code VARCHAR(10),
    Prerequisite_Code VARCHAR(10),
    PRIMARY KEY (Course_Code, Prerequisite_Code),
    FOREIGN KEY (Course_Code) REFERENCES Courses(Course_Code),
    FOREIGN KEY (Prerequisite_Code) REFERENCES Courses(Course_Code)
);
-- Create Course Requirements Table
CREATE TABLE Course_Requirements (
    Requirement_ID INT PRIMARY KEY AUTO_INCREMENT,
    Program_ID INT,
    Category_Name VARCHAR(100),
    Min_Courses INT,
    Min_Credit_Hours INT,
    FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID)
);

CREATE TABLE Requirement_Subcategories (
    Subcategory_ID INT PRIMARY KEY AUTO_INCREMENT,
    Requirement_ID INT,
    Subcategory_Name VARCHAR(100),
    Min_Courses INT,
    Min_Credit_Hours INT,
    FOREIGN KEY (Requirement_ID) REFERENCES Course_Requirements(Requirement_ID)
);

CREATE TABLE Program_Structure (
    Structure_ID INT PRIMARY KEY AUTO_INCREMENT,
    Program_ID INT,
    Name VARCHAR(100),
    Credits_Required INT,
    Description TEXT,
    FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID)
);

