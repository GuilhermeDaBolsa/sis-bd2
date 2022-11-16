# sis-bd2 (School Project)

(It is just a small DB MySql project)

Os padrões das tabelas são:

campos relacionados à própria tabela tem apenas o seu nome, por exemplo a tabela autor tem os campos id, nome e data_nascimento, ou seja, não possuiem o nome da tabela em seu próprio nome.

campos relacionados à outras tabelas estão escritos da seguinte forma: tabela_campo, com tabela sendo a tabela relacionada e campo sendo o campo da tabela relacionada, por exemplo, a tabela livro guarda a relação dos campos genero, autor e editora nos seguintes campos genero_id, autor_id e editora_id. Ou seja fazem referencia aos id de cada uma dessas tabelas.

chaves estrangeiras são escritas da seguinte forma tabela_pai_tabela_filha_fk


A arquitetura do banco pode ser visualizada na imagem abaixo (UMLdump.jpg na pasta scripts):

![image](https://user-images.githubusercontent.com/39105309/177023594-87e54a37-fc77-4d31-a8dc-475d99806c24.png)


# Stored Objects

O arquivo storedObject.sql (na pasta scripts) contém a criação de todas as Stored Objects requeridas para o trabalho, além disso, há também o novo DUMP do banco depois do exercício.


- VIEW: 

  A view criada se chama QTD_leituras_de_leitor e realiza a contagem de quantas leituras um leitor fez.
  
  
- FUNCTION:

  A function criada se chama QTD_amigos e, dado um id de leitor, ela contabiliza e retorna a quantidade de amigos do leitor.
  
> Note: A partir daqui as próximas Stored Objects fazem uso de uma tabela nova (leitor_pontuacao) que não existia antes deste trabalho, porém sua criação está incluida no arquivo storedObject.sql e também no novo DUMP do banco.

- PROCEDURE:

  A procedure criada se chama INCREMENTA_PONTUCAO e inicializa em 1 a pontuação de um leitor na tabela leitor_pontuacao caso nao exista um registro dele nesta tabela ou, caso exista, atualiza o campo pontuacao (da tabela leitor_pontuacao), incrementando em 1 o seu valor.
  

- TRIGGER:
  
  A trigger criada se chama ATUALIZA_PONTUACAO_LEITOR e, para cada nova inserção na tabela leitura, a trigger chama a procedure acima (INCREMENTA_PONTUCAO), que irá incrementar a pontuação do leitor para cada nova leitura que ele realizar.

- EVENT

  O event  criado se chama reseta_pontuacao e remove todos os dados da nova tabela leitor_pontuacao a cada mes, zerando todas as pontuações de todos os leitores.
