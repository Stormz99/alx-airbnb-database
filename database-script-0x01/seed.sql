# Seeding Documentation - database-script-0x02

##  Objective
Populate the Airbnb Clone database with sample data to simulate real-world usage.

##  Files
- `seed.sql` – Contains all `INSERT INTO` statements

##  Sample Data Included
###  Users
Registered users acting as guests and hosts.

### States & Cities
Simulates geographical locations for properties.

###  Properties
Listings tied to hosts and located in specific cities.

###  Bookings
Simulated reservation history by guests.

###  Payments
Mock payment records for bookings.

###  Reviews
Ratings and comments left by users after their stay.

###  Amenities
Common property features like WiFi, parking, etc.

###  Property Amenities
Many-to-many mapping between properties and amenities.

##  Example Commands
```sql
INSERT INTO User(name, email, password) VALUES
('Alice Johnson', 'alice@example.com', 'hashed_pwd_1');

INSERT INTO Property(title, host_id, city_id, price_per_night) VALUES
('Cozy Bungalow', 1, 1, 120.00);
```

##  How to Run
1. Make sure all tables from `schema.sql` are already created.
2. Then run:
```sql
\i seed.sql
```

##  Notes
- Passwords are stored as plain text for simplicity. In real scenarios, use hash algorithms.
- Use realistic and diverse seed data for better testing and UI previews.
