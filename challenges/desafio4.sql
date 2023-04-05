SELECT u.name AS pessoa_usuaria,
	IF(MAX(YEAR(h.date_Reproduction)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM User u
	INNER JOIN History h ON h.id_User = u.id_User
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;