SELECT 
	art.nome AS 'artista',
    alb.nome AS 'album',
    COUNT(seg.usuario_id) AS `seguidores`
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.usuarios_seguindo_artistas AS seg
ON art.artista_id = seg.artista_id
GROUP BY alb.nome
ORDER BY
	`seguidores` DESC, art.nome, alb.nome;