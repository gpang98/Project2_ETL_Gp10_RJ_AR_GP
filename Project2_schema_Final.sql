-- Codes to create the Schema for the crowdfunding_db
-- category Table
CREATE TABLE category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR
);


-- subcategory Table
CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR
);


-- contact Table
CREATE TABLE contact (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);


-- campaign Table
CREATE TABLE campaign (
  cf_id INTEGER PRIMARY KEY,
  contact_id INT NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
  company_name VARCHAR,
  description VARCHAR,
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR,
  backers_count INT,
  country VARCHAR,
  currency VARCHAR,
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  subcategory_id VARCHAR NOT NULL,
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


