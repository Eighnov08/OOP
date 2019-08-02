<?php $result = $news->getNewsDetail($_GET["detail"]) ?>
<h2>
    <a href="?detail=<?php echo $result["id"] ?>">
        <?php echo $result["title"] ?>
    </a>
</h2>
<p>
    <?php echo $result["description"]?>
</p>

<!-- KOMENTAR -->
<hr>

<?php if($all_comments = $comment->getByArticleId($result["id"])){ ?>
<?php foreach($all_comments as $comment_result){ ?>
    <div class="media mb-3">
        <div class="media-left">
            <img src="./images/<?php echo $comment_result["photo"] ?>" width="80" alt="<?php echo $comment_result["photo"] ?>">
        </div>
        <div class="media-body ml-3">
            <h4 class="media-heading">
                <?php echo $comment_result["fullname"] ?>
                <small><i><?php echo $comment_result["datetime"] ?></i></small>
            </h4>
            <p><?php echo $comment_result["content"] ?></p>
        </div>
    </div>
<?php } ?>
<?php } ?>

<h3>Tulis Komentar</h3>

<?php if(isset($_SESSION["is_login"])) {?>
<div class="row">
    <div class="col-md-7">
        <form action="" method="POST">
            <div class="form-group">
                <textarea name="content" placeholder="Tulis komentar disini..." class="form-control"></textarea>
            </div>
            <div class="form-group">
                <input type="hidden" value="<?php echo $_SESSION["id"] ?>" name="users_id">
                <input type="hidden" value="<?php echo $result["id"] ?>" name="news_id">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</div>
<?php } else { ?>
    <div class="alert alert-info" role="alert">
        Silakan login terlebih dahulu untuk menulis komentar
    </div>
<?php } ?>