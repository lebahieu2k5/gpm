<?php
/**
 * @var $catProduct \common\models\Catproduct;
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

$this->title = $parent->name;
\johnitvn\ajaxcrud\CrudAsset::register($this);
?>
<style>
    .dst_hottrends a {
        color: #ed1c24;
        border: 1px solid #ed1c24;
        display: inline-block;
        vertical-align: top;
        padding-left: 5px;
        padding-right: 6px;
        font-size: 13px;
        line-height: 2;
        -webkit-transition: all 0.2s linear;
        -moz-transition: all 0.2s linear;
        -ms-transition: all 0.2s linear;
        -o-transition: all 0.2s linear;
        transition: all 0.2s linear;
        background: #fff;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        -o-border-radius: 3px;
        border-radius: 3px;
    }

    .dst_hottrends a:hover {
        background: #ed1c24;
        color: #fff;
        border: 1px solid #fff;
    }
</style>
<div class="breadcrumb-img" hidden>
    <img src="images/under_bg1.jpg">
</div>
<section id="breadcrumb" style="">
    <div class="wrapper">
        <div class="inner">
            <div class="breadcrumb-content">

                <p class="breadcrumb-title"><?= $parent->name ?></p>

                <ol class="breadcrumb breadcrumb-arrow">
                    <?= $nab ?>
                </ol>

            </div>
        </div>
    </div>
</section>
<div class="procsContainer container">
    <div class="news-container procs">
        <div class="content-product">

            <div class="row">

                <div class="col-xs-12 clearfix">
                    <?php echo \yii\helpers\Html::beginForm('', '', ['id' => 'filter-form']); ?>
                    <?php echo \yii\helpers\Html::textInput('catid', $catProduct->id, ['class' => 'hidden']) ?>
                    <div class="filter-destop">
                        <h3 class="hidden">
                            <?= $catProduct->name ?>
                        </h3>
                        <div class="filter-box">
                            <!--                            <p aria-expanded="false">Brand<i class="fa fa-angle-down hidden-lg"></i></p>-->
                            <!---->
                            <!--                            <div class="field-search input-group hidden-md hidden-sm hidden-xs">-->
                            <!--                                <input type="text" class="filter-vendor-list"-->
                            <!--                                       onkeyup="filterItemInList(jQuery('.filter-vendor-list'))">-->
                            <!--                                <button class=""></button>-->
                            <!--                            </div>-->
                            <?php if (!empty($brand)): ?>
                                <div class="col-xs-12 filterbrandcontainer">
                                    <div class="row" style="padding: 0 15px">
                                        <?php foreach ($brand as $value): ?>
                                            <a class="col-xs-4 col-md-2 selectbrand" vals="<?= $value->id ?>">
                                                <div><img src="/images/brand/<?= $value->image ?>"
                                                          class="unveil-loaded"></div>
                                            </a>
                                        <?php endforeach; ?>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            <?php endif; ?>
                            <div class="clearfix"></div>
                            <?php if (!empty($brand)): ?>
                                <ul class="filter-vendor clearfix hidden">
                                    <?php foreach ($brand as $value): ?>
                                        <li>
                                            <label data-filter="<?= func::taoduongdan($value->name) ?>"
                                                   class="<?= func::taoduongdan($value->name) ?>">
                                                <input name="brand[]" type="checkbox" id="checkbox<?= $value->id ?>"
                                                       value="<?= $value->id ?>">
                                                <span><?= $value->name ?></span>
                                            </label>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>
                        </div>
                        <div class="filter-box" id="filter-box">
                            <?= \yii\helpers\Html::dropDownList('ss', '', [
                                0 => "No filter",
                                1 => "Dưới 1 triệu đồng",
                                2 => "Từ 1 triệu - 3 triệu đồng",
                                3 => "Từ 3 triệu - 10 triệu đồng",
                                4 => "Từ 10 triệu - 20 triệu đồng",
                                5 => "Trên 20 triệu"
                            ], ['class' => 'form-control hidden-sm hidden-md hidden-lg', 'id' => 'selectgia']) ?>
                            <ul class="filter-price clearfix hidden-xs">
                                <li>
                                    <label>
                                        <input id="gia-0" type="radio" name="price-filter" data-price="0"
                                               value="nope" checked="true">
                                        <span>No filter</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input id="gia-1" type="radio" name="price-filter" data-price="0:1000000"
                                               value="0:1000000">
                                        <span>Dưới 1 triệu đồng</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input id="gia-2" type="radio" name="price-filter" data-price="1000001:3000000"
                                               value="1000001:3000000">
                                        <span>Từ 1 triệu - 3 triệu đồng</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input id="gia-3" type="radio" name="price-filter" data-price="3000001:10000000"
                                               value="3000001:10000000">
                                        <span>Từ 3 triệu - 10 triệu đồng</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input id="gia-4" type="radio" name="price-filter"
                                               data-price="10000001:20000000"
                                               value="10000001:20000000">
                                        <span>Từ 10 triệu - 20 triệu đồng</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input id="gia-5" type="radio" name="price-filter" data-price="20000001:max"
                                               value="20000001:max">
                                        <span>Trên 20 triệu</span>
                                    </label>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-box dst_hottrends" id="dst_hottrends" style="padding-top: 5px">
                            <?php $subcatfordelivery = \common\models\Catproduct::find()->where(['parent' => $catProduct->id])->all();
                            if (!empty($subcatfordelivery)):foreach ($subcatfordelivery as $subs): ?>
                                <a title="<?= $subs->name ?>"
                                   href="<?= Yii::$app->urlManager->createUrl(['product/product', 'path' => $subs->url, 'id' => $subs->id]) ?>"><?= $subs->name ?></a>
                            <?php endforeach;endif; ?>
                        </div>

                    </div>
                    <?php echo \yii\helpers\Html::endForm(); ?>
                </div>

                <div class="col-xs-12 clearfix">
                    <div class="icon-loading" style="display: none;">
                        <div class="uil-ring-css">
                            <div></div>
                        </div>
                    </div>

                    <div class="product-lists box-product-lists mt15 clearfix" id="product-list-area">

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
                                                        <span class="current-price">
                                                            <?php if($value->sale==0):?>
                                                            Giá: <span style="color: red; font-weight: bold" >Liên hệ</span>
                                                        <?php else:?>
                                                            <?= $value->getSale() . " " . $config['money_suffix'] ?>
                                                            <?php endif;?>
                                                        </span>

                                                        <?php if ($value->sale < $value->retail && $value->sale>0): ?>
                                                            <span class="old-price">
                                                <s><?= $value->getRetail() . " " . $config['money_suffix'] ?></s>
                                            </span>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                                <div class="product--loop__actions medium-down--hide">
                                                    <a href="<?= $value->getLink() ?>" class="btn">Chi tiết</a>
                                                    <a href="<?= $value->getLink() ?>"
                                                       style="background-color: #576398;color: white" class="btn">Mua Ngay</a>
                                                </div>

                                                <?php if ($value->sale < $value->retail && $value->sale>0): ?>
                                                    <span class="product--loop__status">-<?= round(($value->retail - $value->sale) *100/ $value->retail, 0) ?>%</span>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(document).on('click', '.selectbrand', function () {
            var self = $(this);
            var id = self.attr('vals');
            $("#checkbox" + id).click();
            if (self.hasClass("bactive")) {
                self.removeClass("bactive");
            } else {
                self.addClass("bactive");
            }
        });
        $(document).on('change', '#selectgia', function () {
            var self = $(this);
            var id = self.val();
            $("#gia-" + id).click();

        })
    })
</script>