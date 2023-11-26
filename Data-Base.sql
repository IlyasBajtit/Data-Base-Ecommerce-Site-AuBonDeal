CREATE TABLE users(
    user_uuid SERIAL PRIMARY KEY,
    user_pseudo VARCHAR (100),
    username VARCHAR(100) UNIQUE,
    user_password VARCHAR(50),
    created_at DATE NOT NULL
);

CREATE TABLE products (
    product_uuid SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_description TEXT,
    product_price DECIMAL (10,2) CHECK (product_price >= 0),
    product_quantity INT CHECK (product_quantity >= 0),
    created_at DATE NOT NULL,
    updated_at DATE,
    CONSTRAINT chk_dates CHECK (created_at < updated_at)
); 
