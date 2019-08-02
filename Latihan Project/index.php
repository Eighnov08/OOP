<?php 

  include "controller/database.php";
  include "controller/news.php";

  $news = new \controller\News;

?>


<!doctype html>
<html lang="en">
  <head>
    <?php include "component/head.php"; ?>
  </head>
  <body>
      <?php include "component/navigation.php" ?>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
              <?php 
                if(isset($_GET["detail"])){
                  include "page/detail.php";
                } else {
                  include "page/home.php";
                }
              ?>
            </div>
            <div class="col-md-4">
                <?php include "component/sidebar.php" ?>
            </div>
        </div>
    </div>
    <?php include "component/footer.php" ?>
    <?php include "component/js.php" ?>
  </body>
</html>