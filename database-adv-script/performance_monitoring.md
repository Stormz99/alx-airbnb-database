
---

###  `performance_monitoring.md`
```markdown
### Database Monitoring Report

Used `EXPLAIN ANALYZE` and `SHOW PROFILE` to assess slow queries.

Key Findings:
- Queries without proper indexes used full scans
- Correlated subqueries on large datasets were costly

Changes Made:
- Added indexes to bookings.user_id, bookings.start_date
- Normalized queries by avoiding sub-selects when not needed

**Example:**
Query on user bookings improved from 320ms → 95ms

Tools Used:
- EXPLAIN ANALYZE
- SHOW PROFILE
