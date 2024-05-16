<?php
/**
 * Created by PhpStorm.
 * User: DUONG_IT
 * Date: 9/28/2016
 * Time: 3:26 PM
 * @var  $tongsoluongdadat integer
 * @var $giohang \common\models\Product[]
 * @var $tongtien integer
 * @var $soluong integer
 */
$config = \common\models\Configure::getConfig();
?>
    <a class="cart-link" href="<?= Yii::$app->urlManager->createUrl(['product/giohang']) ?>">
                                        <span>
                                             <?php
                                             $soluongs=0;

                                                 foreach ($soluong as $soluongvalue){
                                                     foreach ($soluongvalue as $soluongvalue2){
                                                         $soluongs+=$soluongvalue2;
                                                     }
                                                 }
                                             ?>
                                            <span class="cart-number"><?= $soluongs?></span>

                                        </span>
    </a>

    <div class="cart-view clearfix">

            <table id="cart-view">
                <tbody>
                <?php foreach ($giohang as $index => $item): ?>

                <tr class="item_2">
                    <td class="img"><a
                            href="<?= Yii::$app->urlManager->createUrl(['product/detailproduct', 'path' => $item->url, 'id' => $item->id]) ?>"
                            title="<?= $item->name ?>"><img
                                src="<?= Yii::$app->urlManager->baseUrl . \common\models\Product::getImageDefault($item->id) ?>"
                                alt="<?= $item->name ?>"></a>
                    </td>

                    <td>
                        <a class="pro-title-view"
                           href="<?= Yii::$app->urlManager->createUrl(['product/detailproduct', 'path' => $item->url, 'id' => $item->id]) ?>"
                           title="/products/kem-tao-sang-kma-perfect"><?= $item->name ?></a>
                        <span
                            class="pro-quantity-view phienbanview"><?= $phienban[$index][$item->id] ?></span>
                        <span
                            class="pro-quantity-view">Số lượng: <?= $soluong[$index][$item->id] ?></span>


                                    <span
                                        class="pro-price-view">Giá: <?= $config['money_suffix']." ".number_format($dongia[$index][$item->id] * $soluong[$index][$item->id], 0, '', '.')  ?></span>

                    </td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
            <span class="line"></span>
        <table class="table-total">
            <tbody>
            <tr>
                <td align="left">Tổng tiền:</td>
                <td align="right"
                    id="total-view-cart"><?= $config['money_suffix']." ".number_format($tongtien, 0, '', '.')?></td>
            </tr>
            <tr>
                <td>
                    <a href="<?= Yii::$app->urlManager->createUrl(['product/giohang']) ?>"
                       class="linktocart">Giỏ hàng</a></td>
                <td>
                    <a href="<?= Yii::$app->urlManager->createUrl('product/payment') ?>"
                       class="linktocheckout">Thanh toán</a></td>
            </tr>
            </tbody>
        </table>
    </div>
