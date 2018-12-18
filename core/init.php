<?php
session_start();
$_SESSION['id'] = '16';

include_once "db/connect.php";
include_once "func/articles.php";
include_once "func/like.php";