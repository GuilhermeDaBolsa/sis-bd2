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

        <h2>Amizades</h2>
		<hr/>

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
					inner join leitor as follower on leitor_follower_id = follower.id
					inner join leitor as followed on leitor_followed_id = followed.id
				order by follower;
			';

			$resultado = mysqli_query($conexao, $sql);
			if (!$resultado)
				echo mysqli_error($conexao);

			$cabecalho =
				'<table style="width: 100%;">' .
				'    <tr style="text-align: left; height: 36px; vertical-align: baseline;">' .
				'        <th><span class="whiteMode pillText">' . $follower . '</span></th>' .
				'        <th><span class="whiteMode pillText">' . $followed . '</span></th>' .
				'    </tr>';

			echo $cabecalho;

			if (mysqli_num_rows($resultado) > 0) {

				while ($registro = mysqli_fetch_assoc($resultado)) {
					echo '<tr>';

					echo '<td style="padding-left: 8px;">' . $registro[$follower] . '</td>' .
						'<td style="padding-left: 8px;">' . $registro[$followed] . '</td>';
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