<?php

use yii\helpers\Url;

return [
    [
        'class' => 'kartik\grid\CheckboxColumn',
        'width' => '20px',
    ],
    [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '30px',
    ],
    // [
    // 'class'=>'\kartik\grid\DataColumn',
    // 'attribute'=>'id',
    // ],
//    [
//        'class'=>'\kartik\grid\DataColumn',
//        'attribute'=>'code',
//    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'image',
        'contentOptions' => ['class' => 'text-center'],
        'headerOptions' => ['style' => 'width:100px', 'class' => 'text-center'],
        'value' => function ($data) {
            return \yii\bootstrap\Html::img(Yii::$app->urlManagerFrontend->baseUrl . $data->getDefaultImage(), ['width' => '40px']);
        },
        'format' => 'raw'
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'name',
        'headerOptions' => ['style' => 'text-align:center'],
        'value' => function ($data) {
            return \yii\bootstrap\Html::a($data->name, Yii::$app->urlManagerFrontend->createUrl(['product/detailproduct', 'path' => $data->url, 'id' => $data->id]), ['target' => '_blank', 'data-pjax' => "0"]);
        },
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],


    ],
//    [
//        'class'=>'\kartik\grid\DataColumn',
//        'attribute'=>'url',
//    ],

//    [
//        'class'=>'\kartik\grid\DataColumn',
//        'attribute'=>'brief',
//    ],
//    [
//        'class'=>'\kartik\grid\DataColumn',
//        'attribute'=>'decription',
//    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'retail',
        'value' => function ($data) {
            /** @var $data \common\models\Product */
            return number_format($data->retail, 0, '', '.') . ' VNĐ';
        },
        'headerOptions' => ['style' => 'text-align:center'],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'sale',
        'value' => function ($data) {
            /** @var $data \common\models\Product */
            return number_format($data->sale, 0, '', '.') . ' VNĐ';
        },
        'headerOptions' => ['style' => 'text-align:center'],
    ],
    [

        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'cat_product_id',
        'value' => function ($model, $key, $index, $widget) {
            /** @var \common\models\Product $model */
            if(!is_null($model->catProduct)){
                return $model->catProduct->name;
            }
            return "Khong co";
        },
        'group' => true,
        'groupedRow' => true,                    // move grouped column to a single grouped row
        'groupOddCssClass' => 'kv-grouped-row',  // configure odd group cell css class
        'groupEvenCssClass' => 'kv-grouped-row',
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'cat_product_id',
        'value' => function ($model) {
            /** @var  $model \common\models\Product */
            if(!is_null($model->catProduct)){
                return $model->catProduct->name;
            }
            return "Khong co";
        },
        'filterType' => \kartik\grid\GridView::FILTER_SELECT2,
        'filter' => \common\models\Catproduct::getListCat(),
        'filterWidgetOptions' => [
            'pluginOptions' => ['allowClear' => true],
        ],
        'filterInputOptions' => ['prompt' => 'Hiển thị tất cả'],
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'status',
        'value' => function ($model) {
            return [1 => '<span class="label label-danger">Hết hàng</span>', 0 => '<span class="label label-success">Còn hàng'][$model->status];
        },
        'filter' => \yii\helpers\Html::activeDropDownList(
            $searchModel, 'status',
            [1 => 'Hết hàng', 0 => 'Còn hàng'],
            ['prompt' => 'All', 'class' => 'form-control']
        ),
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],
        'contentOptions' => ['style' => 'text-align:center'],
    ],
//    [
//        'class' => '\kartik\grid\DataColumn',
//        'attribute' => 'code',
//    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'home',

        'value' => function ($data) {
            return ($data->home == 1) ? "<a control='product' vals=" . $data->id . " class=\"home-change glyphicon glyphicon-ok text-success\"></a>" : "<a control='product' vals=" . $data->id . " class=\"home-change glyphicon glyphicon-remove text-danger\"></a>";
        },

        'filter' => \yii\helpers\Html::activeDropDownList(
            $searchModel, 'home',
            ['1' => 'Có', '0' => 'Không'],
            ['prompt' => 'All', 'class' => 'form-control']
        ),
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],
        'contentOptions' => ['style' => 'text-align:center'],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'active',

        'value' => function ($data) {
            return ($data->active == 1) ? "<a control='product' vals=" . $data->id . " class=\"active-change glyphicon glyphicon-ok text-success\"></a>" : "<a control='product' vals=" . $data->id . " class=\"active-change glyphicon glyphicon-remove text-danger\"></a>";
        },

        'filter' => \yii\helpers\Html::activeDropDownList(
            $searchModel, 'active',
            ['1' => 'Có', '0' => 'Không'],
            ['prompt' => 'All', 'class' => 'form-control']
        ),
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],
        'contentOptions' => ['style' => 'text-align:center'],
    ],
//
//    // [
//    // 'class'=>'\kartik\grid\DataColumn',
//    // 'attribute'=>'luotxem',
//    // ],
//    [
//        'class' => '\kartik\grid\DataColumn',
//        'attribute' => 'active',
//        'value' => function ($data) {
//            return ($data->active == 1) ? "<a control='product' vals=" . $data->id . " class=\"active-change glyphicon glyphicon-ok text-success\"></a>" : "<a control='product' vals=" . $data->id . " class=\"active-change glyphicon glyphicon-remove text-danger\"></a>";
//        },
//        'filter' => \yii\helpers\Html::activeDropDownList(
//            $searchModel, 'active',
//            ['1' => 'Có', '0' => 'Không'],
//            ['prompt' => 'All', 'class' => 'form-control']
//        ),
//        'format' => 'raw',
//        'headerOptions' => ['style' => 'text-align:center; width:100px'],
//        'contentOptions' => ['style' => 'text-align:center'],
//    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'attribute' => 'hot',
        'value' => function ($data) {
            return ($data->hot == 1) ? "<a control='product' vals=" . $data->id . " class=\"hot-change glyphicon glyphicon-ok text-success\"></a>" : "<a control='product' vals=" . $data->id . " class=\"hot-change glyphicon glyphicon-remove text-danger\"></a>";
        },

        'filter' => \yii\helpers\Html::activeDropDownList(
            $searchModel, 'hot',
            ['1' => 'Có', '0' => 'Không'],
            ['prompt' => 'All', 'class' => 'form-control']
        ),
        'format' => 'raw',
        'headerOptions' => ['style' => 'text-align:center'],
        'contentOptions' => ['style' => 'text-align:center'],
    ],
//    [
//        'class' => '\kartik\grid\DataColumn',
//        'label' => 'Phiên bản',
//        'value' => function ($model) {
//            return Yii::$app->controller->renderPartial('getproperties', ['model' => $model]);
//        },
//        'format' => 'raw'
//    ],
//    [
//        'class' => '\kartik\grid\DataColumn',
//        'attribute' => 'new',
//        'value' => function ($data) {
//            return ($data->new == 1) ? "<a control='product' vals=" . $data->id . " class=\"new-change glyphicon glyphicon-ok text-success\"></a>" : "<a control='product' vals=" . $data->id . " class=\"new-change glyphicon glyphicon-remove text-danger\"></a>";
//        },
//
//        'filter' => \yii\helpers\Html::activeDropDownList(
//            $searchModel, 'new',
//            ['1' => 'Có', '0' => 'Không'],
//            ['prompt' => 'All', 'class' => 'form-control']
//        ),
//        'format' => 'raw',
//        'headerOptions' => ['style' => 'text-align:center; width:100px'],
//        'contentOptions' => ['style' => 'text-align:center'],
//    ],
    // [
    // 'class'=>'\kartik\grid\DataColumn',
    // 'attribute'=>'seo_title',
    // ],
    // [
    // 'class'=>'\kartik\grid\DataColumn',
    // 'attribute'=>'seo_desc',
    // ],
    // [
    // 'class'=>'\kartik\grid\DataColumn',
    // 'attribute'=>'seo_keyword',
    // ],

    [
        'class' => '\kartik\grid\DataColumn',
        'value' => function ($model) {
            return '<a href="/admin/product/copy?id='.$model->id.'" title="Copy to new clone"  role="modal-remote" data-toggle="tooltip"><span class="glyphicon glyphicon-copy"></span></a>';
        },
        'format'=>'raw'
    ],
    [
        'class' => 'kartik\grid\ActionColumn',
        'dropdown' => false,
        'vAlign' => 'middle',
        'urlCreator' => function ($action, $model, $key, $index) {
            return Url::to([$action, 'id' => $key]);
        },
        'viewOptions' => ['role' => 'modal-remote', 'title' => 'View', 'data-toggle' => 'tooltip'],
        'updateOptions' => ['title' => 'Update', 'data-toggle' => 'tooltip', 'target' => '_blank'],
        'deleteOptions' => ['role' => 'modal-remote', 'title' => 'Delete',
            'data-confirm' => false, 'data-method' => false,// for overide yii data api
            'data-request-method' => 'post',
            'data-toggle' => 'tooltip',
            'data-confirm-title' => 'Are you sure?',
            'data-confirm-message' => 'Are you sure want to delete this item'],

    ],

];   