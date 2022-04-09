CREATE TABLE autor(
	id				BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome 			VARCHAR(100),
	data_nascimento	DATE
);

CREATE TABLE editora(
	id				BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome 			VARCHAR(100),
	data_fundacao	DATE
);

CREATE TABLE genero(
	id				BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome 			VARCHAR(100)
);
                     	
CREATE TABLE livro(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	titulo                	VARCHAR(100),
	data_publicacao 		DATE,
    classificacao_etaria    INT,
    autor               	BIGINT,
    editora             	BIGINT,
    genero              	BIGINT,
    
    CONSTRAINT autor_fk FOREIGN KEY(autor) REFERENCES autor(id),
    CONSTRAINT editora_fk FOREIGN KEY(editora) REFERENCES editora(id),
    CONSTRAINT genero_fk FOREIGN KEY(genero) REFERENCES genero(id)
);


CREATE TABLE leitor(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome                	VARCHAR(100),
	data_nascimento 		DATE
);

CREATE TABLE leitura(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	id_leitor				BIGINT,
    id_livro				BIGINT,
    data_inicio 			DATE,
    data_fim	 			DATE,
    
    CONSTRAINT leitor_fk FOREIGN KEY(id_leitor) REFERENCES leitor(id),
    CONSTRAINT livro_fk FOREIGN KEY(id_livro) REFERENCES livro(id)
);

CREATE TABLE amizade(
	id_leitor_follower		BIGINT,
    id_leitor_followed		BIGINT,
    
    PRIMARY KEY(id_leitor_follower, id_leitor_followed),
    CONSTRAINT leitor_follower_fk FOREIGN KEY(id_leitor_follower) REFERENCES leitor(id),
    CONSTRAINT leitor_followed_fk FOREIGN KEY(id_leitor_followed) REFERENCES leitor(id)
);