SELECT s.Songs AS cancao,
	COUNT(h.id_Songs) AS reproducoes
FROM Songs s
	INNER JOIN History h ON h.id_Songs = s.id_Songs
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2