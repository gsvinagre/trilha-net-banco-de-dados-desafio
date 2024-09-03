-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT * FROM Filmes ORDER BY Ano ASC

-- 3
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--4 
SELECT nome, ano, duracao
FROM filmes
WHERE Ano = '1997';

--5
SELECT nome, ano, duracao
FROM filmes
WHERE ano > 2000;

--6
SELECT nome, ano, duracao
FROM filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT ano, COUNT(*) AS quantidade_de_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_de_filmes DESC;

--8
SELECT * FROM Atores WHERE Genero = 'M';

--9
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

--10
SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero

--11
SELECT 
	F.Nome,
	G.Genero
FROM FILMES AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
	ON F.Id = EF.IdFilme
INNER JOIN Atores AS A
	ON A.Id = EF.IdAtor