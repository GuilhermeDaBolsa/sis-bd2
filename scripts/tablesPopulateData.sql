INSERT INTO autor VALUES(0, 'Leo', STR_TO_DATE('10/05/2000', '%d/%m/%Y'));
INSERT INTO autor VALUES(0, 'Art', STR_TO_DATE('02/02/2001', '%d/%m/%Y'));
INSERT INTO autor VALUES(0, 'Gio', STR_TO_DATE('08/10/2000', '%d/%m/%Y'));

INSERT INTO editora VALUES(0, 'Annapurna', STR_TO_DATE('01/12/2016', '%d/%m/%Y'));

INSERT INTO genero VALUES(0, 'Terror');
INSERT INTO genero VALUES(0, 'Aventura');
INSERT INTO genero VALUES(0, 'Conto');
INSERT INTO genero VALUES(0, 'Filosofia');

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
    3,
    1,
    2
 );
 
 INSERT INTO livro VALUES(
	0,
	'Sobre a brevidade da vida',
	STR_TO_DATE('01/01/1001', '%d/%m/%Y'),
	14,
    2,
    1,
    4
 );