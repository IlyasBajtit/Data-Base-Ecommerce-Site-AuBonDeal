CREATE TABLE users(
    user_uuid SERIAL PRIMARY KEY,
    user_pseudo VARCHAR (100),
    username VARCHAR(100) UNIQUE,
    user_password VARCHAR(50),
    created_at DATE NOT NULL
);