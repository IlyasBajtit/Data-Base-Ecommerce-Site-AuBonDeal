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


CREATE TABLE orders(
    order_number SERIAL PRIMARY KEY,
    order_total_cost_ht DECIMAL (10,2) CHECK (order_total_cost_ht >= 0),
    order_total_quantity INT CHECK (order_total_quantity >= 0),
    created_at DATE NOT NULL,
    deliver_at DATE,
    user_uuid SERIAL REFERENCES users (user_uuid)
);