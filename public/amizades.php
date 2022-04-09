<!DOCTYPE html>
<html>
<head>
</head>
	
<body>
    <div style="max-width: 800px; margin: auto;">
        <h1>Bibliófilo's</h1>

        <h2>Amizades</h2>

        <?php
			require 'mysql_server.php';

			$conexao = RetornaConexao();

			$follower = 'follower';
			$followed = 'followed';

			$sql = '
				select
					follower.nome as follower,
					followed.nome as followed
				from amizade
					inner join leitor as follower on id_leitor_follower = follower.id
					inner join leitor as followed on id_leitor_followed = followed.id
				order by follower
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left;">' .
				'        <th>' . $follower . '</th>' .
				'        <th>' . $followed . '</th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td>' . $registro[$follower] . '</td>' .
						'<td>' . $registro[$followed] . '</td>';
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