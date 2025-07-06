-- Initial complex query before optimization
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.name AS user_name, u.email,
       p.name AS property_name, p.city,
       pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id