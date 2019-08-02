<?php 
    ob_start();
    session_start();
    include "controller/database.php";
    include "controller/news.php";
    include "controller/user.php";
    include "controller/comment.php";

    $news = new \controller\News;
    $user = new \controller\User;
    $comment = new \controller\Comment;

?>


<!doctype html>
<html lang="en">
  <head>
    <?php include "component/head.php"; ?>
  </head>
  <body>
    <?php include "component/navigation.php"; ?>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php 
                  if(isset($_GET["detail"])){
                    include "page/detail.php";
                    // COMMENT
                    if($_POST) $comment->saveComment($_POST);
                  } else if(isset($_GET["login"])){
                    include "page/login.php";
                    // LOGIN
                    if($_POST) $user->login($_POST);
                  } else if(isset($_GET["logout"])){
                    // LOGOUT
                    $user->logout();
                  } else {
                    include "page/home.php";
                  }
                ?>
            </div>
            <div class="col-md-4">
              <?php include "component/sidebar.php"; ?>
            </div>
        </div>
    </div>
    <?php include "component/footer.php"; ?>
    <?php include "component/js.php"; ?>
    </body>
</html>
<?php 
  ob_end_flush(); 
?>