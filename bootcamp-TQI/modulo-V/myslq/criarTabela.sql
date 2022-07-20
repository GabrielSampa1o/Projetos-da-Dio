/*Criar uma nova tabela*/

CREATE TABLE protudos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descrição VARCHAR(30) NOT NULL,
    unid VARCHAR(3) NOT NULL,
    qtd INT NOT NULL
)

/*inserir dados em uma tabela*/

INSERT INTO pessoas (nome, nascimento) VALUES ('Gabriel', '2002-06-24')
INSERT INTO pessoas (nome, nascimento) VALUES ('João', '1998-03-14')
INSERT INTO pessoas (nome, nascimento) VALUES ('Matheus', '2003-10-04')
INSERT INTO pessoas (nome, nascimento) VALUES ('Camila', '2000-01-21')



/*Visualizar um dado específico de uma tabela*/

SELECT * FROM pessoa
SELECT nome FROM pessoa
SELECT nascimento FROM pessoa


/*Atualizar dados de uma tabela*/

UPDATE pessoas SET  nome = 'Igor' WHERE id=3



/*deletar dados de uma tabela, é sempre bom visualizar o dado com SELECT antes de deletar*/

DELETE FROM pessoa WHERE id = 2;



/*ordenar os dados da tabela, é possível ordenar usando qualquer valor*/
/*ordem crescente*/

SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nascimento;

/*ordem decrecente*/

SELECT * FROM pessoa ORDER BY nome DESC;


/*Agrupa certos dados e retornar a quantidade de cada*/
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;



/*Deleta uma tabela*/

DROP TABLE pessoa;




/*Deleta um banco de dados*/

DROP DATABASE teste;





/*Juntar duas tabela igualando as colunas depois de relacionar uma coluna com a outra*/
SELECT * FROM videos JOIN autor ON videos.fk_autor = autor.id_autor;

/*Especificar quais tabelas irá nos mostrar*/
SELECT videos.titulo, autor.name FROM videos JOIN autor ON videos.fk_autor = autor.id_autor;

/*É possível juntas mais de duas tabelas, também é possível abreviar o nome das tabelas para facilitar*/

SELECT v.nome_video, v.autor_video, c.nome_canal FROM videos_canais AS vc JOIN videos AS v on vc.fk_video = v.id_video
JOIN canais as c on vc.fk_canal = c.id_canal


/*uni duas consultas*/
SELECT v.id_video, v.nome_video FROM videos AS v LEFT OUTER JOIN videos_canais as vc on v.id_video = vc.fk_video 
UNION 
SELECT c.id_canal, c.nome_canal FROM videos_canais as vc RIGHT OUTER JOIN canais AS c ON vc.fk_canal = c.id_canal;