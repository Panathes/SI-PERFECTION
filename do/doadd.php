<?php

require_once "../db.php";

if (!isset($_POST['title']) || !isset($_POST['subtitle']) || !isset($_POST['img']) || !isset($_POST['text']) || !isset($_POST['label']) ||  !isset($_POST['logo']) || !isset($_POST['tag']) || $_POST['title']==="" || $_POST['subtitle']==="" || $_POST['img']==="" || $_POST['text']==="" || $_POST['label']==="" || $_POST['logo']==="") {
    header('Location: ../admin.php?error_input');
    exit();
}


$requete = "INSERT INTO
`article`
(`title`, `subtitle`, `img`, `text`, `label`, `logo`, `tag`)
VALUES
(:title, :subtitle, :img, :text, :label, :logo, :tag)
;";

$stmt = $conn->prepare($requete);
$stmt->bindValue(':title', $_POST['title']);
$stmt->bindValue(':subtitle', $_POST['subtitle']);
$stmt->bindValue(':img', $_POST['img']);
$stmt->bindValue(':text', $_POST['text']);
$stmt->bindValue(':label', $_POST['label']);
$stmt->bindValue(':logo', $_POST['logo']);
$stmt->bindValue(':tag', $_POST['tag']);
$stmt->execute();

header('Location: ../admin.php');