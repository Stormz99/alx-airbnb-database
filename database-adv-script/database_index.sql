-- Indexing columns used in WHERE, JOIN and ORDER BY
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_end_date ON bookings(end_date)
CREATE INDEX idx_review_property ON reviews(property_id);