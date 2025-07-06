### Partitioning Performance Report

Partitioned `bookings` table by `start_date` using RANGE.

Tested query:
```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
