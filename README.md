# 📚 University Course Management System (SQL Project)

This project is a database system designed to manage **categories**, **subcategories**, **courses**, and **course prerequisites** for a university curriculum.  
It includes **normalized table designs**, **indexes** for optimization, and **views** for easier data retrieval and management.
## ✨ Features
- **Normalized Tables**: Categories, Subcategories, Courses, Course Prerequisites.
- **Efficient Data Retrieval**: Multiple SQL Views to simplify complex queries.
- **Performance Optimization**: Indexes created on important columns for faster search and join operations.
- **Realistic Sample Data**: Sample entries based on real-world university course structures.

---

## 📂 Project Structure

| Component | Description |
|-----------|-------------|
| **Tables** | Categories, Subcategories, Courses, Course_Prerequisites |
| **Views**  | Categories_Subcategories_View, Subcategories_Courses_View, Categories_Courses_View, Courses_Prerequisites_View |
| **Indexes** | Created on key columns like Category_Name, Subcategory_Name, Course_Code, Subcategory_ID, and Prerequisite_Code |

---

## 🛠️ How to Use

1. **Clone the repository**:
   ```bash
   https://github.com/danideveloper50/University-Course-Management-System
   ```

2. **Import the SQL File**:
   - Open MySQL Workbench (or any SQL client).
   - Run the provided SQL scripts to create tables, insert sample data, define views, and create indexes.

3. **Explore Views**:
   - Use simple `SELECT * FROM view_name;` commands to retrieve structured data easily.

4. **Check Indexes**:
   - View indexes using:
     ```sql
     SHOW INDEX FROM table_name;
     ```

---

## 🧩 Views Overview

- **Categories_Subcategories_View**:  
  Displays category and subcategory relationships.

- **Subcategories_Courses_View**:  
  Lists all subcategories with their associated courses.

- **Categories_Courses_View**:  
  Connects categories directly with their offered courses.

- **Courses_Prerequisites_View**:  
  Shows each course with its prerequisite courses.

---

## 🚀 Indexes Created

| Index Name | Table | Column | Purpose |
|------------|-------|--------|---------|
| idx_category_name | Categories | Category_Name | Speeds up category searches |
| idx_subcategory_name | Subcategories | Subcategory_Name | Speeds up subcategory searches |
| idx_course_code | Courses | Course_Code | Fast lookups and joins on course codes |
| idx_subcategory_id | Courses | Subcategory_ID | Fast joins between courses and subcategories |
| idx_prerequisite_code | Course_Prerequisites | Prerequisite_Code | Speeds up prerequisite queries |

---

## 📈 Why Indexes and Views?

- **Views**: Simplify frequent joins and complex queries, making the system easier to use for developers and admins.
- **Indexes**: Improve query performance significantly, especially when dealing with large datasets by allowing faster searches and joins.

---

## 🙌 Acknowledgments

Special thanks to my instructors for their support and guidance throughout this project!

---

## 📬 Contact

- **Name**: *Muhammad Daniyal*
- **Email**: *fa23-bai-009@cuiatk.edu.pk*
- **GitHub**: [danideveloper50](https://github.com/danideveloper50)
