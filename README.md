# sis-bd2

Os padrões das tabelas são:

campos relacionados à própria tabela tem apenas o seu nome, por exemplo a tabela autor tem os campos id, nome e data_nascimento, ou seja, não possuiem o nome da tabela em seu próprio nome.

campos relacionados à outras tabelas estão escritos da seguinte forma: tabela_campo, com tabela sendo a tabela relacionada e campo sendo o campo da tabela relacionada, por exemplo, a tabela livro guarda a relação dos campos genero, autor e editora nos seguintes campos genero_id, autor_id e editora_id. Ou seja fazem referencia aos id de cada uma dessas tabelas.

chaves estrangeiras são escritas da seguinte forma tabela_pai_tabela_filha_fk
