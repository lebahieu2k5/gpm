<?php
/**
 * Created by PhpStorm.
 * User: cilis
 * Date: 30-Aug-17
 * Time: 4:00 PM
 */
?>
<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;


$this->title = 'Đặt hàng thành công';
$this->params['breadcrumbs'][] = $this->title;
$config=\common\models\Configure::getConfig();
\johnitvn\ajaxcrud\CrudAsset::register($this);
?>
<style>
    body{
        background: #f0f0f0;
    }
    p{margin-bottom: 10px}
    .wrap_cart{
        margin: auto;
        margin-top: 15px;
    }
</style>
<link href="<?= Yii::$app->urlManager->baseUrl ?>/theme/css/components.css" rel="stylesheet">
<div class="site-signup">
    <div class="container">
        <div class="row  wrap_cart">
            <div class="col-md-12 ">
                <div class="display-table-cell">
                    <img src="<?=$config['contact_logo']?>" class="imgdangky">
                </div>
                <div class="display-table-cell">
                    <h1 class="text-success"><i class="fa fa-info-circle"></i> Đặt hàng thành công</h1>
                    <p class="font-15"><span>Chào mừng các bạn đến với <strong><?=(isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]"?></strong></p>
                </div>
                <div class="alert alert-success padding15 margin-top-bot-10">
                    <div class="" style="text-align: center">
                        <p>Xin cảm ơn.</p>
                        <p>Đơn hàng của bạn đã được gửi tới hệ thống của chúng tôi, bộ phận chăm sóc khách hàng của chúng tôi xin phép liên hệ lại với bạn để xác nhận đơn hàng sớm nhất.</p>
                        <p>Chúc bạn một ngày vui vẻ.</p>


                            <?php if($type!="Chuyển khoản"):?>
                                <p>Bạn đã chọn hình thức thanh toán: <b><?=$type?></b>.</p>
                            <?php else:?>
                                <p>Bạn đã chọn hình thức thanh toán: <b><?=$type?></b>. Bạn vui lòng chuyển khoản với nội dung "Họ tên (dấu cách) SDT (dấu cách) chuyen khoan mua dien thoai" để việc xác minh được nhanh chóng và thuận tiện nhất!</p>
                                <p>Dưới đây là thông tin tài khoản thanh toán của chúng tôi:</p>
                                <div class="row" style="padding-top: 15px">
                                    <div class="col-xs-4">
                                        <div class="well">
                                            <address>
                                                <strong>Chủ tài khoản: Tạ Quang Trường</strong><br>
                                                <abbr title="bank">Ngân hàng:</abbr> Vietcombank<br>
                                                <abbr title="stk">Số tài khoản:</abbr> 010-100-113-1599<br>
                                            </address>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <div class="well">
                                            <address>
                                                <strong>Chủ tài khoản: Tạ Quang Trường</strong><br>
                                                <abbr title="bank">Ngân hàng:</abbr> Vietinbank<br>
                                                <abbr title="stk">Số tài khoản:</abbr> 1008-268-07777<br>
                                            </address>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <div class="well">
                                            <address>
                                                <strong>Chủ tài khoản: Tạ Quang Trường</strong><br>
                                                <abbr title="bank">Ngân hàng:</abbr> Techcombank<br>
                                                <abbr title="stk">Số tài khoản:</abbr> 010-100-113-1599<br>
                                            </address>
                                        </div>
                                    </div>
                                </div>
                            <?php endif;?>


                        <p><a href="/" class="btn btn-warning">Go Home</a></p>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
    </div>
</div>