<?php
/**
 * Created by PhpStorm.
 * User: Duong_IT
 * Date: 8/21/2017
 * Time: 9:36 PM
 * @var $bills  \common\models\Bill
 */
$config = \common\models\search\Configure::getConfig();
$nab = Yii::$app->controller->navbar;
?>
<div class="header-navigate">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <ol class="breadcrumb breadcrumb-arrow">
                    <?= $nab ?>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container" id="columns">

    <h2 class="page-heading no-line">
        <span class="page-heading-title2">Order History</span>
    </h2>
    <!-- ../page heading-->
    <div class="page-content page-order">

        <div class="order-detail-content">
            <div class="row">
                <div class="col-md-5">
                    <table class="table table-bordered table-responsive cart_summary">
                        <thead>
                        <tr>
                            <th class="cart_product">Code</th>
                            <th>Order Date</th>
                            <th>Total Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($bills as $bill): ?>
                            <tr>
                                <td class="cart_product">
                                    <?="#".$bill->id?>
                                </td>
                                <td>
                                    <?=$bill->order_time?>
                                </td>
                                <td>
                                    <?=$config['money_suffix']." ".number_format($bill->total,2,',','.')?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-7"></div>
            </div>

        </div>
    </div>
</div>
