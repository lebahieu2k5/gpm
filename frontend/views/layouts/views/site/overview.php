<?php
/**
 * Created by PhpStorm.
 * User: ihdes
 * Date: 8/24/2017
 * Time: 3:32 PM
 */

use yii\helpers\Html;

$this->title = 'Account Profile';
$nab = Yii::$app->controller->navbar;
?>
<style>
    .ver-inline-menu li.active i {
        background: #ff6f00 !important;
    }
    .imgnew{
        width: 100%!important;
    }
    .product-grid-item .owl-prev:after{
        content: "\e605" !important;
        font-size: 36px !important;
        line-height: 40px !important;
        font-weight: 100 !important;
        font-family: simple-line-icons;

    }
    .product-grid-item .owl-next:after{
        content: "\e606";
        font-size: 36px !important;
        line-height: 40px !important;
        font-weight: 100 !important;
        font-family: simple-line-icons;
    }
    .product-grid-item .owl-prev{
        font-size: 0 !important;

    }
    .product-grid-item .owl-next{
        font-size: 0 !important;
    }
    .cart-link:hover .cart-view{
        display: block !important;
    }
    .imgnew{
        width: 100%!important;
    }
    #menu-mobile:not( .mm-menu ){
        display:none;
    }
    .bg-gray-rga {
        background-color: rgba(0, 0, 0, 0.79);
    }
    .promotion-filter {
        margin-top: -163px;
        position: relative;
        z-index: 1;
    }

    .slider.slider-horizontal .slider-track {
        height: 5px;
    }
    .slider-tick, .slider-handle {
        height: 13px;
        width: 13px;
    }
    .promotion-select-search {
        padding: 40px 0 10px;
    }

    .promotion-select-search .price-filter-group {
        color: #FFF;
        font-family: 'UTM Avo';
    }

    .promotion-select-search .price-filter-group.form-group {
        margin-bottom: 0;
    }

    .promotion-select-search .price-filter-group > label {
        font-size: 16px;
        font-weight: 200;
        padding-left: 0;
    }

    .promotion-select-search .options-selected.form-group {
        margin-bottom: 0;
    }

    .promotion-select-search .slider-tick-label-container {
        margin-top: -30px !important;
    }

    .promotion-select-search .slider-handle {
        background-color: #F639A5;
        background-image: -webkit-linear-gradient(top, #F639A5 0, #F639A5 100%);
        background-image: -o-linear-gradient(top, #F639A5 0, #F639A5 100%);
        background-image: linear-gradient(to bottom, #F639A5 0, #F639A5 100%);
    }

    .promotion-select-search .slider-selection.tick-slider-selection {
        background-image: -webkit-linear-gradient(top, #F639A5 0, #F639A5 100%);
        background-image: -o-linear-gradient(top, #F264BC 0, #F639A5 100%);
        background-image: linear-gradient(to bottom, #F264BC 0, #F639A5 100%);
    }

    .promotion-select-search .slider-tick.in-selection {
        background-image: -webkit-linear-gradient(top, #F639A5 0, #F639A5 100%);
        background-image: -o-linear-gradient(top, #F264BC 0, #F639A5 100%);
        background-image: linear-gradient(to bottom, #F264BC 0, #F639A5 100%);
    }

    .promotion-select-search .slider-tick.in-selection.round {
        border-radius: 50%;
        width: 13px;
    }

    .promotion-select-search .slider-tick.round {
        border-radius: 0;
        width: 3px;
    }

    .promotion-select-search .slider.slider-horizontal .slider-tick, .promotion-select-search .slider.slider-horizontal .slider-handle {
        margin-left: -5px;
    }

    .promotion-select-search .styled-selected {
        float: left;
        margin-right: 20px;
        width: 16%;
    }

    .promotion-select-search .styled-selected select {
        padding-left: 15px;
        border-radius: 10px;
        background: transparent url(bg-select.svg) no-repeat right center;
        background-color: #fff;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        outline: none;
        width: 100%;
        height: 37px;
        border: 0;
        padding-right: 43px;
    }

    .promotion-select-search form {
        width: 90%;
        margin: auto;
    }

    .promotion-select-search .wrapper-price label {
        display: block;
    }

    .promotion-select-search .slider.slider-horizontal {
        width: 100%;
        margin-bottom: 18px !important;
    }
    .checkout-sep{
        padding: 15px;
        font-size: 16px;
    }
    .payment-container{
        padding: 0;
    }
    .payment-container .overflow-cart{
        padding: 15px;
    }
    .payment-container .overflow-cart .blue{
        margin-top: 15px;
    }

    .wrapper-quickview{
        max-height: 50vh;
        overflow-y: scroll;
    }
    .header-navigate{
        border-top: 1px solid #dddddd;
    }
    .blog-r-image-feature{
        width:100%;
    }
    .anh-blog{
        max-height: 400px;
        overflow: hidden;
    }
    .site-contact h1{
        font-weight: 400;
        margin-bottom: 15px;
    }
    .site-contact p{
        color: #b0b0b0;
    }
    .site-contact div.mytitle{
        margin-bottom: 15px;
        font-style: italic;
    }
    .site-contact textarea{
        resize: none;
    }
    .contact-office{
        padding: 1px 15px;
        background: #FAFEFF;
        margin-bottom: 15px;
        border: 1px solid #f0f0f0;
        font-size: 12px;
    }
    .contact-office h3 {
        font-size: 16px;
        margin: 5px 0!important;
        font-weight: normal;
        line-height: 24px;
        text-transform: uppercase;
        color: #062D57;
    }

    .contact-office p {
        line-height: 24px;
        text-align: justify;
        color: #888;
        margin: 0 0 10px 0;
    }
    .contact-office p strong {
        display: inline-block;
        width: 90px;
        margin-right: 10px;
        padding-left: 24px;
    }
    .contact-office a {
        color: #888;
    }

    .form-group.form-md-line-input.has-mystyle .form-control.edited:not([readonly]) ~ label:after,
    .form-group.form-md-line-input.has-mystyle .form-control.edited:not([readonly]) ~ .form-control-focus:after, .form-group.form-md-line-input.has-mystyle .form-control.form-control-static ~ label:after,
    .form-group.form-md-line-input.has-mystyle .form-control.form-control-static ~ .form-control-focus:after, .form-group.form-md-line-input.has-mystyle .form-control:focus:not([readonly]) ~ label:after,
    .form-group.form-md-line-input.has-mystyle .form-control:focus:not([readonly]) ~ .form-control-focus:after, .form-group.form-md-line-input.has-mystyle .form-control.focus:not([readonly]) ~ label:after,
    .form-group.form-md-line-input.has-mystyle .form-control.focus:not([readonly]) ~ .form-control-focus:after {
        background: #4285f4;
    }
    .form-group.form-md-line-input.has-mystyle .form-control.edited:not([readonly]) ~ label, .form-group.form-md-line-input.has-mystyle .form-control.form-control-static ~ label, .form-group.form-md-line-input.has-mystyle .form-control:focus:not([readonly]) ~ label, .form-group.form-md-line-input.has-mystyle .form-control.focus:not([readonly]) ~ label {
        color: #4285f4;
    }
    .form-group.form-md-line-input.has-mystyle .form-control.edited:not([readonly]) ~ i, .form-group.form-md-line-input.has-mystyle .form-control.form-control-static ~ i, .form-group.form-md-line-input.has-mystyle .form-control:focus:not([readonly]) ~ i, .form-group.form-md-line-input.has-mystyle .form-control.focus:not([readonly]) ~ i {
        color: #4285f4;
    }
    .form-group.form-md-line-input.has-mystyle .form-control.edited:not([readonly]) ~ .help-block, .form-group.form-md-line-input.has-mystyle .form-control.form-control-static ~ .help-block, .form-group.form-md-line-input.has-mystyle .form-control:focus:not([readonly]) ~ .help-block, .form-group.form-md-line-input.has-mystyle .form-control.focus:not([readonly]) ~ .help-block {
        color: #4285f4;
    }
    .form-group.form-md-line-input.has-mystyle .input-group-addon {
        color: #4285f4;
    }
    .form-horizontal .form-group.form-md-line-input.has-mystyle > label {
        color: #4285f4;
    }
    form div.required label.control-label:before {
        content:" * ";
        color:red;
    }

    .form-header {
        color: #ffffff;
        font-size: 15px;
        line-height: 17px;
        border-bottom: 3px solid #2a73d8;
        margin: 0;
    }

    .form-header .form-txt {
        background-color: #2a73d8;
        display: inline-block;
        padding: 6px 14px;
    }

    .account-detail{
        padding-top: 20px;
        padding-bottom: 10px;
        background-color: #f6f6f6;
        margin-bottom: 25px;
    }

    .account-detail{
        padding-right: 45px;
    }

    .account-detail .control-label{
        display: inline-block;
        vertical-align: middle;
    }

    .bg-warning {
        width: 100%;
        float: right;
        padding: 7px;
        border: 1px solid #e6ce79;
        margin-top: 5px;
        background-color: #fcf8e3;
    }

    .account-field-content{
        width: 100%;
        display: inline-block;
        line-height: 34px;
        padding-left: 10px;
        border: 1px solid #e5e5e5;
    }

    .user-profile-content{
        margin-bottom: 20px;
    }

    .profile-account{
        min-height:600px;
        padding: 25px 40px 10px 0;
        background-color: #f7f7f7;
    }
    .backgroundwhite{
        background: white!important;

    }
    .padding15{
        padding: 15px;
    }
    .col-xs-6.white-contain{
        padding: 5px!important;
    }
    .backgroundwhite p{
        margin: 0!important;
    }

    .hh #main-menu{
        margin-bottom: 0 !important;
    }

    .checkbox>label{
        padding-left: 20px !important;
    }
</style>
<link href="<?= Yii::$app->urlManager->baseUrl ?>/theme/css/component.css" rel="stylesheet">

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

<div class="container">
    <div class="row profile-account">
        <div class="col-md-3">
            <ul class="ver-inline-menu tabbable margin-bottom-10">
                <li class="<?= $activetab == 1 ? 'active' : '' ?>">
                    <a data-toggle="tab" href="#tab_1-1">
                        <i class="fa fa-cog"></i>Thông tin tài khoản</a>
                    <span class="after">
                    </span>
                </li>
                <li class="<?= $activetab == 2 ? 'active' : '' ?>">
                    <a data-toggle="tab" href="#tab_2-2">
                        <i class="fa fa-envelope-o"></i>Quản lý thông tin nhận hàng</a>
                </li>



                <li class="<?= $activetab == 3 ? 'active' : '' ?>">
                    <a data-toggle="tab" href="#tab_3-3">
                        <i class="fa fa-lock"></i>Thay đổi mật khẩu</a>
                </li>
            </ul>
            <?php
            foreach (Yii::$app->session->getAllFlashes() as $key => $message) {
                echo '<div class="alert alert-' . $key . '">' . $message . '</div>';
            }
            ?>
        </div>
        <div class="col-md-9">
            <div class="tab-content">
                <div id="tab_1-1" class="tab-pane <?= $activetab == 1 ? 'active' : '' ?>">

                    <div class="col-xs-12 backgroundwhite">


                        <?php $title = [
                            1 => 'Ms',
                            2 => 'Mrs',
                            3 => 'Mr',
                        ] ?>

                        <h2><?=$title[$account->title].". ".$account->firstname?></h2>


                        <div class="col-xs-12 user-profile-content">
                            <label class="control-label">Phone Number</label>
                            <span class="account-field-content"><?= $account->phone ?></span class="account-field-content">
                        </div>


                        <div class="col-xs-12 user-profile-content">
                            <label class="control-label">Thành phố</label>
                            <span class="account-field-content"><?= $account->city ?></span>
                        </div>
                        <div class="col-xs-12 user-profile-content">
                            <label class="control-label">Quận</label>
                            <span class="account-field-content"><?= $account->address ?></span>
                        </div>  <div class="col-xs-12 user-profile-content">
                            <label class="control-label">Phường xã</label>
                            <span class="account-field-content"><?= $account->address2 ?></span>
                        </div>



                        <?php if ($account->street != ''): ?>
                            <div class="col-xs-12 user-profile-content">
                                <label class="control-label">Địa chỉ chi tiết</label>
                                <span class="account-field-content"><?= $account->street ?></span>
                            </div>
                        <?php endif; ?>



                    </div>


                </div>

                <div id="tab_2-2" class="tab-pane <?= $activetab == 2 ? 'active' : '' ?>">
                    <?php if (!is_null($deliverydefault)): ?>
                        <div class="row">
                            <div class="col-xs-6 white-contain clearfix">
                                <div class='backgroundwhite padding15'>
                                    <?php /** @var \common\models\Deliveryaddress $deliverydefault */ ?>
                                    <h2>Default Delivery Address</h2>
                                    <p>
                                        <b style="font-size: 16px"><?= $deliverydefault->surname . " " . $deliverydefault->firstname ?></b>
                                    </p>
                                    <p><?= $deliverydefault->address ?></p>
                                    <p><?= $deliverydefault->address2 ?></p>
                                    <p><?= $deliverydefault->city ?></p>
                                    <p><?= $deliverydefault->street ?></p>
                                    <p><?= $deliverydefault->postcode ?></p>
                                    <p><?= $deliverydefault->country ?></p>
                                    <p><?= $deliverydefault->phone ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="col-xs-12" style="padding: 0">
                        <?php foreach ($delivery as $index => $deliveryz): ?>
                            <?php if ($index % 2 == 0): ?><div class="row"><?php endif; ?>
                            <div class="col-xs-6 white-contain clearfix">
                                <div class='backgroundwhite padding15'>
                                    <?php /** @var \common\models\Deliveryaddress $deliveryz */
                                    ?>
                                    <h3>Additional Address Entry #<?php echo $deliveryz->id ?></h3>
                                    <p>
                                        <b style="font-size: 16px"><?= $deliveryz->surname . " " . $deliveryz->firstname ?></b>
                                    </p>
                                    <p><?= $deliveryz->address ?></p>
                                    <p><?= $deliveryz->address2 ?></p>
                                    <p><?= $deliveryz->city ?></p>
                                    <p><?= $deliveryz->street ?></p>
                                    <p><?= $deliveryz->postcode ?></p>
                                    <p><?= $deliveryz->country ?></p>
                                    <p><?= $deliveryz->phone ?></p>
                                    <?= Html::radio('defa', false, ['value' => $deliveryz->id, 'id' => 'addition-' . $index, 'class' => 'radiodefault']) . " " . Html::label('Set as default', 'addition-' . $index) ?>
                                </div>
                            </div>
                            <?php if ($index % 2 == 1): ?></div><?php endif; ?>
                        <?php endforeach; ?>
                        <?php if (count($delivery) % 2 == 1) echo "</div>"; ?>
                    </div>
                    <?= Html::a('Add new Delivery Address', 'javascript:void(0)', ['style' => 'text-decoration:none!important', 'id' => 'btn-add-da']) ?>
                    <?= Html::beginForm(['site/deliveryaddress'], 'post', []); ?>
                    <div id="divdelivery">

                    </div>
                    <div class="col-xs-12" style="padding: 5px">
                        <?= Html::submitButton('Save', ['class' => 'btn blue']) ?></div>
                    <?= Html::endForm(); ?>
                </div>



                <div id="tab_3-3" class="tab-pane <?= $activetab == 3 ? 'active' : '' ?>">
                    <div class="col-xs-6">

                        <?php $form = \yii\bootstrap\ActiveForm::begin(['id' => 'changepassword-form', 'action' => Yii::$app->urlManager->createUrl(['site/overview']), 'method' => 'post']); ?>

                        <?= $form->field($doimatkhau, 'old_password')->passwordInput(['autofocus' => true]) ?>

                        <?= $form->field($doimatkhau, 'password')->passwordInput() ?>

                        <?= $form->field($doimatkhau, 'password_repeat')->passwordInput() ?>

                        <div class="form-group">
                            <?= Html::submitButton('Save', ['id' => 'thaypass-btn', 'class' => 'btn btn-primary', 'name' => 'thay-pass']) ?>
                        </div>

                        <?php \yii\bootstrap\ActiveForm::end(); ?>
                    </div>
                </div>

            </div>
        </div>
    </div>


</div>
<script>
  var dem = 0
  $(document).ready(function () {
    $(document).on('click', '#btn-add-da', function () {
      dem++
      $('#divdelivery').append('<div class="col-xs-6 white-contain clearfix" id=\'div-dad-' + dem + '\'><div class=\'backgroundwhite padding15\'>\n' +
        '                        <h2>Add New Adrress #' + dem + '</h2><a style=\'position: absolute;right: 30px; top: 15px;font-size: 28px\' data-toggle="collapse" data-target="#collap-' + dem + '">-</a><a style=\'position: absolute;right: 15px; top: 15px;font-size: 18px\' class=\'deldil\' vals=\'' + dem + '\'>x</a>\n' +
        '                        <div id=\'collap-' + dem + '\' class="collapse in"><div class="form-group">\n' +
        '                            <label class="control-label">First name</label>\n' +
        '                            <input required=\'required\' type="text" class="form-control" name="delivery[' + dem + '][firstname]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">Surname</label>\n' +
        '                            <input required=\'required\' type="text" class="form-control" name="delivery[' + dem + '][surname]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">Address</label>\n' +
        '                            <input required=\'required\' type="text" class="form-control" name="delivery[' + dem + '][address]" value="">                            <label class="control-label"> </label>\n' +
        '                            <input type="text" class="form-control" name="delivery[' + dem + '][address2]" value="">                        </div>\n' +
		'                        <div class="form-group">\n' +
        '                            <label class="control-label">Street</label>\n' +
        '                            <input  type="text" class="form-control" name="delivery[' + dem + '][street]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">City</label>\n' +
        '                            <input required=\'required\' type="text" class="form-control" name="delivery[' + dem + '][city]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">Postcode</label>\n' +
        '                            <input required=\'required\' type="text" class="form-control" name="delivery[' + dem + '][postcode]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">Country</label>\n' +
        '                            <span class="account-field-content" style="background-color: #f7f7f7;">United Kingdom</span>\n' +
        '                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <label class="control-label">Phone</label>\n' +
        '                            <input type="text" class="form-control" name="delivery[' + dem + '][phone]" value="">                        </div>\n' +
        '                        <div class="form-group">\n' +
        '                            <input type="radio" name="check" id=\'checkss-' + dem + '\' value=\'' + dem + '\'><label class="control-label" for=\'checkss-' + dem + '\'>Set as default delivery address</label>\n' +
        '                        </div>\n' +
        '                    </div></div></div>')
    })
    $(document).on('click', '.deldil', function () {
      var t = $('#div-dad-' + $(this).attr('vals'))
      t.fadeOut('slow', function () {
        t.remove()
      })
    })
    $(document).on('click', '.radiodefault', function () {
      var t = $(this)

      if (confirm('Set this as default?')) {
        $.ajax({
          url: '<?=Yii::$app->urlManager->createUrl(['site/updatedef']);?>',
          type: 'post',
          data: {
            id: t.val()
          },
          success: function (data) {
            alert('Success!')
            window.location.reload()
          }
        })
      }

    })
  })
</script>