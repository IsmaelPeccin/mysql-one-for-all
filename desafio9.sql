SELECT 
	COUNT(hist.usuario_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico AS hist
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = hist.usuario_id
WHERE u.usuario = 'Bill';