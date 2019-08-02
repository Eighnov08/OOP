<?php foreach($news->getNews() as $news) {?>
    <h2><a href="?detail=<?php echo $news["id"] ?>"><?php echo $news["title"] ?></a></h2>
    <p><?php echo $news["description"] ?></p>
<?php } ?>