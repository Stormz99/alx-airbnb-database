-- ============================================================
-- Airbnb Clone Database Schema
-- Author: Ijiola Abiodun (https://github.com/Stormz99)
-- Description: SQL DDL script for defining the relational schema
-- ============================================================

-- Table: states
CREATE TABLE states (
    state_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Table: cities
CREATE TABLE cities (
    city_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    state_id INTEGER NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_id) ON DELETE CASCADE
);

-- Table: users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: properties
CREATE TABLE properties (
    property_id SERIAL PRIMARY KEY,
    host_id INTEGER,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price_per_night DECIMAL(10, 2) NOT NULL,
    city_id INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES users(user_id) ON DELETE SET NULL,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- Table: bookings
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'confirmed',
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

-- Table: payments
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    booking_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

-- Table: reviews
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

-- Table: amenities
CREATE TABLE amenities (
    amenity_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- Table: property_amenities
CREATE TABLE property_amenities (
    property_id INTEGER NOT NULL,
    amenity_id INTEGER NOT NULL,
    PRIMARY KEY (property_id, amenity_id),
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (amenity_id) REFERENCES amenities(amenity_id)
);

-- Indexes for performance optimization
CREATE INDEX idx_booking_user ON bookings(user_id);
CREATE INDEX idx_property_city ON properties(city_id);
CREATE INDEX idx_payment_booking ON payments(booking_id);
