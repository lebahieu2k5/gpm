<style>
    #container-content img{opacity: 1!important;}

</style>
<?php $dem = 0;
foreach ($products as $index => $product): ?>
    <?php if (!empty($product)): ?>
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
    <?php endif; ?>
<?php endforeach; ?>

<?php
if ($dem == 0):
    ?>
    <div class="product-lists box-product-lists mt15 clearfix">
        <div class="col-xs-12 empty">
            <p>Chưa cập nhật sản phẩm!</p>
        </div>
    </div>
<?php endif; ?>