-- Create a database called orders_management database
CREATE DATABASE orders_management;

-- Rename the database
ALTER DATABASE orders_management RENAME TO orders_management_renamed;
ALTER DATABASE orders_management_renamed RENAME TO orders_management;

-- Drop orders_management database
DROP DATABASE orders_management;

-- Backup orders_management database with timestamp
BACKUP DATABASE orders_management
TO DISK = 'D:\'; -- NOT working

-- Create a customers table in orders_management db
CREATE TABLE orders_management.public.customers (
customer_id serial PRIMARY KEY,
customer_name varchar (255) NOT NULL,
customer_email varchar (255) UNIQUE NOT NULL,
customer_phone varchar (50) UNIQUE NOT NULL,
customer_age int DEFAULT 99,
gdpr_status boolean NOT NULL,
customer_profile_status boolean NOT NULL,
date_profile_created date DEFAULT CURRENT_TIMESTAMP,
date_profile_deactivated date DEFAULT NULL,
deactivation_reason varchar (1000) DEFAULT NULL,
cutsomer_notes TEXT
);

-- Customers table should be optimized for querying by name, email or phone
CREATE INDEX name_index
ON customers (customer_name);

CREATE INDEX email_index
ON customers (customer_email);

CREATE INDEX phone_index
ON customers (customer_phone);

-- Drop customers table
DROP TABLE customers;

-- Truncate customers table
TRUNCATE TABLE customers;
)

USE DATABASE orders_management;



