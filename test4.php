<?php

echo '!DOCTYPE html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<FORM METHOD="POST" ACTION="script.php">
		<p>Tytul<INPUT TYPE="text" NAME="title" VALUE="" SIZE=10 MAXLENGTH=30></p>
		<p>Rok<INPUT TYPE="text" NAME="year" VALUE="2022" SIZE=10 MAXLENGTH=4></p>
		<p>Rezyser<INPUT TYPE="text" NAME="director" VALUE="" SIZE=10 MAXLENGTH=30></p>
		<p>Typ<INPUT TYPE="text" NAME="type" VALUE="" SIZE=10 MAXLENGTH=30></p>
		<p>Dlugosc<INPUT TYPE="text" NAME="length" VALUE="" SIZE=10 MAXLENGTH=3></p>
		<INPUT TYPE="submit" VALUE="gotowe">
	</FORM>

</body>
</html>';

?>
