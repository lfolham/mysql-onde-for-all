SELECT
	ar.artist_name AS artista,
    album
FROM Artist ar
	INNER JOIN Albums a ON ar.id_Artist = a.id_Artist
WHERE
	ar.artist_name = "Elis Regina"
ORDER BY
  album ASC;
