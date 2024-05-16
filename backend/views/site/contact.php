<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */

/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$config = \common\models\Configure::getConfig();
\johnitvn\ajaxcrud\CrudAsset::register($this);
$this->title = 'Liên hệ';
?>
<style>
    .container#container-content {
        width: 100% !important;
        margin: 0;
        padding: 0;
        max-width: none;
    }

</style>
<script>
    $(document).ready(function () {
        $('#my-menu').addClass('hidden');
    })
</script>


<div class="cotchinh div_content_tq">
    <div class="section-content padding news-details">
        <div class="">
            <div class="section border">
                <div>
                    <style type="text/css">
                        .a:visited {
                            color: #333;
                        }

                        .txt_tag {
                            display: inline;
                            background: #f1f1f1;
                            padding: 0 10px;
                            height: 20px;
                            color: #939393;
                            float: left;
                            font: 400 11px/20px arial;
                            margin: 5px 5px 0 0;
                        }

                        .txt_tag:hover {
                            background-position: initial;
                            background-image: initial;
                            background-size: initial;
                            background-attachment: initial;
                            background-origin: initial;
                            background-clip: initial;
                            background-color: rgb(226, 226, 226);
                            background-repeat: repeat;
                        }

                        .btnHidden {
                            display: none;
                        }

                        .infoUser {
                            font-weight: 700 !important;
                            font-size: 12px !important;
                        }
                    </style>

                    <div id="Lien-he">
                        <div class="news-list-title">
                            <div class="text-align-center">
                                <?php $local = $config['local_position']?>
                                <iframe src="https://www.google.com/maps/embed/v1/place?q=<?=urlencode($local)?>&key=AIzaSyAA-c42hhdywTFyWph-xe-yW45fi91ACTU"
                                        width="100%" height="450px" frameborder="0" style="border:0;"
                                        allowfullscreen=""></iframe>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-8 col-md-8 col-xs-12">
                                        <div class="newsletter">
                                            <div class="left_newletter backgroundwhite col-xs-12">
                                                <div class="content_desc">
                                                    <h4>Liên hệ với chúng tôi</h4>
                                                    <p>Vui lòng đừng ngần ngại để lại thông tin, chúng tôi sẽ liên hệ lại bạn trong thời gian sớm nhất.</p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <?php if(!empty(Yii::$app->session->getFlash('gcaptcha'))):?><script>$(document).ready(function () {
                                                    $('#fafasfa #lienhetuvan-donvi').focus();
                                                })</script><?php endif;?>
                                            <div class="col-md-6 backgroundwhite" id="fafasfa">
                                                <?php $form = ActiveForm::begin(); ?>
                                                <?php Yii::$app->language='vi-VN';$model->donvi="Khách Hàng";?>
                                                <div class="hidden">
                                                <?= $form->field($model, 'donvi')->textInput(['rows' => 6,'placeholder'=>$model->attributeLabels()["donvi"]])->label($model->attributeLabels()["donvi"],['style'=>"float:left"]) ?>
                                                </div>
                                                <?= $form->field($model, 'hoten')->textInput(['rows' => 6,'placeholder'=>$model->attributeLabels()["hoten"]])->label($model->attributeLabels()["hoten"],['style'=>"float:left"]) ?>

                                                <?= $form->field($model, 'dienthoai')->numberInput(['maxlength' => true,'placeholder'=>$model->attributeLabels()["dienthoai"]])->label($model->attributeLabels()["dienthoai"],['style'=>"float:left"]) ?>
                                                <?php if (!Yii::$app->request->isAjax){ ?>
                                                    <div class="form-group">
                                                        <div <?php if(!empty(Yii::$app->session->getFlash('gcaptcha'))):?><?php endif;?>>
                                                            <script src="https://www.google.com/recaptcha/api.js" async defer></script>
                                                            <div class="g-recaptcha" data-sitekey="6Lc6HOQUAAAAAAsdfkr5bEUSN1Z9ebp7I6eN31Os"></div>
                                                            <div style="padding: 15px;color: red ;text-shadow: 2px 2px 15px red;margin-bottom: 15px">
                                                                <?=Yii::$app->session->getFlash('gcaptcha');?>
                                                            </div>
                                                        </div>

                                                    </div>
                                                <?php } ?>
                                            </div>  <div class="col-md-6">
                                                <?= $form->field($model, 'email')->textInput(['type'=>'email','maxlength' => true,'placeholder'=>$model->attributeLabels()["email"]])->label($model->attributeLabels()["email"],['style'=>"float:left"]) ?>

                                                <?= $form->field($model, 'noidung')->textInput(['rows' => 6,'placeholder'=>$model->attributeLabels()["noidung"]])->label($model->attributeLabels()["noidung"],['style'=>"float:left"]) ?>
                                                <?php if (!Yii::$app->request->isAjax){ ?>
                                                <?= \yii\helpers\Html::submitButton($model->isNewRecord ? Yii::t('app', 'Gửi') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
                                                <?php } ?>



                                                <?php ActiveForm::end(); ?>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-xs-12">
                                        <div class="contact-office" style="text-align: left">
                                            <h2 class="h2pdc"><?= $config['contact_cname'] ?> </h2>
                                            &nbsp;
                                            <p class="pdc"><strong>Địa
                                                    chỉ:</strong> <?php echo $config['contact_address'] ?></p>
                                            <p class="pdc"><strong>Điện
                                                    thoại:</strong> <a
                                                        href="tel:<?= $config['contact_phone'] ?>"><?= $config['contact_phone'] ?></a>
                                            </p>
                                            <p class="pdc">
                                                <strong>Email:</strong> <a
                                                        href="email:<?= $config['contact_email'] ?>"><?= $config['contact_email'] ?></a>
                                            </p>
                                            <p class="pdc">
                                                <strong>Website:</strong> <a
                                                        href="javascript:;"><?= (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]" ?></a>
                                            </p>
                                            <p class="pdc">
                                                <strong>Fax:</strong> <a
                                                        href="fax:<?= $config['contact_fax'] ?>"><?= $config['contact_fax'] ?></a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                &nbsp;
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ms-clear"></div>
            </div>
        </div>
    </div>
</div>
