-- SQL statements for importing CSV data into the tables

-- Import categories.csv into categories table
COPY categories(category_id, category)
FROM ' "C:\Users\Ahmed\OneDrive\Documents\Project 2\Project 2\Resources\category.csv"
DELIMITER ',' 
CSV HEADER;

-- Import subcategories.csv into subcategories table
COPY subcategories(subcategory_id, subcategory)
FROM "C:\Users\Ahmed\OneDrive\Documents\Project 2\Project 2\Resources\subcategory.csv"
DELIMITER ',' 
CSV HEADER;

-- Import contacts.csv into contacts table
COPY contacts(contact_id, first_name, last_name, email)
FROM "C:\Users\Ahmed\OneDrive\Documents\Project 2\Project 2\Resources\contacts.csv"
WITH (FORMAT csv, HEADER true, DELIMITER ',');


-- Import campaigns.csv into campaigns table
COPY campaigns(cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, category_id, subcategory_id)
FROM "C:\Users\Ahmed\OneDrive\Documents\Project 2\Project 2\Resources\campaign.csv" 
WITH (FORMAT csv, HEADER true, DELIMITER ',');
