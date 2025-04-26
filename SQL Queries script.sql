
-- View for the Program table with Category and Subcategory information
CREATE VIEW ProgramCategories AS
SELECT p.Program_ID, p.Program_Name, c.Category_ID, c.Category_Name
FROM Program p
JOIN Categories c ON p.Program_ID = c.Program_ID;

-- View for Courses with Subcategory and Program information
CREATE VIEW CourseSubcategoryProgram AS
SELECT cr.Course_Code, cr.Course_Title, cr.Credit_Hours, s.Subcategory_ID, s.Subcategory_Name, cr.Program_ID
FROM Courses cr
JOIN Subcategories s ON cr.Subcategory_ID = s.Subcategory_ID;

-- View for Course Requirements with Program and Category details
CREATE VIEW CourseRequirementsProgram AS
SELECT cr.Requirement_ID, cr.Program_ID, cr.Category_Name, cr.Min_Courses, cr.Min_Credit_Hours
FROM Course_Requirements cr
JOIN Program p ON cr.Program_ID = p.Program_ID;

-- View for Subcategories with Category and Requirement Subcategory details
CREATE VIEW SubcategoryRequirements AS
SELECT s.Subcategory_ID, s.Subcategory_Name, c.Category_ID, c.Category_Name, rs.Requirement_Subcategory_ID
FROM Subcategories s
JOIN Categories c ON s.Category_ID = c.Category_ID
JOIN Requirement_Subcategories rs ON rs.Requirement_Subcategory_ID = s.Subcategory_ID;
-- View for Courses with their Prerequisites and Program Information
CREATE VIEW CoursePrerequisitesProgram AS
SELECT cp.Course_Code, cp.Prerequisite_Code, c.Course_Title, c.Program_ID
FROM Course_Prerequisites cp
JOIN Courses c ON cp.Course_Code = c.Course_Code;

-- Index on Program_ID in the Categories table
CREATE INDEX idx_program_id_categories ON Categories(Program_ID);

-- Index on Category_ID in the Subcategories table
CREATE INDEX idx_category_id_subcategories ON Subcategories(Category_ID);

-- Index on Subcategory_ID in the Courses table
CREATE INDEX idx_subcategory_id_courses ON Courses(Subcategory_ID);

-- Index on Program_ID in the Course_Requirements table
CREATE INDEX idx_program_id_course_requirements ON Course_Requirements(Program_ID);

-- Index on Requirement_Subcategory_ID in the Subcategories table
CREATE INDEX idx_requirement_subcategory_id_subcategories ON Subcategories(Requirement_Subcategory_ID);

-- Selection: Get all Programs with their Names and Duration
SELECT Program_Name, Minimum_Duration_Years
FROM Program;

-- Selection: Get all Categories where Category Name is 'Science'
SELECT Category_Name
FROM Categories
WHERE Category_Name = 'Science';

-- Selection: Get all Courses from Program_ID = 1
SELECT Course_Code, Course_Title
FROM Courses
WHERE Program_ID = 1;

-- Projection: Select only Program_Name from Program table
SELECT Program_Name
FROM Program;

-- Projection: Select Course_Title and Credit_Hours from Courses table
SELECT Course_Title, Credit_Hours
FROM Courses;

-- Projection: Select Category_Name and Requirement_ID from Categories table
SELECT Category_Name, Requirement_ID
FROM Categories;

-- Conditional Query: Get all Courses where Credit Hours are greater than 3
SELECT Course_Code, Course_Title
FROM Courses
WHERE Credit_Hours > 3;

-- Conditional Query: Get Programs with a Minimum Duration greater than or equal to 2 years
SELECT Program_Name
FROM Program
WHERE Minimum_Duration_Years >= 2;

-- Conditional Query: Get Categories where Requirement_ID is not null
SELECT Category_Name
FROM Categories
WHERE Requirement_ID IS NOT NULL;

-- Join Query: Get Programs with their corresponding Categories
SELECT p.Program_Name, c.Category_Name
FROM Program p
JOIN Categories c ON p.Program_ID = c.Program_ID;

-- Join Query: Get Courses with their Subcategories and Programs
SELECT cr.Course_Code, cr.Course_Title, s.Subcategory_Name, p.Program_Name
FROM Courses cr
JOIN Subcategories s ON cr.Subcategory_ID = s.Subcategory_ID
JOIN Program p ON cr.Program_ID = p.Program_ID;

-- Join Query: Get Course Requirements with Program and Category names
SELECT cr.Requirement_ID, cr.Program_ID, cr.Category_Name, p.Program_Name
FROM Course_Requirements cr
JOIN Program p ON cr.Program_ID = p.Program_ID;

-- Set Operation: Union - Get all unique Course Titles from Courses and Program_Structure
SELECT Course_Title FROM Courses
UNION
SELECT Name FROM Program_Structure;

-- Set Operation: Intersect - Get Course Codes that exist in both Courses and Course_Prerequisites
SELECT Course_Code FROM Courses
INTERSECT
SELECT Course_Code FROM Course_Prerequisites;

-- Set Operation: Except - Get all Courses that do not have prerequisites
SELECT Course_Code FROM Courses
EXCEPT
SELECT Course_Code FROM Course_Prerequisites;

-- Aggregation: Get the total number of courses per Program
SELECT Program_ID, COUNT(*) AS Total_Courses
FROM Courses
GROUP BY Program_ID;

-- Aggregation: Get the average minimum credit hours from Course_Requirements
SELECT Program_ID, AVG(Min_Credit_Hours) AS Average_Credit_Hours
FROM Course_Requirements
GROUP BY Program_ID;

-- Aggregation: Get the total number of Subcategories for each Category
SELECT Category_ID, COUNT(*) AS Total_Subcategories
FROM Subcategories
GROUP BY Category_ID;
