DROP TABLE products
DROP TABLE manufacturers

CREATE TABLE manufacturers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  website VARCHAR(255),
  contact_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(255),
  notes TEXT
)
