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
	.buttomItem {
		font-weight: bold;
		width: fit-content;
		margin-bottom: 8px;
	}
</style>

</head>
	
<body class="darkMode">
    <div style="max-width: 800px; margin: auto;">
        <h1 class="pageTitle">Bibliófilo's</h1>

		<div>

			<?php
			$dir = substr(dirname($_SERVER['PHP_SELF']), strlen($_SERVER['DOCUMENT_ROOT']));
			$g = glob("*");
			usort($g, function ($a, $b) {
				if (is_dir($a) == is_dir($b))
					return strnatcasecmp($a, $b);
				else
					return is_dir($a) ? -1 : 1;
			});

			echo implode("", array_map(function ($a) {
				return '<div class="whiteMode pillText buttomItem"><a style="color: #202020; text-decoration: none; text-transform: capitalize;" href="' . $a . '">' .
							str_replace("_", " ", str_replace(".php", "", $a)) . 
						'</a></div>';
			}, $g));
			?>

		</div>
    </div>
</body>

</html>
