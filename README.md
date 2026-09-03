# Office Employee Management System

## 📌 Project Overview

The **Office Employee Management System** is a MySQL database project designed to manage employee and department information in an organization.

The project demonstrates how relational databases can be used to store, organize, update, and retrieve employee information efficiently.

The database was developed using **MySQL** and **MySQL Workbench**.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Create a relational MySQL database for an office
- Store employee information
- Store department information
- Establish relationships between employees and departments
- Use primary keys and foreign keys
- Insert and manage employee records
- Retrieve employee information using SQL queries
- Filter and sort employee data
- Generate salary and department reports
- Practice SQL concepts such as `JOIN`, `WHERE`, `ORDER BY`, `GROUP BY`, and aggregate functions

---

## 🗄️ Database Structure

The project contains two main tables:

### 1. Departments

The `departments` table stores information about company departments.

| Column | Data Type | Description |
|---|---|---|
| department_id | INT | Unique department ID |
| department_name | VARCHAR(100) | Name of the department |
| location | VARCHAR(100) | Department location |

### 2. Employees

The `employees` table stores information about company employees.

| Column | Data Type | Description |
|---|---|---|
| employee_id | INT | Unique employee ID |
| name | VARCHAR(100) | Employee name |
| email | VARCHAR(100) | Employee email |
| gender | ENUM | Employee gender |
| date_of_birth | DATE | Employee date of birth |
| salary | DECIMAL(10,2) | Employee salary |
| hire_date | DATE | Employee hiring date |
| department_id | INT | Department associated with employee |

---

## 🔗 Database Relationship

The `employees` table is connected to the `departments` table through the `department_id` column.

```text
Departments
     |
     | department_id
     |
     ↓
Employees
