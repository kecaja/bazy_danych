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
 <th>Rezyser</th>
 <th>Typ</th>
 <th>Dlugosc (minuty)</th>
</tr>

<?php

 // Przechodzimy po wierszach wyniku.

  for($ri = 0; $ri < $numrows; $ri++) {
  $row = pg_fetch_array($result, $ri);
  echo "<tr>\n";
  echo " <td>" . $row["title"] . "</td>";
  echo " <td>" . $row["year"] . "</td>";
  echo " <td>" . $row["director"] . "</td>";
  echo " <td>" . $row["type"] . "</td>";
  echo " <td>" . $row["film_length"] . "</td>";
  echo ' <td> <a href="delete_film.php?id='.$row["title"].'">delete</a>';
  echo " </tr>";
  }
 pg_close($link);
?>
</table>
</body>
</html>
