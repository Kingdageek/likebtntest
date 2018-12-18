<?php
function get_articles (PDO $pdo)
{
    //$articles = array();

    $sql = "SELECT `id`, `title`, `likes` FROM `posts`";
    $stmt = $pdo->query($sql);
    $articles = $stmt->fetchAll();
    return $articles;
}