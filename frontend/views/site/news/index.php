<?php
/**
 * Created by PhpStorm.
 * User: cilis
 * Date: 03-Jul-17
 * Time: 4:00 PM
 */
/** @var \common\models\News $data */

$this->context->og_type = "article";
$this->context->og_image = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]" . $data->image;
$this->title = $data->title;

$config = \common\models\Configure::getConfig();
$nab = Yii::$app->controller->navbar;
\johnitvn\ajaxcrud\CrudAsset::register($this);
?>
<style>

    .menu-blog, .news-latest {
        margin: 0 0 30px;
        position: relative;
        padding: 20px;
        border: 1px solid #e3e5ec
    }

    .sidebarblog-title h2 {
        font-size: 18px;
        text-transform: uppercase;
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid #000;
        text-align: center
    }

    .sidebarblog-title h2 span {
        display: none
    }

    .list-news-latest .item-article {
        border-bottom: 1px #efefef dotted;
        padding: 15px 0;
        margin: 0
    }

    .list-news-latest .item-article:last-child {
        border-bottom: none
    }

    .list-news-latest .item-article .post-image {
        width: 30%;
        float: left;
        position: relative
    }

    .list-news-latest .item-article .post-content {
        width: 70%;
        float: left;
        padding-left: 10px
    }

    .list-news-latest .item-article .post-content h3 {
        margin: 0 0 5px;
        font-size: 14px
    }

    .list-news-latest .item-article .post-content span.author {
        font-size: 12px
    }

    .menuList-links {
        margin: 0;
        list-style: none;
    }

    .menuList-links li {
        position: relative
    }

    .menuList-links li a {
        position: relative;
        font-size: 13px;
        display: block
    }

    .menuList-links > li {
        border-bottom: 1px dashed #e7e7e7
    }

    .menuList-links > li:last-child {
        border-bottom: none
    }

    .menuList-links > li > a {
        color: #272727;
        padding: 12px 0;
        font-weight: 500;
        font-size: 14px
    }

    .menuList-links > li.has-submenu > a {
        padding-right: 30px
    }

    .menuList-links > li.has-submenu span.icon-plus-submenu {
        width: 25px;
        height: 25px;
        cursor: pointer;
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        margin: auto;
        border: 1px solid transparent
    }

    .cmu_tags a {
        background: #85c8ea;
        border-radius: 3px 0 0 3px;
        color: #fff !important;
        display: inline-block !important;
        height: 26px;
        float: left;
        line-height: 26px;
        padding: 0 30px 0 10px;
        position: relative;
        margin: 0 3px 3px 0;
        text-decoration: none;
        -webkit-transition: color 0.2s;
    }
    .cmu_tags a::before {
        background: #fff;
        border-radius: 10px;
        box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
        content: '';
        height: 6px;
        right: 13px;
        position: absolute;
        width: 6px;
        top: 10px;
    }
    .cmu_tags a::after {
        background: #fff;
        border-bottom: 13px solid transparent;
        border-left: 10px solid #85c8ea;
        border-top: 13px solid transparent;
        content: '';
        position: absolute;
        right: 0;
        top: 0;
    }
    .myframe{
        height: 100vh;
    }
</style>
<div class="news-container">
    <div class="content-product">
        <div class="header-navigate">
            <div class="container">

            </div>
        </div>

        <div class="container">
            <div class="col-xs-12 ">


                <div class="row">
                    <div class="col-md-3 hidden-sm hidden-xs">
                        <div class="sidebar-blog">


                            <div class="news-latest  clearfix">
                                <div class="sidebarblog-title title_block">
                                    <h2>Bài viết mới nhất<span class="fa fa-angle-down"></span></h2>
                                </div>
                                <div class="list-news-latest layered">
                                    <?php foreach ($related as $value):/** @var \common\models\News $value */ ?>
                                        <div class="item-article clearfix abc">

                                            <div class="post-image">
                                                <a title="<?= Yii::$app->urlManager->createUrl(['site/news', 'catname' => $value->catNew->url, 'url' => $value->url, 'id' => $value->id]) ?>" href="<?= Yii::$app->urlManager->createUrl(['site/news', 'catname' => $value->catNew->url, 'url' => $value->url, 'id' => $value->id]) ?>"><img
                                                            src="<?=Yii::$app->urlManager->baseUrl.$value->image?>"
                                                            alt="<?=$value->title?>"></a>
                                            </div>

                                            <div class="post-content">
                                                <h3>
                                                    <a title="<?=$value->title?>" href="<?= Yii::$app->urlManager->createUrl(['site/news', 'catname' => $value->catNew->url, 'url' => $value->url, 'id' => $value->id]) ?>"><?= $value->title ?></a>
                                                </h3>

                                                <span class="date">
                                                <?=$value->posted_date?>
									            </span>
                                            </div>
                                        </div>

                                    <?php endforeach; ?>

                                </div>
                            </div>


                            <div class="menu-blog">
                                <div class="group-menu">
                                    <div class="sidebarblog-title title_block">
                                        <h2>Danh mục website<span class="fa fa-angle-down"></span></h2>
                                    </div>
                                    <div class="layered-category">
                                        <ul class="menuList-links">
                                            <?php
                                            $menus = \common\models\Menu::getRootMenu('top');
                                            if (isset($menus)):
                                                foreach ($menus as $menu):
                                                    $submenus = $menu->getChilds();
                                                    echo '<li '.((count($submenus) != 0)?"class='has-submenu level0'":"").'><a 
                                                    href="' . ((substr($menu->link, 0, 4) != "http") ? Yii::$app->urlManager->baseUrl . $menu->link: $menu->link ) . '" 
                                                    
                                                    '.(($menu->new_tab) ? "target='_blank'":"") .'
                                                    >' . $menu->name .((count($submenus) != 0)?"<span
                                                            class=\"icon-plus-submenu plus-nClick1\"></span>":"").'</a>';

                                                    if (count($submenus) != 0):
                                                       echo '  <ul class="submenu-links" style="display: none;">';
                                                        foreach ($submenus as $submenu):
                                                            echo '<li><a '.(($submenu->new_tab) ? "target='_blank'":"") .' href="' . ((substr($submenu->link, 0, 4) != "http") ? Yii::$app->urlManager->baseUrl . $submenu->link: $submenu->link ) . '">' . $submenu->name . '</a></li>';
                                                        endforeach;
                                                       echo "</ul>";
                                                    endif;
                                                    echo '</li>';
                                                endforeach;
                                            endif;
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="col-md-9">
                        <ul class="breadcrumb breadcrumb-title">
                            <?= $nab ?>
                        </ul>
                        <div class="clearfix"></div>
                        <h1><strong><?php echo $data->title; ?></strong></h1>
                        <p class="info-created-at-article">
                            <i class="fa fa-calendar"></i>
                            Ngày đăng <?= $data->posted_date ?>
                            <span>
						    <i class="fa fa-eye"></i>
                            <?= $data->luotxem ?> Lượt xem</span>
                        </p>
                        <?php if(!is_null($data->tags) && !empty($data->tags)): ?>
                        <div class="cmu_tags" style="margin: 10px 0 ">
                            <?php foreach (explode(',',$data->tags) as $value):?>
                                <a href="<?=Yii::$app->urlManager->createUrl(['site/tag','type'=>'tags','value'=>urlencode($value)])?>"><?=$value?></a>
                            <?php endforeach;?>
                            <div class="clearfix"></div>
                        </div>
                        <?php endif;?>
                        <div class="fb-like"
                             data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                             data-layout="standard" data-action="like" data-size="large" data-show-faces="true"
                             data-share="true"></div>
                        <div class="info-description-article clearfix">
                            <?php echo $data->content; ?>

                        </div>

                        <div class="fb-like"
                             data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                             data-layout="standard" data-action="like" data-size="large" data-show-faces="true"
                             data-share="true"></div>
                        <div class="fb-comments"
                             data-href="<?php echo (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                             data-numposts="5" data-width="100%"></div>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>