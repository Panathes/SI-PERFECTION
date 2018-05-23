<?php
try {
    $conn = new PDO('mysql:dbname=UADV;host=localhost', 'root', 'oui');
} catch (PDOException $exception) {
    die($exception->getMessage());
}