
INSERT INTO artist (artist_id, artist_name, country, debut_year) VALUES
(1, 'The Weeknd', 'Canada', 2010),
(2, 'SZA', 'USA', 2012),
(3, 'Drake', 'Canada', 2006),
(4, 'Brent Faiyaz', 'USA', 2013),
(5, 'PARTYNEXTDOOR', 'Canada', 2013);


INSERT INTO album (album_id, album_name, release_date, artist_id) VALUES
(1, 'After Hours', '2020-03-20', 1),
(2, 'Starboy', '2016-11-25', 1),
(3, 'SOS', '2022-12-09', 2),
(4, 'Ctrl', '2017-06-09', 2),
(5, 'Scorpion', '2018-06-29', 3),
(6, 'Views', '2016-04-29', 3),
(7, 'Wasteland', '2022-07-08', 4),
(8, 'Sonder Son', '2017-11-03', 4),
(9, 'PARTYNEXTDOOR 2', '2014-07-29', 5),
(10, 'PARTYNEXTDOOR 3', '2016-08-08', 5);


INSERT INTO song (song_id, song_name, duration_seconds, album_id) VALUES
-- After Hours
(1, 'Blinding Lights', 200, 1),
(2, 'Save Your Tears', 215, 1),
(3, 'In Your Eyes', 237, 1),
-- Starboy
(4, 'Starboy', 230, 2),
(5, 'I Feel It Coming', 269, 2),
(6, 'Party Monster', 270, 2),
-- SOS
(7, 'Kill Bill', 153, 3),
(8, 'Snooze', 201, 3),
(9, 'Good Days', 279, 3),
-- Ctrl
(10, 'Love Galore', 237, 4),
(11, 'The Weekend', 240, 4),
(12, 'Broken Clocks', 247, 4),
-- Scorpion
(13, 'God''s Plan', 198, 5),
(14, 'In My Feelings', 217, 5),
(15, 'Nice For What', 208, 5),
-- Views
(16, 'Hotline Bling', 267, 6),
(17, 'One Dance', 173, 6),
(18, 'Controlla', 263, 6),
-- Wasteland
(19, 'Wasting Time', 301, 7),
(20, 'Dead Man Walking', 200, 7),
(21, 'Gravity', 190, 7),
-- Sonder Son
(22, 'Poison', 240, 8),
(23, 'Gang Over Luv', 210, 8),
(24, 'Home', 230, 8),
-- PARTYNEXTDOOR 2
(25, 'Believe Me', 263, 9),
(26, 'Recognize', 230, 9),
(27, 'Torture', 220, 9),
-- PARTYNEXTDOOR 3
(28, 'Come and See Me', 250, 10),
(29, 'Loyal', 240, 10),
(30, 'High Hopes', 230, 10);


INSERT INTO genre (genre_id, genre_name, description) VALUES
(1, 'R&B', 'Rhythm and blues, vocal and groove-driven'),
(2, 'Pop', 'Mainstream, hook-driven, broad crossover appeal'),
(3, 'Hip Hop', 'Rap-driven, beat and lyricism focused'),
(4, 'Neo-Soul', 'Soul music with modern R&B and jazz influences'),
(5, 'Alternative R&B', 'Experimental, moody, production-forward R&B');


INSERT INTO song_genre (song_id, genre_id) VALUES
(1, 2), (1, 1),     -- Blinding Lights: Pop, R&B
(2, 1), (2, 2),     -- Save Your Tears: R&B, Pop
(3, 1),             -- In Your Eyes: R&B
(4, 1), (4, 2),     -- Starboy: R&B, Pop
(5, 2),             -- I Feel It Coming: Pop
(6, 1),             -- Party Monster: R&B
(7, 1), (7, 4),     -- Kill Bill: R&B, Neo-Soul
(8, 1),             -- Snooze: R&B
(9, 1), (9, 4),     -- Good Days: R&B, Neo-Soul
(10, 1), (10, 4),   -- Love Galore: R&B, Neo-Soul
(11, 4),            -- The Weekend: Neo-Soul
(12, 1),            -- Broken Clocks: R&B
(13, 3),            -- God's Plan: Hip Hop
(14, 3), (14, 1),   -- In My Feelings: Hip Hop, R&B
(15, 3),            -- Nice For What: Hip Hop
(16, 3), (16, 1),   -- Hotline Bling: Hip Hop, R&B
(17, 3), (17, 1),   -- One Dance: Hip Hop, R&B
(18, 3),            -- Controlla: Hip Hop
(19, 1), (19, 5),   -- Wasting Time: R&B, Alternative R&B
(20, 5),            -- Dead Man Walking: Alternative R&B
(21, 1), (21, 5),   -- Gravity: R&B, Alternative R&B
(22, 1),            -- Poison: R&B
(23, 5),            -- Gang Over Luv: Alternative R&B
(24, 1),            -- Home: R&B
(25, 1),            -- Believe Me: R&B
(26, 1), (26, 3),   -- Recognize: R&B, Hip Hop
(27, 5),            -- Torture: Alternative R&B
(28, 1), (28, 3),   -- Come and See Me: R&B, Hip Hop
(29, 1),            -- Loyal: R&B
(30, 5);            -- High Hopes: Alternative R&B