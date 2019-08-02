<?php foreach($news->getNews() as $news){ ?>
    <h2><a href="?detail=<?php echo $news["id"] ?>"><?php echo $news["title"] ?></a></h2>
    <p><?php echo substr($news["description"], 0, 100)?>...</p>
<?php } ?>