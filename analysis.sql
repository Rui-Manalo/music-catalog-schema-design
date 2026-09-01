
-- Song count and total catalog duration per artist
SELECT
    ar.artist_name,
    COUNT(s.song_id) AS total_songs,
    SUM(s.duration_seconds) AS total_duration_seconds,
    ROUND(SUM(s.duration_seconds) / 60.0, 2) AS total_duration_minutes
FROM artist ar
JOIN album al ON ar.artist_id = al.artist_id
JOIN song s ON al.album_id = s.album_id
GROUP BY ar.artist_name
ORDER BY total_songs DESC;



--  Average song duration per album
SELECT
    al.album_name,
    ar.artist_name,
    ROUND(AVG(s.duration_seconds), 1) AS avg_song_duration_seconds
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
JOIN song s ON al.album_id = s.album_id
GROUP BY al.album_name, ar.artist_name
ORDER BY avg_song_duration_seconds DESC;


-- Longest song for each artist
SELECT
    artist_name,
    song_name,
    duration_seconds
FROM (
    SELECT
        ar.artist_name,
        s.song_name,
        s.duration_seconds,
        ROW_NUMBER() OVER (
            PARTITION BY ar.artist_id
            ORDER BY s.duration_seconds DESC
        ) AS rank_in_artist
    FROM artist ar
    JOIN album al ON ar.artist_id = al.artist_id
    JOIN song s ON al.album_id = s.album_id
) ranked
WHERE rank_in_artist = 1
ORDER BY duration_seconds DESC;


-- Song count per genre
SELECT
    g.genre_name,
    COUNT(sg.song_id) AS total_songs
FROM genre g
LEFT JOIN song_genre sg ON g.genre_id = sg.genre_id
GROUP BY g.genre_name
ORDER BY total_songs DESC;




