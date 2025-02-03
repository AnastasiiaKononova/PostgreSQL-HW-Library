CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL CHECK (first_name != ''),
    last_name VARCHAR(200) NOT NULL CHECK (last_name != ''),
    tel VARCHAR(13) NOT NULL CHECK (tel != ''),
    address TEXT NOT NULL CHECK (address != '')
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    author VARCHAR(300) NOT NULL CHECK (author != ''),
    name VARCHAR(300) NOT NULL CHECK (name != ''),
    year INT NOT NULL CHECK (year > 0),
    pages INT NOT NULL CHECK (pages > 0),
    user_id INT REFERENCES users(id) ON DELETE SET NULL 
);



