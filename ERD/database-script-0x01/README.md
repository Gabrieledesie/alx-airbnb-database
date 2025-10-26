# Airbnb Database Schema

This folder contains SQL scripts to set up and manage the core database for an Airbnb-like application.

## Files

- **schema.sql**: SQL script that creates all tables, constraints, keys, and indexes for the Airbnb project database.

## About the Schema

The schema defines these main tables:

- **User**: Stores all users (guests, hosts, admins) with unique emails and required information.
- **Property**: Listings for rent, tied to a host/user, with details like location, price, and description.
- **Booking**: Reservations for properties, recording which user booked what, when.
- **Payment**: Payment records for completed bookings.
- **Review**: Feedback left by users for properties they have stayed at.
- **Message**: Private communication between users (guests and hosts).

## Constraints and Indexes

- UUIDs are used for all primary keys.
- Foreign keys maintain the relationships between users, properties, bookings, and payments.
- ENUM types restrict fields like role, status, and payment_method.
- Indexes improve lookup performance for important fields.

## How To Use

1. Run `schema.sql` in your SQL database server (PostgreSQL recommended) to create the required tables and constraints before inserting any data.
2. Make sure to adapt ENUM and UUID types if using a different SQL database system.

## Purpose

This schema is optimized for data consistency, easy querying, and maintainability, reflecting modern best practices for production-ready relational databases in a rental marketplace scenario.
