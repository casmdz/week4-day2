INSERT INTO movie(
    movie_title,
    rating,
    summary
) VALUES(
    'Glass Onion',
    'PG-13',
    'World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friends.'
);

select * from movie;

INSERT INTO movie(
    movie_title,
    summary,
    rating
) VALUES(
    'Puss in Boots: The Last Wish',
    'Puss in Boots discovers that his passion for adventure has taken its toll: he has burned through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.',
    'PG'
), (
    'The Menu',
    'A young couple travels to a remote island to eat at an exclusive restaurant where the chef has prepared a lavish menu, with some shocking surprises.',
    'R'
), (
    'Everything Everywhere All at Once',
    'An aging Chinese immigrant is swept up in an insane adventure, where she alone can save whats important to her by connecting with the lives she could have led in other universes.',
    'R'
);


INSERT INTO ticket(
    --tix id
    --tix date
    customer_id,
    movie_id --fk
) VALUES(
    --id 1
    --date time
    1,
    1
);
select * from ticket;

-- INSERT INTO ticket(
--     movie_title
-- ) VALUES(
--     (select movie_title from movie)
-- );


INSERT INTO customer(
    first_name,
    last_name,
    credit_card,
    ticket_id
) VALUES(
    'Cas',
    'Mendez',
    '1235678910111213',
    1
), (
    'Joe',
    'Shmoe',
    '1212121212121212',
    1
), (
    'Sponge-bob',
    'Squarepants',
    '34434434434434439',
    1
);

select * from customer;


INSERT INTO concessions(
    item_name,
    cost
) VALUES(
    'Popcorn',
    5.99
), (
    'Candy',
    2.89
), (
    'Slushee',
    9.99
);
select * from concessions;