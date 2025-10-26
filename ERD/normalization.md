# Normalization Steps to 3NF

- Removed redundant attributes from Booking that belong to User.
- Split multi-valued attributes into separate tables (e.g., User's multiple phone numbers).
- Ensured every non-key attribute depends only on the primary key.

This design reduces data duplication and improves data integrity.
