SELECT 
	c.cancao AS 'nome',
    COUNT(h.cancao_id) AS 'reproducoes'
FROM  SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON p.plano_id = u.plano_id
WHERE p.tipo = 'gratuito' OR p.tipo = 'pessoal'
GROUP BY h.cancao_id
ORDER BY nome;