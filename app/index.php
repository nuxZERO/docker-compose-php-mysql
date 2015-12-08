<?php

$user = 'docker';
$pass = 'docker';
$ip_address_of_docker_vm = '';

try {
  $dbh = new PDO("mysql:host=$ip_address_of_docker_vm;dbname=docker", $user, $pass);
  print "Successfully connect to database<br>";
  $dbh = null;
} catch (PDOException $e) {
  print "Error!: " . $e->getMessage() . "<br>";
}

print "<br>";
print "Checkout <a href='info.php'>phpinfo()</a>";
