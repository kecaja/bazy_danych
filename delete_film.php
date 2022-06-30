<?php
$title = $_GET["id"];

$link = pg_connect("host=lkdb dbname=mrbd user=jg398412 password=iks");
$result = pg_query_params($link, "DELETE FROM film WHERE title = $1;", array($title));
$rows = pg_num_rows($result);

echo "Usunieto film: ".$title;
echo "<br>";
echo '<a href="all_films.php">Powrot<a>';
?>
