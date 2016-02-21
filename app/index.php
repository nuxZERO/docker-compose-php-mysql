<?php

$user = 'docker';
$pass = 'docker';

try {
    // DB hostname should be the same in docker-compose.yml
    $dbh = new PDO("mysql:host=db;port=3306;dbname=docker", $user, $pass);
    print "Successfully connect to database<br>";
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br>";
}

print "<br>";
print "Checkout <a href='info.php'>phpinfo()</a>";
