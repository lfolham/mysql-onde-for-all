SELECT
  u.name AS pessoa_usuaria,
  COUNT(h.id_User) AS musicas_ouvidas,
  ROUND(SUM(s.duration / 60), 2) AS total_minutos
FROM
  User u
  INNER JOIN History h ON u.id_User = h.id_User
  INNER JOIN Songs s ON s.id_Songs = h.id_Songs
GROUP BY
  u.name
ORDER BY
  u.name;