-- Database: Crowdfunding

-- DROP DATABASE IF EXISTS "Crowdfunding";

CREATE DATABASE "Crowdfunding"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table for categories
CREATE TABLE categories (
	category_id SERIAL PRIMARY KEY,
	category VARCHAR(255) NOT NULL
);

-- Table for subcategories
CREATE TABLE subcategories (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL,
    category_id INT REFERENCES categories(category_id)
);

-- Table for contacts
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Table for campaigns
CREATE TABLE campaigns (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id INT REFERENCES categories(category_id),
    subcategory_id INT REFERENCES subcategories(subcategory_id)
);



