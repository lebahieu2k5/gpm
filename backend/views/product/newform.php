<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model common\models\Product */
/* @var $form yii\widgets\ActiveForm */
?>
<?php
\johnitvn\ajaxcrud\CrudAsset::register($this);
$this->title = 'Thêm mới sản phẩm';
$this->params['breadcrumbs'][] = ['name' => 'Sản phẩm', 'link' => 'javascript:void(0)'];
$a = \common\models\Catproduct::getListCat();
$escape = new \yii\web\JsExpression("function(m){ return m;}");
$thongsos = \common\models\Properties::find()->all();
?>
<div class="product-form">
    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <div class="form-group">

        <?php if (!Yii::$app->request->isAjax) { ?>
            <div class="form-group">
                <?= Html::submitButton($model->isNewRecord ? 'Lưu lại' : 'Cập nhật', ['id' => 'btn-luu', 'class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        <?php } ?>
    </div>
    <div style="padding-bottom: 20px">
        <ul class="nav nav-tabs">
            <li style="padding-left: 12px" class="active"><a href="#tab1" data-toggle="tab">Thông tin cơ bản</a></li>
           <!-- <li><a href="#tab2" data-toggle="tab">Chi tiết thuộc tính sản phẩm</a></li>-->
        </ul>
    </div>

    <div class="tab-content">
        <div class="content-form tab-pane fade in active" id="tab1">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <?= $form->field($model, 'name')->textInput(['maxlength' => true])->label(func::generate_sup_script($model,'name',"Tên hiển thị của sản phẩm")) ?>
                        </div>
                        <div class="col-xs-4">
                            <?= $form->field($model, 'sale')->textInput()->label(func::generate_sup_script($model,'sale',"Giá bán hiển thị của sản phẩm")) ?>
                        </div>

                        <div class="col-xs-2">
                            <?= $form->field($model, 'retail')->textInput()->label(func::generate_sup_script($model,'retail',"Giá gốc hiển thị của sản phẩm, nếu giá bán thấp hơn giá gốc sẽ được biểu diễn dưới dạng giảm giá")) ?>
                        </div>

                        <div class="col-xs-2">
                            <?= $form->field($model, 'code')->numberInput() ?>
                        </div>
                        <script>
                            $(document).ready(function(){
                                $("#product-sale").inputmask("decimal",{
                                    radixPoint:".",
                                    groupSeparator: ",",
                                    digits: 0,
                                    autoGroup: true,
                                    suffix: ' VNĐ'
                                });
                                $("#product-retail").inputmask("decimal",{
                                    radixPoint:".",
                                    groupSeparator: ",",
                                    digits: 0,
                                    autoGroup: true,
                                    suffix: ' VNĐ'
                                });
                            });
                        </script>

                    </div>



                    <div class="row">
                        <div class="col-xs-6">
                            <?= $form->field($model, 'cat_product_id',[])->widget(\kartik\select2\Select2::className(), [
                                'data' => $a,
                                'language' => 'vi',
                                'options' => ['placeholder' => 'Chọn loại sản phẩm ...'],

                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                                'pluginEvents'=>[
                                    "select2:select" => "function(){selectchange($(this).val());}"
                                ]
                            ]);
                            ?>
                        </div>
                        <div class="col-xs-6">
                            <?= $form->field($model, 'brand_id')->widget(\kartik\select2\Select2::className(), [
                                'data' => \yii\helpers\ArrayHelper::map(\common\models\Brand::find()->all(), 'id', 'name'),
                                'language' => 'vi',
                                'options' => ['placeholder' => 'Chọn thương hiệu ...'],
                                'pluginOptions' => [
                                    'allowClear' => true,
                                ],
                            ]);
                            ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-3">
                            <?= $form->field($model, 'status')->dropDownList([0=>'Còn hàng',1=>'Hết hàng']) ?>
                        </div>
                        <div class="col-xs-3">
                            <?= $form->field($model, 'active')->checkbox() ?>
                        </div>
                        <div class="col-xs-3">
                            <?= $form->field($model, 'home')->checkbox() ?>
                        </div>
                        <div class="col-xs-3">
                            <?= $form->field($model, 'hot')->checkbox() ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <?= $form->field($model, 'seo_title')->textInput(); ?>
                        </div>
                        <div class="col-xs-6">
                            <?= $form->field($model, 'seo_keyword')->textInput() ?>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <?= $form->field($model, 'seo_desc')->textInput(); ?>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-xs-6 hidden">
                            <?= $form->field($model, 'tag')->textInput()->label(func::generate_sup_script($model,'tag',"Note ngắn hiển thị trên sản phẩm"))  ?>
                        </div>
                        <div class="col-xs-6">
                            <?= $form->field($model, 'tags')->textInput() ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 hidden">
                            <?= $form->field($model, 'philapdat')->textarea(['id'=>'thongdiep'])->label(func::generate_sup_script($model,'philapdat',"Note ngắn hiển thị trên sản phẩm"))?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 hidden">
                            <?= $form->field($model, 'cuphap')->textarea(['id'=>'cuphap'])->label(func::generate_sup_script($model,'cuphap',"")) ; ?>
                        </div>
                        <div class="col-xs-12 hidden">
                            <?= $form->field($model, 'kieuthanhtoan')->textarea(['id'=>'camket'])->label(func::generate_sup_script($model,'kieuthanhtoan',"")); ?>
                        </div>
                        <div class="col-xs-12">
                            <?= $form->field($model, 'brief')->textarea(['id' => 'brief']) ?>
                        </div>
                        <div class="col-xs-12">
                            <?= $form->field($model, 'decription')->textarea(['id' => 'noidung']) ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <?= Html::label('Ảnh sản phẩm', 'upload-anh') ?>
                            <?= FileInput::widget([
                                'name' => 'images[]',
                                'pluginOptions' =>
                                    [
                                        'allowedFileExtensions' => ['jpg', 'png'],
                                        'showUpload' => false,
                                        'removeOptions' => ['label' => true],
                                    ],

                                'options' => ['multiple' => true, 'id' => 'upload']
                            ]);
                            ?>
                            <?php if (!$model->isNewRecord): ?>
                                <?php
                                foreach ($model->anhsanphams as $hinhanh) {
                                    ?>
                                    <div class="product-img">
                                        <div class="image-dele">
                                            <a href="<?= Yii::$app->urlManager->createUrl(['product/xoaanh', 'idhinhanh' => $hinhanh->id]) ?>"
                                               class="close-img-dele">
                                                <i class="fa fa-times" aria-hidden="true"></i>
                                            </a>
                                            <img src="<?= Yii::$app->urlManagerFrontend->baseUrl. $hinhanh->image ?>">
                                        </div>
                                        <label class="label-default-img">
                                            <?= Html::radio('default', $hinhanh->default, ['id' => $hinhanh->id, 'class' => 'radio-img']) ?>
                                            <strong>Mặc định</strong>
                                        </label>
                                    </div>
                                    <?php
                                }
                            endif;
                            ?>
                        </div>
                    </div>

                </div>


            </div>
        </div>
        <div class="tab-pane fade" id="tab2">
           <span class="label label-danger">Chưa chọn danh mục sản phẩm</span>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>

<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');
$now = getdate();
$nowfullstring = $now["mday"]."/".$now["mon"]."/".$now["year"];
?>
<script>
    $(document).ready(function () {
        $('#product-tags').tagsInput({
            width: '100%',
            'onAddTag': function () {
                //alert(1);
            }
        });
        CKEDITOR.replace('noidung', {
            language: 'vi',
            filebrowserBrowseUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020".sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserUploadUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserImageBrowseUrl :'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=1&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr='
        });

        CKEDITOR.replace('thongdiep', {
            language: 'vi',
            filebrowserBrowseUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020".sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserUploadUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserImageBrowseUrl :'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=1&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr='
        });
        CKEDITOR.replace('cuphap', {
            language: 'vi',
            filebrowserBrowseUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020".sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserUploadUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserImageBrowseUrl :'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=1&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr='
        });
        CKEDITOR.replace('camket', {
            language: 'vi',
            filebrowserBrowseUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020".sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserUploadUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserImageBrowseUrl :'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=1&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr='
        });
        CKEDITOR.replace('brief', {
            language: 'vi',
            filebrowserBrowseUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020".sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserUploadUrl:'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=2&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr=',
            filebrowserImageBrowseUrl :'/2595fcc932fcbc933591f65b0927f6ad/responsive_filemanager/filemanager/dialog.php?type=1&akey=<?=sha1("Karion3e0d56c94e15c78d3fe012bc33aba5252020" . sha1($nowfullstring))?>&editor=ckeditor&fldr='

        });

    })

</script>