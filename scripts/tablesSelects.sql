select
	titulo,
    autor.nome as autor,
    data_publicacao,
    editora.nome as editora,
    genero.nome as genero,
    classificacao_etaria as classificacao
from livro
	inner join autor on livro.autor = autor.id
	inner join editora on livro.editora = editora.id
	inner join genero on livro.genero = genero.id