<?php
$title = $_POST["title"];
$year = $_POST["year"];
$director = $_POST["director"];
$type = $_POST["type"];
$length = (int) $_POST["length"];
echo $title;
echo $year;
echo $director;
echo $type;
echo $length;

$link = pg_connect("host=lkdb dbname=mrbd user=jg398412 password=iks");
$result = pg_query_params($link, "INSERT INTO film VALUES ($1, $2, $3, $4, $5)", array($title, $year, $director, $type, $length));
$rows = pg_num_rows($result);
echo $rows;
?>
