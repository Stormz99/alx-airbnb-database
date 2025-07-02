# Database Normalization – Airbnb Clone

This document outlines the normalization process followed to ensure our database schema adheres to 3NF.

---

## 1. UNF – Unnormalized Form

All data was initially stored in a single flat table, including user, property, booking, and payment details.

---

## 2. 1NF – First Normal Form

- Removed repeating groups.
- Ensured all attributes are atomic (indivisible values).

---

## 3. 2NF – Second Normal Form

- Removed partial dependencies by separating data into tables based on primary keys.
- Created separate tables for `User`, `Property`, `City`, `Booking`, etc.

---

## 4. 3NF – Third Normal Form

- Removed transitive dependencies.
- Created a `State` table to separate it from `City`.
- Removed redundant columns and ensured all non-key attributes depend only on the primary key.

---

## Final Tables in 3NF

- `User`
- `Property`
- `Booking`
- `Payment`
- `Review`
- `Amenity`
- `Property_Amenity`
- `City`
- `State`
