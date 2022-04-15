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
    autor_id               	BIGINT,
    editora_id             	BIGINT,
    genero_id              	BIGINT,
    
    CONSTRAINT livro_autor_fk FOREIGN KEY(autor_id) REFERENCES autor(id),
    CONSTRAINT livro_editora_fk FOREIGN KEY(editora_id) REFERENCES editora(id),
    CONSTRAINT livro_genero_fk FOREIGN KEY(genero_id) REFERENCES genero(id)
);


CREATE TABLE leitor(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome                	VARCHAR(100),
	data_nascimento 		DATE
);

CREATE TABLE leitor_possui_livro(
	leitor_id				BIGINT,
    livro_id				BIGINT,
    
    PRIMARY KEY(leitor_id, livro_id),
    CONSTRAINT leitor_possui_livro_leitor_fk FOREIGN KEY(leitor_id) REFERENCES leitor(id),
    CONSTRAINT leitor_possui_livro_livro_fk FOREIGN KEY(livro_id) REFERENCES livro(id)
);

CREATE TABLE leitura(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	leitor_id				BIGINT,
    livro_id				BIGINT,
    data_inicio 			DATE,
    data_fim	 			DATE,
    
    CONSTRAINT leitura_leitor_fk FOREIGN KEY(leitor_id) REFERENCES leitor(id),
    CONSTRAINT leitura_livro_fk FOREIGN KEY(livro_id) REFERENCES livro(id)
);

CREATE TABLE amizade(
	leitor_follower_id		BIGINT,
    leitor_followed_id		BIGINT,
    
    PRIMARY KEY(leitor_follower_id, leitor_followed_id),
    CONSTRAINT leitor_follower_fk FOREIGN KEY(leitor_follower_id) REFERENCES leitor(id),
    CONSTRAINT leitor_followed_fk FOREIGN KEY(leitor_followed_id) REFERENCES leitor(id)
);

CREATE TABLE biblioteca(
	id						BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome                	VARCHAR(255),
    leitor_id              	BIGINT,
    
    CONSTRAINT biblioteca_leitor_fk FOREIGN KEY(leitor_id) REFERENCES leitor(id)
);

CREATE TABLE livro_em_biblioteca(
	biblioteca_id			BIGINT,
    livro_id				BIGINT,
    
    PRIMARY KEY(biblioteca_id, livro_id),
    CONSTRAINT livro_em_biblioteca_biblioteca_fk FOREIGN KEY(biblioteca_id) REFERENCES biblioteca(id),
    CONSTRAINT livro_em_biblioteca_livro_fk FOREIGN KEY(livro_id) REFERENCES leitor(id)
);