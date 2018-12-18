<?php
function post_exists($pdo,$id) {
    $id = (int) $id;
    $sql = "SELECT `id` FROM `posts` WHERE `id` = $id";
    $stmt = $pdo->query($sql);
    $result = $stmt->fetch();
    return ($result) ? true : false;
}

function post_likes ($pdo, $id) {
    $id = (int) $id;
    $sql = "SELECT `likes` FROM `posts` WHERE `id`=$id";
    $stmt = $pdo->query($sql);
    return $stmt->fetchColumn();
}

function remove_post_like ($pdo, $id) {
    $id = (int) $id;
    $query = "UPDATE `posts` SET `likes`=`likes`-1 WHERE `id`=$id";
    $update_bool = $pdo->exec($query);
    $sql = "DELETE FROM `likes` WHERE `post_id`=$id AND `user_id`= {$_SESSION['id']}";
    $del_bool = $pdo->exec($sql);
    return ($del_bool && $update_bool);
}

function previously_liked ($pdo, $id) {
    $id = (int) $id;
    $sql = "SELECT `like_id` FROM `likes` WHERE `post_id`=$id AND `user_id`={$_SESSION['id']}";
    return $pdo->query($sql)->fetchColumn();
}

function add_post_like ($pdo, $id) {
    $id = (int) $id;
    $sql = "UPDATE `posts` SET `likes` = `likes`+1 WHERE `id`=$id";
    $update_bool= $pdo->exec($sql);
    $query = "INSERT INTO `likes` (`post_id`,`user_id`)
            VALUES ($id, {$_SESSION['id']})";
    $insert_bool= $pdo->exec($query);
    return ($update_bool && $insert_bool);
}