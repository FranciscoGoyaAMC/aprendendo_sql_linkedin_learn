-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT t.Name AS musica,
       a.Title AS album,
       ar.Name AS artista
FROM tracks AS t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
INNER JOIN artists ar ON a.ArtistId = ar.ArtistId
WHERE ar.Name LIKE '%Nação%'
  AND a.Title <> 'Da Lama Ao Caos';