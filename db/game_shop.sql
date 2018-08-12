DROP TABLE products;
DROP TABLE manufacturers;

CREATE TABLE manufacturers
(
  id SERIAL PRIMARY KEY,
  manufacturer_name VARCHAR(255),
  website VARCHAR(255),
  contact_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(255),
  notes TEXT
);

CREATE TABLE products
(
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(255),
  descricption TEXT,
  stock INT,
  buying_cost NUMERIC,
  selling_cost NUMERIC,
  manufacturer_id INT REFERENCES manufacturers(id) ON DELETE CASCADE
);
