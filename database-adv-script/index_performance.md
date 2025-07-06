### Indexing Performance Report

Before indexing, querying bookings by `user_id` and `start_date` had high latency. Using `EXPLAIN`, the query scanned thousands of rows.

After creating indexes on `user_id`, `property_id`, and `start_date`, the number of rows scanned decreased drastically and the query execution time improved by over 60%.

**Example Improvement:**
- Before: 250ms
- After: 85ms

Indexes used:
- `bookings(user_id)`
- `bookings(property_id)`
- `bookings(start_date)`
- `bookings(user_id, start_date)`
- `bookings(property_id, start_date)`