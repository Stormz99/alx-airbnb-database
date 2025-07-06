-- 1. INNER JOIN: BOOKINGS and PROPERTIES
SELECT b.id AS booking_id, u.id AS user_id, u.name AS user_name, b.start_date, b.end_date, p.title AS property_title, p.price_per_night
FROM bookings b
INNER JOIN users u ON b.user_id=u.id;
INNER JOIN properties p ON b.property_id=p.id;

-- 2. LEFT JOIN: PROPERTIES and AMENITIES
SELECT p.id AS property_id, p.name AS property_name, r.id AS review_id, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = property_id;

-- 3. RIGHT JOIN: USERS and BOOKINGS
SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id, b.start_date, b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;