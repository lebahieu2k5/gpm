<?php
/**
 * @var $cat \common\models\Catproduct;
 * @var $parent \common\models\Catproduct;
 * @var $subcats \common\models\Catproduct;
 *
 *
 *
 *
 *
 */
$nab = Yii::$app->controller->navbar;

$config = \common\models\Configure::getConfig();
$this->title="Tìm kiếm";

?>
<div class="bg-white container news-container">
    <div class="content-product"  style="padding-bottom: 15px">
        <div class="container" style="font-family: 'Roboto Condensed'">
            <ul id="breadcrumb">
                <?= $nab ?>
            </ul>
            <div class="row">
                <h2 style="font-family: 'Roboto Condensed';text-transform:uppercase;font-size: 16px;padding: 15px; font-weight: 600">Kết quả tìm kiếm loại sản phẩm với từ khóa "<?= $keyword ?>"</h2>
                <?php
                if(empty($cat)){
                    echo "<span style='padding: 15px!important; display: block'>Không có sản phẩm nào phù hợp</span>";
                }else
                    foreach ($cat as $value):
                    ?>
                        <div class="col-md-2 col-xs-6 col-sm-2">- <a class="catsearch" href="<?php echo Yii::$app->urlManager->createUrl(['product/product','path'=>$value->url,'id'=>$value->id])?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></div>
                <?php endforeach;?>
            </div>
            <div class="row" style="padding-top: 15px">
                <h2 style="font-family: 'Roboto Condensed';text-transform:uppercase;font-size: 16px;padding-left: 15px; font-weight: 600">Kết quả tìm kiếm sản phẩm với từ khóa "<?= $keyword ?>"</h2>

                <?php
                if(empty($product)){
                    echo "<span style='padding: 15px!important; display: block'>Không có sản phẩm nào phù hợp</span>";
                }else
              <?php foreach ($product as $value):/** @var \common\models\Product $value */
                                    $dem++ ?>
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


                <?php endforeach; ?>

            </div>

        </div>
    </div>
</div>