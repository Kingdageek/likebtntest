 <?php include_once "core/init.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/styles.css">
    <title>Like Button Test Project</title>
</head>
<body>
    <?php 
    $articles = get_articles($pdo);
    if (empty($articles)):
    ?>
    <p>There are no posts right now, bye :) </p>
    <?php 
    else:
        foreach($articles as $article):
    ?>
    <ul>
        <li>
            <p><?=$article['title'];?></p>
            <p>
                <a href="#!" onclick="like_add(<?=$article['id'];?>)" id="like_btn_<?=$article['id'];?>" class="likes">
                <?= (previously_liked($pdo, $article['id'])) ? "Liked" : "Like";?>
                </a> <span id="article_<?=$article['id'];?>_likes"><?=$article['likes'];?></span> like this</p>
        </li>
    </ul>
    <?php endforeach;?>
    <?php endif;?>
    <script src="js/jquery.min.js"></script>
    <script src="js/likes.js"></script>
</body>
</html>