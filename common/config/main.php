<?php
require(__DIR__ . '/../components/func.php');

require(__DIR__ . '/../components/recaptchalib.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/DomPurifyAsset.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/FileInput.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/FileInputAsset.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/FileInputThemeAsset.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/PiExifAsset.php');
require(__DIR__ . '/../components/yii2-widget-fileinput/SortableAsset.php');
require(__DIR__ . '/../components/Mobile_Detect.php');

return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules' => [
        'auth' => [
            'class' => 'common\modules\auth\Module',
        ],

    ],

    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],

        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],


    ],
];
