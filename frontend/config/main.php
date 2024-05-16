<?php

use \yii\web\Request;
$request = new Request();
$baseUrl = str_replace('/frontend/web','',$request->baseUrl);
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php'),
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],

    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'cookieValidationKey' => '[XQV155EvgFTfLJ6GrJHV]',
            'csrfParam' => '_csrf-frontend',
            'baseUrl' => $baseUrl,
        ],

        'assetManager' => [
            'bundles' => [
                'yii\web\JqueryAsset' => [
                    'sourcePath' => null,   // do not publish the bundle
                    'js' => [ ]
                ],
                'yii\bootstrap\BootstrapAsset' => FALSE,
                'kartik\grid\GridViewAsset' => FALSE,

                'yii\bootstrap\BootstrapPluginAsset' => FALSE,
            ]
        ],

        'user' => [
            'identityClass' => 'common\models\User',
//            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_frontendUser', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'PHPFRONTSESSID',
            'savePath' => sys_get_temp_dir(),
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'baseUrl' => $baseUrl,
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'suffix'=>'.html',
            'rules' => [
                '' => 'site/index',
                '<catname>/<url>-n<id:\d+>'=>'site/news',//xem tin tuc siteController/ actionNews
                '<catname>-l<id:\d+>'=>'site/listnews',//danh mucục tin tuc cua category cu the
                '<name>-g<id:\d+>'=>'site/listgroup',
                '<path>-p<id:\d+>'=>'product/product',//danh sach san pham productController/actionProduct => product/product?path=xxxx&id=xxxxx => qua lam dep url=>xxxx-pxxxx.html
                '<path>-cl<id:\d+>'=>'site/catlist',//danh muc category cuaâ tin tuưcức
                '<path>-br<id:\d+>'=>'site/brand',
                '<path>-s<id:\d+>'=>'product/detailproduct',//chi tiet san pham
                '<title>-b<id:\d+>'=>'site/page',
                '<s>-hoang<id:\d+>'=>'site/hoang',
                '<title>-v<id:\d+>'=>'site/viewviec',
                '<type>-tg<value:\d+>'=>'site/tag',
                '<url>-ld<id:\d+>'=>'site/landingpage',
                '<url>-getlanding<id:\d+>'=>'site/getlanding',
                'xac-thuc-v<id:\d+>'=>'site/userverify',
                'error'=>'site/error',
                'lien-he' => 'site/contact',
                'dien-thoai-4G' => 'site/dienthoai',
                'gioi-thieu' => 'site/about',
                'account' => 'site/overview',
                'dang-ky' => 'site/signup',
                'thanhcong' => 'site/success',
                'dang-nhap' => 'site/login',
                'thanh-toan'=>'product/payment',
                'dat-hang-thanh-cong'=>'product/done',
                'dat-hang-khong-thanh-cong'=>'product/fail',
                'addtocart'=>'product/addtocart',
                'cart'=>'product/giohang',
                'tim-kiem'=>'site/search',
                'xacthucthanhcong'=>'site/xacthucdone',

                'action-delete'=>'product/xoagiohang',
                '<controller:\w+>/<action:\w+>/' => '<controller>/<action>',
            ],
        ],

    ],
//	'on beforeRequest' => function ($event) {
//        if(!Yii::$app->request->isSecureConnection){
//            $url = Yii::$app->request->getAbsoluteUrl();
//            $url = str_replace('http:', 'https:', $url);
//            Yii::$app->getResponse()->redirect($url);
//            Yii::$app->end();
//        }
//    },
    'params' => $params,
];
