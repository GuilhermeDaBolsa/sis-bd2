<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Updock&display=swap" rel="stylesheet">

<style>
	.darkMode {
		background-color: #202020;
        color: #dddddd;
	}
	.whiteMode {
		background-color: #dddddd;
        color: #202020;
	}
	.pageTitle {
		text-align: center;
		font-family: 'Updock', cursive;
		font-size: 4rem;
		font-weight: bold;
	}
	.pillText {
		border-radius: 24px;
		padding: 6px 12px;
	}
</style>

</head>
	
<body class="darkMode">
    <div style="max-width: 800px; margin: auto;">
        <h1 class="pageTitle">Bibliófilo's</h1>

        <h2>Livros</h2>
		<hr/>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$titulo = 'titulo';
			$autor = 'autor';
			$publicacao = 'publicacao';
			$editora = 'editora';
			$genero = 'genero';
			$classificacao = 'classificacao';

			$sql = '
				select
					titulo,
					autor.nome as autor,
					data_publicacao as publicacao,
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
				'    <tr style="text-align: left; height: 36px; vertical-align: baseline;">' .
				'        <th><span class="whiteMode pillText">' . $titulo . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $autor . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $publicacao . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $editora . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $genero . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $classificacao . '</span></th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td style="padding-left: 8px;">' . $registro[$titulo] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$autor] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$publicacao] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$editora] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$genero] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$classificacao] . '</td>';
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