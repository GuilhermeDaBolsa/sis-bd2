-- AUTORES
select
	nome,
    data_nascimento as nascimento
from autor;



-- EDITORAS
select
	nome,
    data_fundacao as fundacao
from editora;



-- GENEROS
select
	nome
from genero;



-- LIVROS
select
	titulo,
    autor.nome as autor,
    data_publicacao as publicacao,
    editora.nome as editora,
    genero.nome as genero,
    classificacao_etaria as classificacao
from livro
	inner join autor on livro.autor_id = autor.id
	inner join editora on livro.editora_id = editora.id
	inner join genero on livro.genero_id = genero.id;
    
    
    
-- LEITORES
select
	nome,
    data_nascimento as nascimento
from leitor;


-- LEITOR POSSUI LIVRO
select
	leitor.nome as leitor,
    livro.titulo as livro
from leitor_possui_livro
	inner join leitor on leitor_possui_livro.leitor_id = leitor.id
    inner join livro on leitor_possui_livro.livro_id = livro.id
order by leitor.id;


-- AMIZADES
select
	follower.nome as follower,
    followed.nome as followed
from amizade
	inner join leitor as follower on leitor_follower_id = follower.id
    inner join leitor as followed on leitor_followed_id = followed.id
order by follower;


-- LEITURAS
select
	leitor.nome as leitor,
    livro.titulo as livro,
    leitura.data_inicio as inicio,
    leitura.data_fim as fim
from leitura
	inner join leitor on leitura.leitor_id = leitor.id
    inner join livro on leitura.livro_id = livro.id
order by leitor.id;


-- BIBLIOTECAS
select
	leitor.nome as leitor,
    biblioteca.nome as biblioteca
from biblioteca
	inner join leitor on biblioteca.leitor_id = leitor.id
order by leitor.id;



-- LIVROS NAS BIBLIOTECAS
select
	livro.titulo as livro,
    biblioteca.nome as biblioteca,
	leitor.nome as leitor
from livro_em_biblioteca
	inner join biblioteca on livro_em_biblioteca.biblioteca_id = biblioteca.id
	inner join livro on livro_em_biblioteca.livro_id = livro.id
    inner join leitor on biblioteca.leitor_id = leitor.id
order by biblioteca.id;





