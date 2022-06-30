<html>
<head>
<title>Test</title>
</head>
<body bgcolor="white">

<?php
$link = pg_connect("host=lkdb dbname=mrbd user=jg398412 password=iks");
$result = pg_query($link, "select * from film");
$numrows = pg_numrows($result);
?>

<h2 align=center>Nasze filmy</h2>

<table border="1" align=center>
<tr>
 <th>Gatunek</th>
 <th>Rok</th>
 <th>Rezyser></th>
 <th>Typ</th>
 <th></th>
</tr>

<!--
<?php

 // Przechodzimy po wierszach wyniku.

  for($ri = 0; $ri < $numrows; $ri++) {
  echo "<tr>";
  $row = pg_fetch_array($result, $ri);
  echo " <td>" . $row["tytul"] . "</td>";
  echo " <td>" . $row["rok"] . "</td>";
  echo " <td>" . $row["rezyser"] . "</td>";
  echo " <td>" . $row["typ"] . "</td>";
  echo " <td>" . $row["dlugosc"] . "</td>
 </tr>
";
 pg_close($link);
?>
-->
</table>
</body>
</html>
