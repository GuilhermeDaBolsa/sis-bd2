/* VIEW */
CREATE VIEW QTD_leituras_de_leitor AS
select
	leitor.nome as leitor,
    count(*) as leituras
from leitura
	inner join leitor on leitura.leitor_id = leitor.id
group by leitor.id
order by leituras;

SELECT * FROM QTD_leituras_de_leitor;




/* FUNCTION */
DELIMITER /
CREATE FUNCTION QTD_amigos( leitor_id INT )
RETURNS INT
DETERMINISTIC
BEGIN
	SET @soma_amigos := (
		select
			count(followed.nome) as followed
		from amizade
			inner join leitor as follower on leitor_follower_id = follower.id
			inner join leitor as followed on leitor_followed_id = followed.id
		where
			follower.id = 1
    );

   RETURN @soma_amigos;
END/
DELIMITER ;

SELECT QTD_amigos( 1 );




CREATE TABLE leitor_pontuacao(
	leitor_id	BIGINT PRIMARY KEY,
	pontuacao 	INT,
    
    CONSTRAINT leitor_leitor_pontuacao_fk FOREIGN KEY(leitor_id) REFERENCES leitor(id)
);


/* PROCEDURE */
DELIMITER //
CREATE PROCEDURE INCREMENTA_PONTUCAO( IN leitor_Id INT )
BEGIN
	IF (NOT EXISTS (SELECT leitor_id from leitor_pontuacao where leitor_pontuacao.leitor_id = leitor_Id)) THEN
		INSERT INTO leitor_pontuacao VALUES (leitor_Id, 1); 
	ELSE
		UPDATE leitor_pontuacao SET pontuacao = pontuacao + 1 where leitor_pontuacao.leitor_id = leitor_Id; 
	END IF;
END//


/* TRIGGER */
CREATE TRIGGER ATUALIZA_PONTUACAO_LEITOR
AFTER INSERT ON leitura FOR EACH ROW
BEGIN
   CALL INCREMENTA_PONTUCAO(NEW.leitor_id);
END//


/* EVENT */
CREATE EVENT reseta_pontuacao
ON SCHEDULE EVERY '1' MONTH
STARTS '2022-07-03 00:00:00'
DO 
BEGIN
	TRUNCATE TABLE leitor_pontuacao;
END//
    
DELIMITER ;

