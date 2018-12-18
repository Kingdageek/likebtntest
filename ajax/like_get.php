<?php
include_once __DIR__."../core/init.php";
if (isset($_POST['id'], $_SESSION['id'])) {
    $post_id = $_POST['id'];
    if (post_exists($pdo, $post_id)) {
        echo post_likes($pdo, $post_id);
    }
}