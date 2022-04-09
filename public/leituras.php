<!DOCTYPE html>
<html>
<head>
</head>
	
<body>
    <div style="max-width: 800px; margin: auto;">
        <h1>Bibliófilo's</h1>

        <h2>Leituras</h2>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$leitor = 'leitor';
			$livro = 'livro';
			$inicio = 'inicio';
			$fim = 'fim';

			$sql = '
				select
					leitor.nome as leitor,
					livro.titulo as livro,
					leitura.data_inicio as inicio,
					leitura.data_fim as fim
				from leitura
					inner join leitor on leitura.id_leitor = leitor.id
					inner join livro on leitura.id_livro = livro.id
				order by leitor.id
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left;">' .
				'        <th>' . $leitor . '</th>' .
				'        <th>' . $livro . '</th>' .
				'        <th>' . $inicio . '</th>' .
				'        <th>' . $fim . '</th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td>' . $registro[$leitor] . '</td>' .
						'<td>' . $registro[$livro] . '</td>' .
						'<td>' . $registro[$inicio] . '</td>' .
						'<td>' . $registro[$fim] . '</td>';
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