-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT *
FROM tracks t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
INNER JOIN artists ar ON a.ArtistId = ar.ArtistId

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH dados_musica AS (
    SELECT t.Name AS NomeMusica,
           a.Title AS Album,
           ar.Name AS Artista
    FROM tracks t
    INNER JOIN albums a ON t.AlbumId = a.AlbumId
    INNER JOIN artists ar ON a.ArtistId = ar.ArtistId
)

SELECT artista, COUNT(NomeMusica) AS TotalMusicas
FROM dados_musica
WHERE artista = 'Caetano Veloso'
