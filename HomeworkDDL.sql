CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50)
    isOver18 BOOLEAN
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(100)
);

-- added customer_id and movie_id keys in tickets since it's information that needs to be link to the ticket

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC,
    isPaid BOOLEAN,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)    
);

CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    price NUMERIC,
    product_type VARCHAR(100),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE customer_movie(
    customer_movie_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)    
);