# demographic_data_analysis

# 🏥 Patient Demographics Analysis (SQL Project)

This beginner-friendly SQL project focuses on analyzing patient demographic data — specifically age and gender distributions — using real-world-style synthetic Electronic Health Record (EHR) data. The project is built using PostgreSQL and VSCode and is designed to demonstrate fundamental SQL skills such as data aggregation, grouping, filtering, and age calculation.

## 📂 Project Overview

- **Database**: PostgreSQL (`hospital_db`)
- **Environment**: VSCode
- **Data Source**: Synthetic EHR dataset (includes patients, doctors, appointments, medical records, and prescriptions)
- **Goal**: Analyze and visualize distributions of patient age and gender

## 📊 Key SQL Analyses

- Total number of patients
- Gender-wise patient distribution
- Age calculation from date of birth
- Age group segmentation (by decades)
- Combined gender × age group analysis

## 🛠️ Tools & Technologies

- PostgreSQL
- VSCode
- SQL
- (Optional) Python for visualization
- Git & GitHub for version control

## 📈 Sample Query

```sql
SELECT gender, COUNT(*) AS total
FROM patients
GROUP BY gender;
