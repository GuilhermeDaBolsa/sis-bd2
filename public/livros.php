<!DOCTYPE html>
<html>
<head>
</head>
	
<body>
    <div style="max-width: 800px; margin: auto;">
        <h1>Bibliófilo's</h1>

        <h2>Livros</h2>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$titulo = 'titulo';
			$autor = 'autor';
			$data_publicacao = 'data_publicacao';
			$editora = 'editora';
			$genero = 'genero';
			$classificacao = 'classificacao';

			$sql = '
				select
					titulo,
					autor.nome as autor,
					data_publicacao,
					editora.nome as editora,
					genero.nome as genero,
					classificacao_etaria as classificacao
				from livro
					inner join autor on livro.autor = autor.id
					inner join editora on livro.editora = editora.id
					inner join genero on livro.genero = genero.id
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left;">' .
				'        <th>' . $titulo . '</th>' .
				'        <th>' . $autor . '</th>' .
				'        <th>' . $data_publicacao . '</th>' .
				'        <th>' . $editora . '</th>' .
				'        <th>' . $genero . '</th>' .
				'        <th>' . $classificacao . '</th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td>' . $registro[$titulo] . '</td>' .
						'<td>' . $registro[$autor] . '</td>' .
						'<td>' . $registro[$data_publicacao] . '</td>' .
						'<td>' . $registro[$editora] . '</td>' .
						'<td>' . $registro[$genero] . '</td>' .
						'<td>' . $registro[$classificacao] . '</td>';
					echo '</tr>';
				}
				echo '</table>';
			} else {
				echo '';
			}
			FecharConexao($conexao);
        ?>
    </div>
</body>

</html>