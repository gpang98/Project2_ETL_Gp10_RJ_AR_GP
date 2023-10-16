-- Codes to create the Schema for the crowdfunding_db
--  The creation of the tables must followed this sequence (category, subcategory, contact and finally campaign).  The 1st
--      three tables can be created in any order since they are independent with their respective Primary Key but campaign
--      table has to be created last since it uses the primary keys from other tables as Foreign Keys.
--  The same sequence is also used to do data loading.  The 1st three can be in any order but campaign table is the last
--      to be loaded using the Data Import csv option.


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


