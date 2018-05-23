<?php

include "../db.php";



$sql = "SELECT
    `id`,
    `title`
      FROM
    `article`
    ;";

$stmt = $conn->prepare($sql);
$stmt->execute();

?>
<h2><a href="../main.php">home</a></h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>article</th>
        <th>modifier</th>
        <th>supprimer</th>
    </tr>
    <?php
    while (false !== $row = $stmt->fetch(PDO::FETCH_ASSOC)) :?>

        <tr>
            <td><a href="article.php?id=<?=$row["id"]?>"><?=$row["id"]?></a></td>
            <td><?=$row["title"]?></td>
            <td><a href="edit.php?id=<?=$row["id"]?>">edit</a></td>
            <td><a href="delete.php?id=<?=$row["id"]?>">delete</a></td>
        </tr>

    <?php endwhile ?>
</table>

<h2>Add</h2>

<form action="do/doadd.php" enctype="multipart/form-data" method="post">
    <input type="text" name="title" placeholder="title">
    </br>
    <input type="text" name="subtitle" placeholder="subtitle">
    </br>
    <input type="text" name="img" placeholder="image's link">
    </br>
    <textarea name="text" cols="30" rows="10" placeholder="text"></textarea>
    </br>
    <input type="text" name="label" placeholder="label">
    </br>
    <input type="text" name="logo" placeholder="logo's link">
    </br>
    <select name="tag">
        <option value="hôtel">Hôtel</option>
        <option value="mer">Mer</option>
        <option value="montagne">Montagne</option>
        <option value="nourriture">Nourriture</option>
        <option value="avion">Avion</option>
    </select>
    </br>
    <input type="submit">
</form>
