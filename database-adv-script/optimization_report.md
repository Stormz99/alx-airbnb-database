### Query Optimization Report

Initial query retrieved booking, user, property, and payment data. EXPLAIN showed sequential scans and redundant joins.

Optimizations:
- Added indexes to user_id, property_id, and payment_id
- Reduced select columns to only necessary ones
- Avoided fetching unused large text fields

**Performance Results:**
- Before: 400ms
- After: 120ms
