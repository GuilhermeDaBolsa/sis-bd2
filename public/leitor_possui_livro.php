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

        <h2>Leitor possui livro</h2>
		<hr/>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$leitor = 'leitor';
			$livro = 'livro';

			$sql = '
				select
					leitor.nome as leitor,
					livro.titulo as livro
				from leitor_possui_livro
					inner join leitor on leitor_possui_livro.leitor_id = leitor.id
					inner join livro on leitor_possui_livro.livro_id = livro.id
				order by leitor.id;
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left; height: 36px; vertical-align: baseline;">' .
				'        <th><span class="whiteMode pillText">' . $leitor . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $livro . '</span></th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td style="padding-left: 8px;">' . $registro[$leitor] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$livro] . '</td>' ;
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