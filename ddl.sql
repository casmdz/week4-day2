CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(100), 
    rating VARCHAR(25),
    summary VARCHAR,
);


CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    ticket_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    -- customer_id INTEGER NOT NULL,
    -- FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);


CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR (75),
    last_name VARCHAR (100),
    credit_card NUMERIC(19,0) NOT NULL UNIQUE,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);


CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    cost NUMERIC(10,2)
);

--i kept getting errors telling me "there is no unique constraint matching given keys for referenced table "movie", so i had to figure out What that meant, still not too sure, 


ALTER TABLE ticket
ADD customer_id INTEGER NOT NULL;

alter table ticket 
DROP customer_id;