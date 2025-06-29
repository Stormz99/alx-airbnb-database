# ER Diagram – Airbnb Clone Database

This document presents the Entity-Relationship Diagram (ERD) for the Airbnb clone project.

## Entities and Attributes

1. **User**
   - user_id (PK)
   - name
   - email
   - password

2. **Property**
   - property_id (PK)
   - host_id (FK → User.user_id)
   - title
   - description
   - price_per_night
   - city_id (FK)

3. **Booking**
   - booking_id (PK)
   - user_id (FK → User.user_id)
   - property_id (FK → Property.property_id)
   - start_date
   - end_date
   - status

4. **Payment**
   - payment_id (PK)
   - booking_id (FK → Booking.booking_id)
   - amount
   - payment_date
   - payment_status

5. **Review**
   - review_id (PK)
   - user_id (FK → User.user_id)
   - property_id (FK → Property.property_id)
   - rating
   - comment
   - created_at

6. **Amenity**
   - amenity_id (PK)
   - name

7. **Property_Amenity**
   - property_id (FK)
   - amenity_id (FK)

8. **City**
   - city_id (PK)
   - name
   - state_id (FK)

9. **State**
   - state_id (PK)
   - name

## Relationships

- A User can book many Properties.
- A Property is owned by a User (host).
- A Booking is linked to a Property and User.
- A Payment is tied to a Booking.
- A Review is submitted by a User for a Property.
- A Property can have multiple Amenities (M:N via Property_Amenity).
- A City belongs to a State; each Property is in a City.

## ER Diagram

![ER Diagram](../images/airbnb_erd.png) <!-- Add your diagram image -->
