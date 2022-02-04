SELECT 
	art.nome AS 'artista', 
    alb.nome AS 'album'
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = art.artista_id
WHERE art.nome = 'Walter Phoenix'
ORDER BY alb.nome;