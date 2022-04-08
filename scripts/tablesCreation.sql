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