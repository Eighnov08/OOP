<?php $news_detail = $news->getNewsDetail($_GET["detail"]) ?>
    <h2><a href="?detail=<?php echo $news_detail["id"] ?>"><?php echo $news_detail["title"] ?></a></h2>
    <p><?php echo $news_detail["description"] ?></p>