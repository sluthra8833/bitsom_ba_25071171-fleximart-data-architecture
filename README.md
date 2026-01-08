# bitsom_ba_25071171-fleximart-data-architecture
Module 2: Assignment: AI Data Architecture Design and Implementation

# FlexiMart Data Architecture Project

**Student Name:** Sahil Luthra  
**Student ID:** bitsom_ba_25071171  
**Email:** sluthra8833@gmail.com  
**Course:** Business Analytics – Data Architecture  
**Submission Date:** 08 January 2026  

---

## 1. Project Objective

The objective of this project is to design and implement an **end-to-end data architecture** for *FlexiMart* that supports:

- Structured data storage for operational reporting  
- NoSQL data handling for flexible analysis  
- A data warehouse for analytical and decision-support queries  

The project demonstrates the practical application of **ETL processes, relational modeling, NoSQL concepts, and dimensional modeling** as covered in the course.

---

## 2. Project Scope

The project is divided into the following major components:

1. **ETL Processing**
   - Extraction of raw data  
   - Data cleaning and standardization  
   - Transformation into analysis-ready formats  

2. **Relational Database Design**
   - Normalized schema creation  
   - Support for transactional and operational queries  

3. **NoSQL Implementation**
   - Storage and analysis using MongoDB  
   - Handling semi-structured data efficiently  

4. **Data Warehouse Design**
   - Dimensional modeling using a star schema  
   - Support for scalable analytical queries  

---

## 3. Repository Structure

```text
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md
```

## 4. Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## 5. Setup Instructions

All setup steps and execution instructions have been followed **exactly as provided in the assignment document**, without modification, to ensure consistency with evaluation requirements.


### Database Setup

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js
```

---

## 6. Key Learnings

- Designing **ETL pipelines** to handle inconsistent and incomplete source data  
- Applying **database normalization principles** for relational schema design  
- Understanding when to use **SQL vs NoSQL** based on data structure and use case  
- Implementing **dimensional modeling (star schema)** for analytical workloads  
- Translating business requirements into technical data models  

---

## 7. Challenges Faced and Resolution

### Challenge 1: Inconsistent Source Data Formats
- **Issue:** Variations in data types and missing values across datasets  
- **Resolution:** Implemented data validation, cleaning, and standardization during the ETL process  

### Challenge 2: Scalable Analytical Design
- **Issue:** Supporting efficient analytical queries on large datasets  
- **Resolution:** Designed a **star schema** in the data warehouse to optimize query performance  

---

## 8. Conclusion

This project demonstrates the implementation of a **complete data architecture pipeline**, integrating ETL processing, relational databases, NoSQL systems, and data warehousing concepts. The solution aligns with course objectives and supports both operational and analytical use cases.
