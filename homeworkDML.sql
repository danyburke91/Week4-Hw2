SELECT * FROM  customer;

INSERT INTO customer(
    customer_id,
    last_name
    isOver18
)
VALUES(
    1,
    'Burke',
    true
),
(
    2,
    'Moore',
    false
);

SELECT * FROM movies;

INSERT INTO movies(
    movie_id,
    movie_title
)
VALUES(
    1,
    'Titanic'
),
(
    2,
    'Top Gun'
);

SELECT * FROM tickets;

INSERT INTO tickets(
    ticket_id,
    price,
    isPaid,
    (movie_id)
)
VALUES(
    1,
    13.50,
    false,
    (1)
);

SELECT * FROM concessions;

INSERT INTO concessions(
    concession_id,
    price,
    product_type,
    customer_id
)
VALUES(
    1,
    5.99,
    'pop corn',
    1
);

SELECT * FROM customer_movie;

INSERT INTO customer_movie(
    customer_movie_id,
    (customer_id, movie_id)
)
VALUES(
    1,
    (1,1),(1,2)
);

