<?php
include 'db-config.php';

$db = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES '" . DB_CHARACSET . "';"));
$stmt = $db->prepare('select * from hoge');
$stmt->execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
  echo $row[id] . ' : ' . $row[name] . '<br />';
}
