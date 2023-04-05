SELECT 
	COUNT(*) AS cancoes,
	(SELECT COUNT(*) FROM Artist) AS artistas,
  (SELECT COUNT(*) FROM Albums) AS albuns
FROM Songs;