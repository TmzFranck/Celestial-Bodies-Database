CREATE TABLE galaxy(
galaxy_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
age NUMERIC NOT NULL,
has_life BOOLEAN NOT NULL,
visible_from_earth BOOLEAN,
description TEXT);


CREATE TABLE star(
star_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
galaxy_id INT REFERENCES galaxy(galaxy_id),
mass NUMERIC NOT NULL,
is_nova BOOLEAN NOT NULL);


CREATE TABLE planet(
planet_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
star_id INT REFERENCES star(star_id),
has_rings BOOLEAN NOT NULL,
Population INT);

CREATE TABLE moon(
moon_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
planet_id INT REFERENCES planet(planet_id),
is_colonized BOOLEAN,
surface_area INT);


CREATE TABLE resource(
resource_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
planet_id INT REFERENCES planet(planet_id),
amount INT,
is_mineable BOOLEAN);


INSERT INTO galaxy VALUES
(1, 'Milky Way', 13.21, TRUE, TRUE, 'The Milky Way is the galaxy that contains our Solar System.'),

(2, 'Andromeda', 13.21, TRUE, TRUE, 'The Andromeda Galaxy, also known as Messier 31'),

(3, 'Triangulum', 13.21, TRUE, TRUE, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years.'),

(4, 'Messier 87', 13.21, TRUE, TRUE, 'Messier 87 (also known as Virgo A or NGC 4486, generally abbreviated to M87)'),

(5, 'Messier 81', 13.21, TRUE, TRUE, 'Messier 81 (also known as NGC 3031 or Bode''s Galaxy).'),

(6, 'Messier 82', 13.21, TRUE, TRUE, 'Messier 82 (also known as NGC 3034, Cigar Galaxy or M82');


INSERT INTO star VALUES
(1, 'Sun', 1, 1.989 * 10^30, FALSE),

(2, 'Alpha Centauri', 2, 2.2 * 10^30, FALSE),

(3, 'Sirius', 3, 2.1 * 10^30, FALSE),

(4, 'Epsilon Eridani', 4, 1.7 * 10^30, FALSE),

(5, 'Procyon', 5, 1.5 * 10^30, FALSE),

(6, 'Tau Ceti', 6, 1.3 * 10^30, FALSE);


INSERT INTO planet VALUES
(1, 'Earth', 1, TRUE, 100),

(2, 'Mars', 2, TRUE, 102),

(3, 'Venus', 3, TRUE, 103),

(4, 'Mercury', 4, TRUE, 2003),

(5, 'Jupiter', 5, TRUE, 1112),

(6, 'Saturn', 6, TRUE, 1113),

(7, 'Uranus', 1, TRUE, 1114),

(8, 'Neptune', 2, TRUE, 1115),

(9, 'Pluto', 3, TRUE, 1116),

(10, 'Kepler-186f', 4, TRUE,1232),

(11, 'Kepler-452b', 5, TRUE,2032),

(12, 'Kepler-442b', 6, TRUE, 12323);


INSERT INTO moon VALUES
(1, 'Moon', 1, TRUE, 123123),

(2, 'Phobos', 2, TRUE, 123123),

(3, 'Deimos', 3, TRUE, 2345),

(4, 'Mercury Moon', 4, TRUE, 234234),

(5, 'Ganymede', 5, TRUE, 234234),

(6, 'Titan', 6, TRUE, 2345435),

(7, 'Titania', 7, TRUE, 234234),

(8, 'Triton', 8, TRUE, 234234),

(9, 'Charon', 9, TRUE, 234234),

(10, 'Kepler-186f Moon', 10, TRUE, 234234),

(11, 'Kepler-452b Moon', 11, TRUE, 234234),

(12, 'Kepler-442b Moon', 12, TRUE, 234234),

(13, 'Sun Moon', 1, TRUE, 234234),

(14, 'Alpha Centauri Moon', 2, TRUE, 234234),

(15, 'Sirius Moon', 3, TRUE, 324234),

(16, 'Epsilon Eridani Moon', 4, TRUE, 234234),

(17, 'Procyon Moon', 5, TRUE, 43434),

(18, 'Tau Ceti Moon', 6, TRUE, 234234),
 
(19, 'Earth Moon', 1, TRUE, 234234),

(20, 'Mars Moon', 2, TRUE, 234234);


INSERT INTO resource VALUES
(1, 'Water', 1, 345345, TRUE),

(2, 'Gold', 2, 345345, TRUE),

(3, 'Silver', 3, 345345, TRUE),

(4, 'Iron', 4, 146454, TRUE),

(5, 'Copper', 5, 345345, TRUE);