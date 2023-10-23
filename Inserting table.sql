-- Add favorite film to film table
INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, 
          length, replacement_cost, rating, special_features)
VALUES ('The Magnificent Seven', 
    'Seven gunmen in the old west gradually come together to help a poor village against savage thieves.', 
    2016, 1, 14, 4.99, 132, 19.99, 'PG-13', '{Behind the Scenes}');

-- Add actors to actor table
INSERT INTO actor (first_name, last_name)
VALUES ('Denzel', 'Washington'), ('Chris', 'Pratt'), ('Ethan', 'Hawke');

-- Add actors to film_actor table
INSERT INTO film_actor (actor_id, film_id)
VALUES (1, 2), (2, 2), (3, 2)
ON CONFLICT DO NOTHING;

-- Add favorite film to store inventory
INSERT INTO inventory (film_id, store_id)
VALUES (2, 1), (2, 2);