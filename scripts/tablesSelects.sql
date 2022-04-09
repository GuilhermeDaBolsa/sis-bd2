-- SELECT DOS LIVROS
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
	inner join genero on livro.genero = genero.id;
    
    
-- SELECT LEITORES
select
	nome,
    data_nascimento
from leitor;


-- SELECT AMIZADES
select
	follower.nome as follower,
    followed.nome as followed
from amizade
	inner join leitor as follower on id_leitor_follower = follower.id
    inner join leitor as followed on id_leitor_followed = followed.id
order by follower;



