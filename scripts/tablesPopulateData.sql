INSERT INTO autor VALUES(0, 'Stephen King', STR_TO_DATE('21/09/1947', '%d/%m/%Y'));
INSERT INTO autor VALUES(0, 'Pendleton Ward', STR_TO_DATE('23/09/1982', '%d/%m/%Y'));
INSERT INTO autor VALUES(0, 'Sêneca', STR_TO_DATE('01/01/1970', '%d/%m/%Y'));


INSERT INTO editora VALUES(0, 'Annapurna', STR_TO_DATE('01/12/2016', '%d/%m/%Y'));
INSERT INTO editora VALUES(0, 'Square Enix', STR_TO_DATE('01/04/2003', '%d/%m/%Y'));


INSERT INTO genero VALUES(0, 'Terror');
INSERT INTO genero VALUES(0, 'Aventura');
INSERT INTO genero VALUES(0, 'Drama');
INSERT INTO genero VALUES(0, 'Romance');
INSERT INTO genero VALUES(0, 'Conto');
INSERT INTO genero VALUES(0, 'Ciências');


INSERT INTO livro VALUES(
	0,
	'Campo do medo',
	STR_TO_DATE('20/09/2019', '%d/%m/%Y'),
	18,
    1,
    1,
    1
 );
 
 INSERT INTO livro VALUES(
	0,
	'Hora de aventura',
	STR_TO_DATE('05/04/2010', '%d/%m/%Y'),
	10,
    2,
    1,
    2
 );
 
 INSERT INTO livro VALUES(
	0,
	'Sobre a brevidade da vida',
	STR_TO_DATE('01/01/1001', '%d/%m/%Y'),
	14,
    3,
    1,
    4
 );

 
INSERT INTO leitor VALUES(0, 'fvck leoz', STR_TO_DATE('10/05/2000', '%d/%m/%Y'));
INSERT INTO leitor VALUES(0, 'linnn_', STR_TO_DATE('02/02/2001', '%d/%m/%Y'));
INSERT INTO leitor VALUES(0, 'Ferogui', STR_TO_DATE('08/10/2000', '%d/%m/%Y'));
INSERT INTO leitor VALUES(0, 'Mike', STR_TO_DATE('28/12/2000', '%d/%m/%Y'));
INSERT INTO leitor VALUES(0, 'Pekazera', STR_TO_DATE('28/06/2000', '%d/%m/%Y'));
INSERT INTO leitor VALUES(0, 'Chaosroline', STR_TO_DATE('01/10/2000', '%d/%m/%Y'));


INSERT INTO leitor_possui_livro VALUES(1, 1);
INSERT INTO leitor_possui_livro VALUES(6, 1);
INSERT INTO leitor_possui_livro VALUES(3, 2);
INSERT INTO leitor_possui_livro VALUES(4, 2);
INSERT INTO leitor_possui_livro VALUES(5, 2);
INSERT INTO leitor_possui_livro VALUES(6, 2);
INSERT INTO leitor_possui_livro VALUES(2, 3);
INSERT INTO leitor_possui_livro VALUES(4, 3);


INSERT INTO leitura VALUES(0, 1, 2, STR_TO_DATE('06/12/2006', '%d/%m/%Y'), STR_TO_DATE('04/01/2007', '%d/%m/%Y'));
INSERT INTO leitura VALUES(0, 2, 3, STR_TO_DATE('06/12/2006', '%d/%m/%Y'), STR_TO_DATE('27/12/2006', '%d/%m/%Y'));
INSERT INTO leitura VALUES(0, 3, 1, STR_TO_DATE('06/12/2006', '%d/%m/%Y'), STR_TO_DATE('02/01/2007', '%d/%m/%Y'));


INSERT INTO amizade VALUES(1, 2);
INSERT INTO amizade VALUES(1, 3);
INSERT INTO amizade VALUES(1, 4);
INSERT INTO amizade VALUES(1, 5);
INSERT INTO amizade VALUES(1, 6);
INSERT INTO amizade VALUES(2, 1);
INSERT INTO amizade VALUES(2, 3);
INSERT INTO amizade VALUES(2, 4);
INSERT INTO amizade VALUES(2, 5);
INSERT INTO amizade VALUES(2, 6);
INSERT INTO amizade VALUES(3, 1);
INSERT INTO amizade VALUES(3, 2);
INSERT INTO amizade VALUES(3, 4);
INSERT INTO amizade VALUES(3, 5);
INSERT INTO amizade VALUES(3, 6);
INSERT INTO amizade VALUES(4, 1);
INSERT INTO amizade VALUES(4, 2);
INSERT INTO amizade VALUES(4, 3);
INSERT INTO amizade VALUES(4, 5);
INSERT INTO amizade VALUES(4, 6);
INSERT INTO amizade VALUES(5, 1);
INSERT INTO amizade VALUES(5, 2);
INSERT INTO amizade VALUES(5, 3);
INSERT INTO amizade VALUES(5, 4);
INSERT INTO amizade VALUES(5, 6);
INSERT INTO amizade VALUES(6, 1);
INSERT INTO amizade VALUES(6, 2);
INSERT INTO amizade VALUES(6, 3);
INSERT INTO amizade VALUES(6, 4);
INSERT INTO amizade VALUES(6, 5);
 
 
INSERT INTO biblioteca VALUES(0, 'xa', 1);
INSERT INTO biblioteca VALUES(0, 'medoteca', 1);
INSERT INTO biblioteca VALUES(0, 'bibliotur', 2);
INSERT INTO biblioteca VALUES(0, 'IA', 2);
INSERT INTO biblioteca VALUES(0, 'bloca', 3);
INSERT INTO biblioteca VALUES(0, 'inhamee', 4);
INSERT INTO biblioteca VALUES(0, 'e-manga', 5);
INSERT INTO biblioteca VALUES(0, 'costela', 6);


INSERT INTO livro_em_biblioteca VALUES(2, 1);
INSERT INTO livro_em_biblioteca VALUES(5, 2);
INSERT INTO livro_em_biblioteca VALUES(3, 3);

 
 
 
 
 