SELECT 
	COUNT(c.cancao_id) AS 'cancoes',  
	COUNT(DISTINCT a.artista_id) AS 'artistas', 
	COUNT(DISTINCT a.album_id) AS 'albuns'
FROM  
	SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album as a
ON a.album_id = c.album_id;