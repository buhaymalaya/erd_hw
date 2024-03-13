CREATE TABLE customer(

    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR,
    email VARCHAR,
    zipcode INTEGER,
    age INTEGER
);

CREATE TABLE movie(

    movie_id SERIAL PRIMARY KEY,
    name VARCHAR
    
);

ALTER TABLE movie
DROP name;

ALTER TABLE movie
ADD movie_name VARCHAR;


CREATE TABLE concession(

    concession_id SERIAL PRIMARY KEY,
    price NUMERIC(4,2),
    concession_name VARCHAR NOT NULL,
    concession_description VARCHAR
);



CREATE TABLE ticket(

    ticket_id SERIAL PRIMARY KEY,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    member_price NUMERIC(4,2),
    regular_price NUMERIC(4,2)
);

CREATE TABLE sale_info(

    sale_id SERIAL PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    total_amt NUMERIC (6,2),
    sale_date TIMESTAMP
);