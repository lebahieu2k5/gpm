<?php

/* @var $this yii\web\View */
use yii\helpers\Url;
use yii\helpers\Html;
use yii\bootstrap\Modal;
use kartik\grid\GridView;
use johnitvn\ajaxcrud\CrudAsset;
use johnitvn\ajaxcrud\BulkButtonWidget;
CrudAsset::register($this);
$this->title = 'Bảng quản trị';
?>
<style>
    .btn-update-status{
        display: block;
        width: 200px;
        margin: 5px;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <p class="alert alert-success">Đơn hàng</p>
    </div>
</div>
<div class="billmobile-index">
    <div id="ajaxCrudDatatable">
        <?=GridView::widget([
            'id'=>'crud-datatable',
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'pjax'=>true,
            'columns' => require(__DIR__.'/_columns.php'),
            'toolbar'=> [
                ['content'=>

                    Html::a('<i class="glyphicon glyphicon-repeat"></i>', [''],
                        ['data-pjax'=>1, 'class'=>'btn btn-default', 'title'=>'Reset Grid']).
                    '{toggleData}'.
                    '{export}'
                ],
            ],
            'striped' => true,
            'condensed' => true,
            'responsive' => true,
            'panel' => [
                'type' => 'primary',
                'heading' => '<i class="glyphicon glyphicon-list"></i> Billmobiles listing',
                'before'=>'<em>* Resize table columns just like a spreadsheet by dragging the column edges.</em>',
                'after'=>
                    '<div class="clearfix"></div>',
            ]
        ])?>
    </div>
</div>
<?php Modal::begin([
    "id"=>"ajaxCrudModal",
    'size'=>'modal-full',
    "footer"=>"",// always need it for jquery plugin
])?>
<?php Modal::end(); ?>
<script>
    $(document).ready(function () {
        $(document).on('click','.btn-update-status',function(){
            var self = $(this);
            $.ajax({
                url:"<?=Yii::$app->urlManager->createUrl(['billmobile/updatestatus'])?>",
                type:'post',
                dataType:'json',
                data:{
                    id:self.attr('vals'),
                    type: self.attr('types')
                },
                complete: function () {
                    $.pjax.reload({container: '#crud-datatable-pjax'});
                }
            })
        })
    })
</script>
<div class="row">
    <div class="col-md-12">
        <p class="alert alert-success">Liên hệ tư vấn</p>
    </div>
</div>
<div class="lienhetuvan-index">
    <div id="ajaxCrudDatatable">
        <?=GridView::widget([
            'id'=>'crud-datatable',
            'dataProvider' => $dataProviderlh,
            'filterModel' => $searchModellh,
            'pjax'=>true,
            'columns' => require(__DIR__.'/_columns2.php'),
            'toolbar'=> [
                ['content'=>

                    Html::a('<i class="glyphicon glyphicon-repeat"></i>', [''],
                        ['data-pjax'=>1, 'class'=>'btn btn-default', 'title'=>'Reset Grid']).
                    '{toggleData}'.
                    '{export}'
                ],
            ],
            'striped' => true,
            'condensed' => true,
            'responsive' => true,
            'panel' => [
                'type' => 'primary',
                'heading' => '<i class="glyphicon glyphicon-list"></i> Liên hệ tư vấn listing',
                'before'=>'<em>* Resize table columns just like a spreadsheet by dragging the column edges.</em>',
                'after'=>BulkButtonWidget::widget([
                        'buttons'=>Html::a('<i class="glyphicon glyphicon-trash"></i>&nbsp; Delete All',
                            ["bulkdelete"] ,
                            [
                                "class"=>"btn btn-danger btn-xs",
                                'role'=>'modal-remote-bulk',
                                'data-confirm'=>false, 'data-method'=>false,// for overide yii data api
                                'data-request-method'=>'post',
                                'data-confirm-title'=>'Are you sure?',
                                'data-confirm-message'=>'Are you sure want to delete this item'
                            ]),
                    ]).
                    '<div class="clearfix"></div>',
            ]
        ])?>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="input-group input-large date-picker input-daterange" data-date-format="dd/mm/yyyy">
            <input id="from" type="text" class="form-control" name="from">
            <span class="input-group-addon"> to </span>
            <input id="to" type="text" class="form-control" name="to">
        </div>
        <!-- /input-group -->
        <span class="help-block">Select date range <button class="btn btn-warning" id="loc">Lọc</button></span>

    </div>
</div>
<div id="result">
    <?=Yii::$app->controller->renderPartial('baocao',['label'=>'All the time'])?>
</div>
<script>
    $(document).ready(function () {
        $('.date-picker').datepicker({
            orientation: "left",
            altFormat : 'dd/mm/yy',
            autoclose: true
        });
       $(document).on('click','#loc',function () {
           var from = $("#from");
           var to = $("#to");
           if(from.val()==="" || to.val()===""){
               Swal.fire('Bạn chưa chọn khoảng thời gian báo cáo!', 'Vui lòng chọn lại.', 'warning');
           }else
           {
               $.ajax({
                   url:"<?=Yii::$app->urlManager->createUrl(['site/baocao'])?>",
                   data:{
                       from: from.val(),
                       to:to.val()
                   },
                   type:'post',
                   dataType:'json',
                   success:function(data){
                       if(data.status==="success"){
                           $("#result").html(data.htmlContain);
                       }else{
                           $("#result").html("Có lỗi xảy ra");
                       }

                    }
               })
           }
       })
    })
</script>
