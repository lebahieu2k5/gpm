<?php
use yii\helpers\Html;
use yii\helpers\HtmlPurifier;
/** @var \common\models\Congviec $model */

?>
<?php $value=$model?>
<?php if($type=="production"):?>

        <div class="grid__item large--one-third medium--one-half small--one-half">

            <div class="product--loop">
                <div class="inner">
                    <a href="<?= $value->getLink() ?>" class="img-resize">
                        <img src="<?= $value->getDefaultImage() ?>"
                             alt="<?= $value->name ?>">
                    </a>
                    <div class="product--loop__info">
                        <a href="<?= $value->getLink() ?>"
                           class="product-name">
                            <h2 class="product--loop__title" title="<?= $value->name ?>">
                                <?= $value->name ?>
                            </h2>
                        </a>
                        <div class="product--loop__price">
                            <span class="current-price"><?= $value->getSale() . " " . $config['money_suffix'] ?></span>

                            <?php if ($value->sale < $value->retail): ?>
                                <span class="old-price">
                                                <s><?= $value->getRetail() . " " . $config['money_suffix'] ?></s>
                                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="product--loop__actions medium-down--hide">
                        <a href="<?= $value->getLink() ?>" class="btn">Chi
                            tiết</a>
                        <a href="<?= $value->getLink() ?>"
                           style="background-color: #576398;color: white" class="btn">Mua
                            Ngay</a>
                    </div>

                    <?php if ($value->sale < $value->retail): ?>
                        <span class="product--loop__status">-<?= round(($value->retail - $value->sale) / $value->retail, 0) ?>%</span>
                    <?php endif; ?>

                </div>
            </div>


        </div>

<style>
    .grid__item {
        padding-left: 0;
    }
</style>
<?php else:?>
    <article class="blog-loop">
        <div class="blog-post row">

            <div class="col-md-4 col-xs-12 col-sm-12">
                <a href="<?= Yii::$app->urlManager->createUrl(['site/news', 'id' => $value->id, 'url' => $value->url, 'catname' => func::taoduongdan($value->catNew->name)]) ?>"
                   class="blog-post-thumbnail" title="<?= $value->title ?>" rel="nofollow">
                    <img src="<?= Yii::$app->urlManager->baseUrl . $value->image ?>" alt="<?= $value->title ?>">
                </a>
            </div>

            <div class="col-md-8 col-xs-12 col-sm-12">
                <h3 class="blog-post-title">
                    <a href="<?= Yii::$app->urlManager->createUrl(['site/news', 'id' => $value->id, 'url' => $value->url, 'catname' => func::taoduongdan($value->catNew->name)]) ?>" title="<?= $value->title ?>"><?= $value->title ?></a>
                </h3>
                <div class="blog-post-meta">
                    <span class="author vcard">Quản trị viên</span>
                    <span class="date">
											<time pubdate="" datetime="<?= $value->posted_date ?>"><?= $value->posted_date ?></time>
										</span>
                </div>
                <p class="entry-content"><?= $value->brief ?>...</p>
            </div>
        </div>
    </article>
<?php endif;?>
