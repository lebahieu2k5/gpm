<?php
/**
 * @var $product \common\models\Product
 * @var $properties \common\models\Properties
 * @var $productRelatives \common\models\Product
 * @var $thuoctinhs \common\models\Propertiesvalueproduct
 */

use yii\bootstrap\Modal;

$config = \common\models\search\Configure::getConfig();
$images = \common\models\Product::getAllImage($product->id);
$nab = Yii::$app->controller->navbar;
$this->title = $product->name;
\johnitvn\ajaxcrud\CrudAsset::register($this);

if (!empty($images)) {
    foreach ($images as $image) {
        /** @var \common\models\Anhsanpham $image */
        if ($image->default) {
            $this->context->og_image = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]" . $image->thumb;
            break;
        }
    }
} else {
    $this->context->og_image = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]" . $config['contact_logo'];
}
?>
    <style>
        .cmu_tags {
            margin: 0;
        }

        .cmu_tags a {
            background: #85c8ea;
            border-radius: 3px 0 0 3px;
            color: #fff !important;
            display: inline-block !important;
            height: 26px;
            float: left;
            line-height: 26px;
            padding: 0 30px 0 10px;
            position: relative;
            margin: 0 3px 3px 0;
            text-decoration: none;
            -webkit-transition: color 0.2s;
        }

        .cmu_tags a::before {
            background: #fff;
            border-radius: 10px;
            box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
            content: '';
            height: 6px;
            right: 13px;
            position: absolute;
            width: 6px;
            top: 10px;
        }

        .cmu_tags a::after {
            background: #fff;
            border-bottom: 13px solid transparent;
            border-left: 10px solid #85c8ea;
            border-top: 13px solid transparent;
            content: '';
            position: absolute;
            right: 0;
            top: 0;
        }

        /* 02:13:28 26/06/2020 */
        .fullparameter {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            z-index: 99;
            display: none;
            padding: 0 0 0 55px;
            width: 630px;
            margin: 0 auto
        }

        .fullparameter.display {
            display: block
        }

        .fullparameter ul {
            padding: 10px 30px 10px 30px;
            width: 450px
        }

        .fullparameter .scroll {
            height: 100vh;
            width: auto;
            padding: 0 30px 0 30px;
            overflow-x: hidden;
            overflow-y: auto;
            background: #fff
        }

        .fullparameter .scroll img {
            display: block;
            margin: 0 auto;
            width: 500px;
            height: auto
        }

        .fullparameter .scroll h4, .fullparameter .scroll h3 {
            display: block;
            font-size: 18px;
            color: #666;
            font-weight: 600;
            margin-top: 15px;
            line-height: 1.3em
        }

        .tableparameter .closebtn {
            position: fixed;
            top: 0;
            right: 0;
            z-index: 99
        }

        .fullparameter .closebtn {
            float: right;
            width: 75px;
            height: 75px;
            position: absolute;
            top: 0;
            right: 0;
            cursor: pointer
        }

        .fullparameter .scroll .viewarticle {
            float: left;
            padding: 8px;
            width: 200px;
            border: 1px solid #288ad6;
            border-radius: 4px;
            font-size: 13px;
            color: #288ad6;
            font-weight: 600;
            margin: 15px 0 0 30px;
            text-align: center
        }

        .fullparameter .scroll .viewarticle:hover {
            background: #288ad6;
            color: #fff
        }

        .fullparameter .scroll .closetable {
            float: left;
            padding: 8px;
            margin: 16px;
            font-size: 13px;
            color: #288ad6;
            position: relative;
            width: auto;
            height: auto
        }

        .fullparameter .scroll .closetable:hover {
            color: #e67e22
        }

        .fullparameter .scroll::-webkit-scrollbar {
            width: 9px
        }

        .fullparameter .scroll::-webkit-scrollbar-track {
            background: #fff;
            width: 11px;
            padding: 2px
        }

        .fullparameter .scroll::-webkit-scrollbar-thumb {
            background: #d8d8d8;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px
        }

        .parameterfull {
            display: block;
            position: relative;
            overflow: hidden;
            background: #fff
        }

        .parameterfull li {
            display: table;
            *display: block;
            background: #fff;
            width: 100%;
            border-bottom: 1px solid #dadada
        }

        .parameterfull li label {
            display: block;
            background: #f2f2f2;
            font-size: 16px;
            font-weight: 600;
            color: #c0392b;
            padding: 8px
        }

        .parameterfull li span {
            display: table-cell;
            *float: left;
            width: 35%;
            vertical-align: top;
            padding: 6px 5px;
            font-size: 13px;
            color: #666;
            font-weight: 600
        }

        .parameterfull li span div.ph {
            padding: 0
        }

        .parameterfull li div {
            display: table-cell;
            *float: left;
            width: auto;
            vertical-align: top;
            padding: 6px 5px;
            font-size: 13px;
            color: #666
        }

        .parameterfull li div a {
            color: #288ad6
        }

        .parameterfull li div a:hover {
            color: #e67e22
        }

        .specWear {
            padding: 0 !important;
            margin-top: 15px;
            width: 100% !important
        }

        .fixbody {
            overflow: hidden;
            left: 0;
            right: 0
        }

        .fixparameter {
            display: block;
            overflow: hidden;
            background: rgba(0, 0, 0, .75);
            position: fixed;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            z-index: 99;
            text-indent: 999999em
        }

        .icondetail-closepara {
            width: 75px;
            height: 75px;
            cursor: pointer;
            display: block
        }

        .parameterfull li span a {
            color: #288ad6
        }

        .parameterfull li span a div {
            color: #288ad6
        }
    </style>

    <section id="breadcrumb" style="">
        <div class="wrapper">
            <div class="inner">
                <div class="breadcrumb-content">

                    <p class="breadcrumb-title"><?= $product->name ?></p>

                    <ol class="breadcrumb breadcrumb-arrow">
                        <?= $nab ?>
                    </ol>

                </div>
            </div>
        </div>
    </section>
    <div class="procsContainer">
        <div class="header-navigate">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row border-bottom hidden">
                        <div class="product-title col-md-8" style="text-align: left">

                        </div>
                        <div class="col-md-4" style="text-align: right">
                            <div class="fb-like"
                                 data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                                 data-layout="standard" data-action="like" data-size="large" data-show-faces="true"
                                 data-width="500"
                                 data-share="true"></div>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 30px;padding-top: 15px">
                        <div class="col-lg-9 col-md-12 col-xs-12">
                           <div class="row">
                               <div class="col-lg-7 col-md-6 col-sm-12">
                                   <div id="surround">
                                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 box-image-featured"style="padding: 5px">
                                           <img class="product-image-feature"
                                                src="<?= Yii::$app->urlManager->baseUrl . \common\models\Product::getImageDefault($product->id) ?>"
                                                alt="<?= $product->name ?>">
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div style="background: none"
                                                    class="product-thumb-vertical mThumbnailScroller _mTS_1 mTS-buttons-out mTS_no_scroll auto-mTS-x-hover-50-none"
                                                    id="sliderproduct">
                                                   <div id="mTS_1" class="mTSWrapper mTS_vertical">
                                                       <ul class="mTSContainer" id="mTS_1_container">
                                                           <?php foreach ($images as $image): ?>
                                                               <li class="product-thumb upload mTSThumbContainer">
                                                                   <a href="javascript:void(0);"
                                                                      data-image="<?= Yii::$app->urlManager->baseUrl . $image->image ?>"
                                                                      class="<?= ($image->default == 1) ? 'zoomGalleryActive' : '' ?>">
                                                                       <img src="<?= Yii::$app->urlManager->baseUrl . $image->image ?>"
                                                                            class="mTSThumb unveil-loaded">
                                                                   </a>
                                                               </li>
                                                           <?php endforeach; ?>
                                                       </ul>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12  product-single">

                                   <div class="product-price" id="price-preview">
                                       <div class="grid__item large--one-half" style="width: 100%"><h1
                                                   style="font-weight: bold; font-size: 18px"><?= $product->name ?></h1></div>
                                       <div class="pro-brand">
                                           <span class="title">Thương hiệu: <?= $product->brand->name ?></span>
                                       </div>

                                       <span class="product-sku">
                                    Mã sản phẩm: <span id="ProductSku" class="ProductSku"
                                                       itemprop="SKU">HHDHGHD543</span>
                                </span>
                                       <?php if ($product->status == 0): ?>
                                           <div class="price-container">

                                               <span class="visually-hidden">Giá gốc</span>
                                               <span id="ProductPrice" class="h2 ProductPrice" itemprop="price"
                                                     content="5000000"><?= $product->getSale() ?> ₫</span>


                                               <span class="visually-hidden">Giá bán</span>
                                               <s id="ComparePrice" class="ComparePrice"><?= $product->getRetail() ?>₫</s>
                                               <span class="text-danger text-giamgia">- <?php echo round(($product->retail - $product->sale) * 100 / $product->retail, 0) ?> %</span>
                                           </div>

                                       <?php else: ?>
                                           <span
                                                   class="sale-value">Hết hàng tạm thời</span>
                                       <?php endif; ?>
                                   </div>

                                   <?php $thuoctinhsanpham = \common\models\Thuoctinhproduct::find()->where(['product_id' => $product->id])->all();
                                   $listthuoctinh = \common\models\Thuoctinh::find()->all(); ?>
                                   <?php if (!empty($thuoctinhsanpham)): ?>

                                       <div class="col-xs-12 owl-carousel owl-theme " id="phienbanselect">

                                           <?php
                                           foreach ($thuoctinhsanpham as $index => $value):/** @var \common\models\Thuoctinhproduct $value */
                                               ?>
                                               <div class="item price-phienban" <?= ($value->conhang) ? "" : "style='background: #ddd;'"; ?>>
                                                   <div class="phienbanselect"><?php
                                                       $dulieuthuoctinh = \yii\helpers\Json::decode($value->thuoctinh_id);
                                                       foreach ($dulieuthuoctinh as $value2) {
                                                           foreach ($listthuoctinh as $valuett) {
                                                               if ($valuett->id == $value2) {
                                                                   echo $valuett->tenthuoctinh . ", ";
                                                                   break;
                                                               }
                                                           }
                                                       }
                                                       ?></div>


                                                   <input type="radio"
                                                          style="margin-top: 10px" <?= ($value->conhang) ? "" : "disabled"; ?>
                                                          name="selectthuoctinh"
                                                          sale="<?= $config['money_suffix'] . " " . number_format($value->gia, 0, '', '.') ?>"
                                                          retail="<?php if ($value->gia < $value->giagoc) echo $config['money_suffix'] . " " . number_format($value->giagoc, 0, '', '.') ?>"
                                                          discount="<?php if ($value->gia < $value->giagoc) echo "- " . round(($value->giagoc - $value->gia) * 100 / $value->giagoc, 0) . " %" ?>"
                                                          value="<?= $value->id ?>">
                                                   <?= ($value->conhang) ? "" : "<span class='text-danger text-hethang'>Hết hàng</span>" ?>
                                               </div>
                                           <?php endforeach; ?>
                                       </div>
                                       <script>
                                           $(document).ready(function () {
                                               $("#phienbanselect").owlCarousel({
                                                   responsive: {
                                                       0: {
                                                           items: 3
                                                       },
                                                       768: {
                                                           items: 3
                                                       },

                                                   },
                                                   slideSpeed: 2000,
                                                   nav: true,
                                                   autoplay: false,
                                                   dots: false,
                                                   loop: false,
                                                   responsiveRefreshRate: 200,
                                                   navText: [
                                                       '<i class="fa fa-angle-left fa-5x" aria-hidden="true"></i>',
                                                       '<i class="fa fa-angle-right fa-5x" aria-hidden="true"></i>'
                                                   ]
                                               });
                                           })
                                       </script>
                                   <?php endif; ?>
                                   <div class="p-short-description">
                                       <?= $product->decription ?>
                                   </div>
                                   <div id="add-item-form" class="variants clearfix variant-style">
                                       <div class="select-wrapper clearfix">
                                           <label>Số lượng</label>
                                           <input type="button" value="-" onclick="minusQuantity()" class="qty-btn">
                                           <input type="text" id="quantity" name="quantity" value="1" min="1"
                                                  class="quantity-selector">
                                           <input type="button" value="+" onclick="plusQuantity()" class="qty-btn">
                                           <input id="idsanpham" type="hidden" name="codesanpham"
                                                  value="<?= $product->id ?>">
                                           <input id="checkphienban" type="hidden" name="checkphienban"
                                                  value="<?= count($thuoctinhsanpham) ?>">
                                           <input id="thongso" type="hidden" name="thongsosanpham" value="<?= $product->id ?>">
                                       </div>
                                       <div class="clearfix">
                                           <?php if ($product->status == 0 && $product->sale>0): ?>
                                               <a href="javascript:void(0)" class="btn-style-add themvaogiohang btn"
                                                  style="background: #576398; color:white!important;margin-bottom: 5px">Thêm
                                                   vào giỏ
                                                   hàng</a>
                                               <a href="javascript:void(0)" class="btn-style-add muangay buy_now">Đặt mua ngay
                                                   <span>Giao tận nơi hoặc nhận tại siêu thị</span></a>
                                               <?php if ($product->hot): ?>
<!--                                                   <a href="javascript:void(0)" class="btn-style-add muatragop">Đặt mua trả-->
<!--                                                       góp</a>-->
                                               <?php endif; ?>
                                           <?php else: ?>
                                               <a href="#" class="btn-style-add addtocart-modal">Liên hệ</a>
                                           <?php endif; ?>
                                       </div>

                                   </div>

                               </div>
                           </div>
                            <div class="row">
                                <div class="product-tabs col-xs-12">
                                    <div class="product-description rte" itemprop="description">
                                        <div class="product-description__header">
                                            Mô tả sản phẩm
                                        </div>
                                        <div class="product-desc-detail">
                                            <?=$product->brief?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12 col-xs-12">
                            <div class="grid__item large--one-quarter" style="width: 100%!important;">
                                <!-- /snippets/collection-sidebar.liquid -->

                                <div class="collection-sidebar-block">
                                    <div class="col-title">
                                        <h2 class="h3">Từ khóa</h2>
                                    </div>
                                    <ul class="no-bullets">
                                        <?php if(!is_null($product->tags) && !empty($product->tags)): ?>
                                            <li class="filter--active">

                                                <a href="<?=Yii::$app->urlManager->createUrl(['site/tag','type'=>'tags','value'=>urlencode($value)])?>">
                                                    <?=$value?>
                                                </a>


                                            </li>

                                        <?php endif;?>




                                    </ul>
                                </div>


                                <div class="collection-sidebar-block">

                                    <div class="col-title">
                                        <h2 class="h3">Sản phẩm nổi bật</h2>
                                    </div>
                                    <div class="panel">
                                        <ul class="no-bullets">
                                            <?php $sanPhamNoiBat = \common\models\Product::find()->where(['active'=>1,'hot'=>1])->limit(5)->all();?>
                                            <?php foreach ($sanPhamNoiBat as $sanPhamHot): /** @var \common\models\Product $sanPhamHot */?>
                                            <li>
                                                <a href="<?=$sanPhamHot->getLink()?>" class="grid seenPro">
                                                    <div class="grid__item large--four-twelfths medium--four-twelfths small--six-twelfths">
                                                        <div class="seenPro-img">
                                                            <img src="<?=$sanPhamHot->getDefaultImage()?>"
                                                                 alt="<?=$sanPhamHot->name?>">
                                                        </div>
                                                    </div>
                                                    <div class="grid__item large--eight-twelfths medium--eight-twelfths small--six-twelfths">
                                                        <div class="seenPro-info">
                                                            <p class="seenPro-title">
                                                                <?=$sanPhamHot->name?>
                                                            </p>
                                                            <p class="seenPro-price">
                                                                <span class="current-price"><?=$sanPhamHot->getSale()?>₫</span>
                                                                <span class="old-price"><s><?=$sanPhamHot->getRetail()?>₫</s></span>

                                                            </p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <?php endforeach;?>
                                        </ul>
                                    </div>

                                </div>


                                <div class="collection-sidebar-block">
                                    <div class="col-title">
                                        <h2 class="h3">Sản phẩm liên quan</h2>
                                    </div>
                                    <div class="panel">
                                        <ul class="no-bullets">

                                            <?php $sanPhamNoiBat = \common\models\Product::find()->where(['active'=>1,'cat_product_id'=>$product->cat_product_id])->limit(5)->all();?>

                                            <?php foreach ($sanPhamNoiBat as $sanPhamHot): /** @var \common\models\Product $sanPhamHot */?>
                                                <li>
                                                    <a href="<?=$sanPhamHot->getLink()?>" class="grid seenPro">
                                                        <div class="grid__item large--four-twelfths medium--four-twelfths small--six-twelfths">
                                                            <div class="seenPro-img">
                                                                <img src="<?=$sanPhamHot->getDefaultImage()?>"
                                                                     alt="<?=$sanPhamHot->name?>">
                                                            </div>
                                                        </div>
                                                        <div class="grid__item large--eight-twelfths medium--eight-twelfths small--six-twelfths">
                                                            <div class="seenPro-info">
                                                                <p class="seenPro-title">
                                                                    <?=$sanPhamHot->name?>
                                                                </p>
                                                                <p class="seenPro-price">
                                                                    <span class="current-price"><?=$sanPhamHot->getSale()?>₫</span>
                                                                    <span class="old-price"><s><?=$sanPhamHot->getRetail()?>₫</s></span>

                                                                </p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            <?php endforeach;?>


                                        </ul>
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-xs-12">

                            <div id="comment">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12" style="max-width: 100%;overflow: hidden">
                                            <div class="fb-like"
                                                 data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                                                 data-layout="standard" data-action="like" data-size="large"
                                                 data-show-faces="true"
                                                 data-share="true"></div>
                                            <div class="fb-comments"
                                                 data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                                                 data-numposts="5" data-width="100%"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("#description table").attr('class', 'table table-hover table-striped table-bordered');
                if ($(".product-thumb-vertical").length > 0 && $(window).width() >= 1200) {
                    $(".product-thumb-vertical").mThumbnailScroller({
                        axis: "x",
                        type: "click-thumb",
                        theme: "buttons-out",
                        type: "hover-precise",
                        contentTouchScroll: true
                    });
                    //$('.product-thumb-vertical').css('height', $('.product-image-feature').height());
                    $('#sliderproduct').show();
                    $('.product-thumb .mTSThumb').removeClass('anh-thumb');
                }
                if ($(".product-thumb-vertical").length > 0 && $(window).width() < 1200) {
                    $(".product-thumb-vertical").mThumbnailScroller({
                        axis: "y",
                        theme: "buttons-out",
                        contentTouchScroll: true
                    });
                    $('#sliderproduct').show();
                    $('.product-thumb .mTSThumb').addClass('anh-thumb');
                }

                var modalHeader = $("#ajaxCrudModal .modal-header");
                var modalBody = $("#ajaxCrudModal .modal-body");
                var modalFooter = $("#ajaxCrudModal .modal-footer");
                $(document).on('click', ".readmoredetail", function () {
                    var self = $(this).parent().parent();
                    var d = self.find("h2.title-danh-muc").clone();
                    modalHeader.append(d);
                    modalFooter.remove();
                    modalBody.html(self.find(".content-containers").html()).append("<div class='clearfix'></div>").attr("style", "max-height:80vh;overflow-y:scroll");
                    modalBody.animate({scrollTop: 0}, "fast");
                });
                $(document).on('click', ".price-phienban", function () {
                    var self = $(this);
                    self.find("input[type='radio']")[0].click();
                });
                $(document).on('click', ".price-phienban input[type='radio']", function () {
                    var self = $(this);
                    $("#price-preview .sale-value").text(self.attr('sale'));
                    $("#price-preview del").text(self.attr('retail'));
                    $("#price-preview .text-giamgia").text(self.attr('discount'));
                });
                $("#ajaxCrudModal").on("hidden.bs.modal", function () {
                    modalBody.removeAttr('style');
                    modalBody.html('');
                    modalHeader.html("<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>");
                });
            });
        </script>

        <script>
            var selectCallback = function (variant, selector) {
                if (variant && variant.available) {
                    $('.product-image-feature').hide();
                    $('.lazy-product-featured').show();
                    $(".product-thumb").children('a.zoomGalleryActive').removeClass('zoomGalleryActive');
                    if (variant != null && variant.featured_image != null) {
                        $(".product-thumb a[data-image='" + Haravan.resizeImage(variant.featured_image.src, '1024x1024') + "']").click();
                    }
                    $('.lazy-product-featured').hide();
                    $('.product-image-feature').show();
                    if (variant.sku != null) {
                        jQuery('#pro_sku').html('SKU: ' + variant.sku);
                    }
                } else {
                    jQuery('.addtocart').attr('disabled', 'disabled');
                    jQuery('.addnow').attr('disabled', 'disabled');
                    var message = variant ? "Out of stock" : "Không có hàng";
                    jQuery('#price-preview').html('<span>' + message + '</span>');
                    $('.lazy-product-featured').hide();
                    $('.product-image-feature').show();
                }
            };
            setTimeout(function () {
                if ($(".product-thumb-vertical").length > 0 && $(window).width() >= 1200) {
                    jQuery(".product-image-feature").elevateZoom({
                        gallery: 'sliderproduct',
                        scrollZoom: true
                    });
                }
                if ($(".product-thumb-vertical").length > 0 && $(window).width() < 1200) {
                    jQuery(".product-image-feature").elevateZoom({
                        gallery: 'sliderproduct',
                        zoomEnabled: false
                    });
                }
            }, 500);
        </script>
    </div>
<?php Modal::begin([
    "id" => "ajaxCrudModal",
    "footer" => "",// always need it for jquery plugin
    "size" => Modal::SIZE_LARGE
]) ?>
<?php Modal::end(); ?>