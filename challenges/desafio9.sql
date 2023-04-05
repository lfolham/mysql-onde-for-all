SELECT 
	COUNT(*) AS musicas_no_historico
FROM 
	User u
    INNER JOIN History h ON u.id_User = h.id_User
WHERE 
	u.name = 'Barbara Liskov';