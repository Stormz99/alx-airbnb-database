#  ALX Airbnb Database Project

This repository contains a professionally designed relational database for an Airbnb-like platform. It includes a complete schema, normalization documentation, ERD diagrams, DDL scripts, and sample data scripts for simulation.

---

##  Project Objectives

- Design a scalable and normalized relational database (to 3NF)
- Visualize data structure with a well-defined Entity-Relationship Diagram (ERD)
- Implement database schema using SQL DDL with proper constraints and indexing
- Seed the database with realistic, relational sample data using SQL DML
- Simulate a production-grade backend database architecture

---

##  Repository Structure

```
alx-airbnb-database/
│
├── ERD/
│   └── requirements.md            # Documentation for the ERD design
│
├── database-script-0x01/
│   ├── schema.sql                 # SQL DDL to create the schema
│   └── README.md                 # Schema documentation and instructions
│
├── database-script-0x02/
│   ├── seed.sql                   # SQL DML to insert sample data
│   └── README.md                 # Seed data instructions and descriptions
│
├── images/
│   └── airbnb_erd.png            # ERD image representation
│
├── normalization.md              # Step-by-step normalization to 3NF
└── README.md                     # Project overview and run guide
```

---

##  Tasks Breakdown

| Task    | Description                                                                 |
|---------|-----------------------------------------------------------------------------|
| Task 0  | Define and visualize entities & relationships using an ER Diagram          |
| Task 1  | Normalize the schema to Third Normal Form (3NF)                            |
| Task 2  | Implement the database schema using SQL `CREATE TABLE` statements          |
| Task 3  | Populate the database using SQL `INSERT INTO` scripts with realistic data  |

---

##  Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Stormz99/alx-airbnb-database.git
cd alx-airbnb-database
```

### 2. Create Schema
Run the following SQL file to generate the database schema:
```sql
\i database-script-0x01/schema.sql
```

### 3. Seed Sample Data
After schema creation, insert sample data:
```sql
\i database-script-0x02/seed.sql
```

Ensure you run this in the correct SQL context (PostgreSQL or compatible environment).

---

##  Notes
- This project was developed as part of the **ALX ProDev Backend Program**
- Aimed to simulate a real-world backend architecture for property booking systems
- Follows best practices in schema design, normalization, and SQL scripting

---

##  Author
**Ijiola Abiodun**  
[GitHub](https://github.com/Stormz99) · Cloud & Backend Developer · GCP | AWS | DevOps

---

##  License
This project is licensed by ALX Africa. All rights reserved © 2025
