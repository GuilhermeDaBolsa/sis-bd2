<!DOCTYPE html>
<html>
<head>
</head>
	
<body>
    <div style="max-width: 800px; margin: auto;">
        <h1>Bibliófilo's</h1>

        <h2>Leitores</h2>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$nome = 'nome';
			$data_nascimento = 'data_nascimento';

			$sql = '
				select
					nome,
					data_nascimento
				from leitor
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left;">' .
				'        <th>' . $nome . '</th>' .
				'        <th>' . $data_nascimento . '</th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td>' . $registro[$nome] . '</td>' .
						'<td>' . $registro[$data_nascimento] . '</td>';
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