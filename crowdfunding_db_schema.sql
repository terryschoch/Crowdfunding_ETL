DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS campaign;


-- Create new tables to import data
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(35),
	last_name VARCHAR(35),
	email VARCHAR(70),
	PRIMARY KEY (contact_id)
	);
	
CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
	category VARCHAR(35),
	PRIMARY KEY (category_id)
	);
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(35),
	PRIMARY KEY (subcategory_id)
	);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER,
	company_name VARCHAR(35),
	description VARCHAR(70),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(10),
	backers_count INTEGER,
	country VARCHAR(35),
	currency VARCHAR(10),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(10),
	subcategory_id VARCHAR(10),
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	);