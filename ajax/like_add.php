<?php
include_once __DIR__."../core/init.php";
if (isset($_POST['id'], $_SESSION['id'])) {
    $post_id = $_POST['id'];
    if (post_exists($pdo, $post_id)) {
        if (previously_liked($pdo, $post_id)) {
            echo (remove_post_like($pdo, $post_id)) ? "removed" : "";
        } else {
            add_post_like($pdo, $post_id);
            echo "success";
        }
    }
}