-- create campaign table
DROP TABLE IF EXISTS campaign;

-- Create new table
CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL UNIQUE,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(250) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(15) NOT NULL,
    PRIMARY KEY (cf_id)
);

-- View table columns and datatypes
SELECT * FROM campaign;

-- create contacts table
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
    contact_id INTEGER NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(250) NOT NULL,
    PRIMARY KEY (contact_id),
    FOREIGN KEY (contact_id) REFERENCES campaign (contact_id)
);
-- check contacts table
SELECT * FROM contacts;
