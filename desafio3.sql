SELECT 
	u.usuario AS 'usuario', 
    COUNT(h.usuario_id) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(can.duracao/60),2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS can
ON can.cancao_id = h.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;