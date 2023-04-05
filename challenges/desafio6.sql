SELECT 
	MIN(p.value_plan) AS faturamento_minimo,
	MAX(p.value_plan) AS faturamento_maximo,
	FORMAT(AVG(p.value_plan), 2) AS faturamento_medio,
	SUM(p.value_plan) AS faturamento_total
FROM Plan p
	INNER JOIN User u ON u.id_Plan = p.id_Plan;