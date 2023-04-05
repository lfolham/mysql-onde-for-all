SELECT
	a.artist_name AS artista,
    album,
    COUNT(f.id_Artist) AS pessoas_seguidoras
FROM Artist a
	INNER JOIN Albums al ON a.id_Artist = al.id_Artist
    INNER JOIN Following f ON f.id_Artist = a.id_Artist
GROUP BY
	a.artist_name,
    album
ORDER BY
	pessoas_seguidoras DESC,
    artista ASC,
    album ASC;
