# Airbnb Database Schema

This folder contains the SQL script needed to set up the full relational database structure for an Airbnb-like application.

## Files

- **schema.sql**: This file defines all tables, fields, constraints, and relationships for the Airbnb database system.

## Schema Overview

The database schema includes the following tables:

- **User**: Stores information for guests, hosts, and admins.
- **Property**: Each property is linked to a host user and contains details like name, price per night, and location.
- **Booking**: Tracks reservations made by users for properties, including booking dates, status, and price.
- **Payment**: Records payment details for each booking, including payment method and amount.
- **Review**: Allows users to leave ratings and comments on properties they've stayed at.
- **Message**: Stores private messages sent between users.

## Keys and Constraints

- All tables use UUIDs for primary keys, enforcing global uniqueness.
- Foreign keys maintain relationships and ensure data integrity.
- Unique and not-null constraints enforce valid, non-duplicate records.
- Indexes are used on frequently queried columns like emails and foreign keys for performance.

## How to Use

1. Run the `schema.sql` file on your SQL database server to create all necessary tables and relationships.
2. Make sure your SQL environment supports `ENUM` and `UUID` types (e.g., PostgreSQL). For MySQL, you may need to adjust types accordingly.

## Purpose

This schema is designed for scalability and normalization (up to 3NF). It models real-world Airbnb features to minimize redundancy, ensure fast queries, and support core booking, property, messaging, and review functionalities.