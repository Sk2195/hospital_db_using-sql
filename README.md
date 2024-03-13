## Hospital Database Project
- Welcome to the repository for the hospital.db databae. This repository is intended for the management of information
about a hospital or other healthcare facility.

## Objective:
- The objective of this project is to develop a database schema for a hospital, with table for patients, physicians, admissions, and provinces.
  The hospital system will find it easier to manage patient data, physician information, admissions records, and province data with the help of this database.

# Content
- schema.sql: This file contains the SQL commands used to create the structure of the database tables, relationships and constraints
- SQLQueryPart1.sql, SQLQuery-Part2.sql, SQLQuery-Part3.sql, SQL-Query-Part4.sql, SQl-Query-Part5-.sql contains all the queries executed for the hospital database. These queries are divided into five parts to break down the queries that were execute. Also, this make more flexible for organization.

## Schema Diagram:
![image](https://github.com/Sk2195/hospital_db_using-sql/assets/88911284/7d1beaa7-c476-4bdd-b72e-22a32937d1d7)



## Table Creation
- patients - Consists the information  about the patients including their patient_id, first_name, last_name, gender, birth_date,
  city, province_id, allergies, height, weight.
- doctors: Consists the information about the doctors including their doctor_id, first_name, last_name, speciality
- admissions: Consists the information about the admissions including their patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id
- province_names: Consists the information about the province_names including province_id, province_name
- 
## Sample Data:
Sample data has been inserted into the tables to demonstrate the functionality of the database. This data includes patient admissions with corresponding diagnoses, doctor information, patient details, and provincial data.
