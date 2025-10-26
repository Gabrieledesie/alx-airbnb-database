# Airbnb Database Schema Documentation

This directory contains the SQL scripts for creating the Airbnb project database schema.

## Files

- `schema.sql`: Contains all SQL statements to build the database's tables, constraints, indexes, and relationships.

## Database Schema Overview

The schema supports essential components for an Airbnb-like platform including:

- **User**: Stores information on guests, hosts, and admins.
- **Property**: Details about rental properties listed by hosts.
- **Booking**: Tracks reservations by users for properties.
- **Payment**: Records payment information tied to bookings.
- **Review**: Enables users to leave ratings and feedback on properties.
- **Message**: Handles communication between users.

## Important Features

- Uniquely identifies each record with UUID primary keys.
- Enforces data integrity with foreign keys and constraints.
- Uses ENUM types for certain fields (status, roles, payment methods).
- Includes indexes on key columns for performance optimization.

## Usage

To implement the database:

1. Run `schema.sql` in a supported database environment (PostgreSQL recommended).
2. Confirm all tables and constraints create successfully.
3. Use this schema as the foundation for further data population and applications.

## Notes

Make sure your database setup supports UUID and ENUM types. Adaptions may be required for other SQL servers.

This schema is normalized to at least the Third Normal Form (3NF) to minimize redundancy and improve data consistency.
