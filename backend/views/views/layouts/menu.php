<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200"
    xmlns="http://www.w3.org/1999/html">
    <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
    <li class="sidebar-toggler-wrapper">
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler">
        </div>
        <!-- END SIDEBAR TOGGLER BUTTON -->
    </li>
    <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
    <li class="<?php if(Yii::$app->controller->id=='site') echo 'open'?>">
        <a href="<?=Yii::$app->urlManager->baseUrl?>">
            <i class="icon-home"></i>
            <span class="title">Bảng tin</span>
        </a>
    </li>

    <?php if(Yii::$app->user->can('news/index')): ?>
    <li class="<?php if(Yii::$app->controller->id=='news' || Yii::$app->controller->id=='catnew'||Yii::$app->controller->id=='page') echo 'open'?>">
        <a href="javascript:;">
            <i class="icon-pencil"></i>
            <span class="title">Quản lý tin tức</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu" <?php if(Yii::$app->controller->id=='news' || Yii::$app->controller->id=='catnew'|| Yii::$app->controller->id=='page') echo 'style="display:block"'?>>
            <?php if(Yii::$app->user->can('catnew/index')): ?>
            <li  class="<?php if(Yii::$app->controller->id=='catnew') echo 'active'?>">
                <a href="<?php echo Yii::$app->urlManager->createUrl('catnew')?>">
                    <i class="icon-bar-chart"></i>
                    Chuyên mục tin tức</a>
            </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('news/index')): ?>
            <li class="<?php if(Yii::$app->controller->id=='news') echo 'active'?>">
                <a href="<?php echo Yii::$app->urlManager->createUrl('news')?>">
                    <i class="icon-bulb"></i>
                    Quản lý tin tức</a>
            </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('page/index')): ?>
            <li class="<?php if(Yii::$app->controller->id=='page') echo 'active'?>">
                <a href="<?php echo Yii::$app->urlManager->createUrl('page')?>">
                    <i class="icon-bulb"></i>
                    Trang</a>
            </li>
            <?php endif;?>
        </ul>
    </li>
    <?php endif;?>

    <?php if(
            Yii::$app->user->can('product/index')||
            Yii::$app->user->can('catproduct/index')||
            Yii::$app->user->can('brand/index')||
            Yii::$app->user->can('loaithuoctinh/index')||
            Yii::$app->user->can('thuoctinh/index')
    ): ?>
        <li class="<?php if(Yii::$app->controller->id=='product' ||
            Yii::$app->controller->id=='catproduct'||
            Yii::$app->controller->id=='brand'||
            Yii::$app->controller->id=='loaithuoctinh'||
            Yii::$app->controller->id=='thuoctinh'
        ) echo 'open'?>">
            <a href="javascript:;">
                <i class="icon-pencil"></i>
                <span class="title">Quản lý sản phẩm</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu" <?php if(Yii::$app->controller->id=='product' ||
                Yii::$app->controller->id=='catproduct'||
                Yii::$app->controller->id=='brand'||
                Yii::$app->controller->id=='loaithuoctinh'||
                Yii::$app->controller->id=='thuoctinh'
            ) echo 'style="display:block"'?>>
                <li class="<?php if(Yii::$app->controller->id=='brand') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('brand')?>">
                        <i class="icon-bulb"></i>
                        Quản lý thương hiệu</a>
                </li>
                <li class="<?php if(Yii::$app->controller->id=='loaithuoctinh') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('loaithuoctinh')?>">
                        <i class="icon-bulb"></i>
                        Loại thuộc tính sản phẩm</a>
                </li>
                <li class="<?php if(Yii::$app->controller->id=='thuoctinh') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('thuoctinh')?>">
                        <i class="icon-bulb"></i>
                        Thuộc tính sản phẩm</a>
                </li>
                <li  class="<?php if(Yii::$app->controller->id=='catproduct') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('catproduct/cattree')?>">
                        <i class="icon-bar-chart"></i>
                        Danh mục sản phẩm</a>
                </li>
                <li class="<?php if(Yii::$app->controller->id=='product') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('product')?>">
                        <i class="icon-bulb"></i>
                        Quản lý sản phẩm</a>
                </li>

            </ul>
        </li>
    <?php endif;?>

    <li class="hidden <?php if(
        Yii::$app->controller->id=='contact'||
        Yii::$app->controller->id=='lienhetuvan'
    ) echo 'open'?>">
        <a href="javascript:;">
            <i class="icon-pencil"></i>
            <span class="title">Quản lý khách hàng</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu" <?php if(
            Yii::$app->controller->id=='contact'||
            Yii::$app->controller->id=='lienhetuvan'
        ) echo 'style="display:block"'?>>
            <?php if(Yii::$app->user->can('contact/index')): ?>
                <li class="<?php if(Yii::$app->controller->id=='contact') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('contact')?>">
                        <i class="fa fa-users"></i>
                        <span class="title">Tracing Khách hàng</span>
                    </a>
                </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('lienhetuvan/index')): ?>
                <li class="<?php if(Yii::$app->controller->id=='lienhetuvan') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('lienhetuvan')?>">
                        <i class="fa fa-dribbble"></i>
                        <span class="title">Khách hàng liên hệ tư vấn</span>
                    </a>
                </li>
            <?php endif;?>
        </ul>
    </li>
    <?php if(Yii::$app->user->can('billmobile/index')): ?>
        <li class="<?php if(Yii::$app->controller->id=='billmobile') echo 'open'?>">
            <a href="<?php echo Yii::$app->urlManager->createUrl('billmobile')?>">
                <i class="fa fa-inbox"></i>
                <span class="title">Đơn hàng</span>
            </a>
        </li>
    <?php endif;?>

    <li class="<?php if(
            Yii::$app->controller->id=='menu'||
            Yii::$app->controller->id=='partner'||
            Yii::$app->controller->id=='slides'||
            Yii::$app->controller->id=='album'||
            Yii::$app->controller->id=='picture'||
            Yii::$app->controller->id=='comment'||
            Yii::$app->controller->id=='configure'
    ) echo 'open'?>">
        <a href="javascript:;">
            <i class="icon-pencil"></i>
            <span class="title">Quản lý giao diện</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu" <?php if(
                Yii::$app->controller->id=='menu'||
                Yii::$app->controller->id=='partner'||
                Yii::$app->controller->id=='slides'||
                Yii::$app->controller->id=='album'||
                Yii::$app->controller->id=='picture'||
                Yii::$app->controller->id=='comment'||
                Yii::$app->controller->id=='configure'
        ) echo 'style="display:block"'?>>

            <?php if(Yii::$app->user->can('menu/index') ): ?>
                <li class="<?php if(Yii::$app->controller->id=='menu') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('menu')?>">
                        <i class="icon-book-open"></i>
                        <span class="title">Quản lý Menu</span>
                    </a>
                </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('partner/index')): ?>
                <li class="<?php if(Yii::$app->controller->id=='partner') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('partner')?>">
                        <i class="fa fa-dribbble"></i>
                        <span class="title">Quản lý giới thiệu, dịch vụ, đối tác</span>
                    </a>
                </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('slides/index') ): ?>
                <li class="<?php if(Yii::$app->controller->id=='slides') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('slides')?>">
                        <i class="fa fa-file-image-o"></i>
                        <span class="title">Quản lý Slides</span>
                    </a>
                </li>
            <?php endif;?>
            <?php if(Yii::$app->user->can('comment/index') ): ?>
                <li class="<?php if(Yii::$app->controller->id=='comment') echo 'open'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('comment')?>">
                        <i class="fa fa-file-image-o"></i>
                        <span class="title">Quản lý dự án</span>
                    </a>
                </li>
            <?php endif;?>
<!--            --><?php //if(Yii::$app->user->can('album/index') || Yii::$app->user->can('picture/index')): ?>
<!--                <li class="--><?php //if(Yii::$app->controller->id=='album' || Yii::$app->controller->id=='picture') echo 'open'?><!--">-->
<!--                    <a href="javascript:;">-->
<!--                        <i class="fa fa-empire"></i>-->
<!--                        <span class="title">Thư viện ảnh</span>-->
<!--                        <span class="arrow"></span>-->
<!--                    </a>-->
<!--                    <ul class="sub-menu" --><?php //if(Yii::$app->controller->id=='album' || Yii::$app->controller->id=='picture') echo 'style="display:block"'?><!--
<!---->
<!--                        --><?php //if(Yii::$app->user->can('album/index')): ?>
<!--                            <li  class="--><?php //if(Yii::$app->controller->id=='album') echo 'active'?><!--">-->
<!--                                <a href="--><?php //echo Yii::$app->urlManager->createUrl('album')?><!--">-->
<!--                                    <i class="icon-bar-chart"></i>-->
<!--                                    Album</a>-->
<!--                            </li>-->
<!--                        --><?php //endif; ?>
<!---->
<!--                        --><?php //if(Yii::$app->user->can('picture/index') && 0==1): ?>
<!--                            <li class="--><?php //if(Yii::$app->controller->id=='picture') echo 'active'?><!--">-->
<!--                                <a href="--><?php //echo Yii::$app->urlManager->createUrl('picture')?><!--">-->
<!--                                    <i class="icon-bulb"></i>-->
<!--                                    Picture</a>-->
<!--                            </li>-->
<!--                        --><?php //endif; ?>
<!--                    </ul>-->
<!--                </li>-->
<!--            --><?php //endif; ?>
            <?php if(Yii::$app->user->can('configure/index')): ?>
                <li  class="<?php if(Yii::$app->controller->id=='configure' && Yii::$app->controller->action->id=='index') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('configure')?>">
                        <i class="icon-bar-chart"></i>
                        Cấu hình Thông số Website</a>
                </li>
            <?php endif; ?>
<!--            --><?php //if(Yii::$app->user->can('configure/themeconstructor')): ?>
<!--                <li  class="--><?php //if(Yii::$app->controller->action->id=='themeconstructor') echo 'active'?><!--">-->
<!--                    <a href="--><?php //echo Yii::$app->urlManager->createUrl('configure/themeconstructor')?><!--">-->
<!--                        <i class="icon-bar-chart"></i>-->
<!--                        Cấu hình Giao diện trang chủ</a>-->
<!--                </li>-->
<!--            --><?php //endif; ?>
            <?php if(Yii::$app->user->can('landingpage/index')): ?>
                <li  class="<?php if(Yii::$app->controller->id=='landingpage') echo 'active'?>">
                    <a href="<?php echo Yii::$app->urlManager->createUrl('landingpage/index')?>">
                        <i class="icon-bar-chart"></i>
                        LandingPage</a>
                </li>
            <?php endif; ?>
        </ul>
    </li>


























    <!---------------------------------------------------------------------------------------------------------------------------------------->
    <?php if(Yii::$app->user->can('rbac/authorization')): ?>
        <li class="<?php if(Yii::$app->controller->id=='rbac'||Yii::$app->controller->id=='log') echo 'open'?>">
            <a href="javascript:;">
                <i class="icon-user"></i>
                <span class="title">Quản lý phân quyền</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu" <?php if(Yii::$app->controller->id=='rbac' || Yii::$app->controller->id=='rbac' || Yii::$app->controller->id=='log') echo 'style="display:block"'?>>

                <?php if(Yii::$app->user->can('rbac/signup')): ?>
                    <li  class="<?php if(Yii::$app->controller->action->id=='signup') echo 'active'?>">
                        <a href="<?php echo Yii::$app->urlManager->createUrl('rbac/signup')?>">
                            <i class="icon-bar-chart"></i>
                            Tạo tài khoản</a>
                    </li>
                <?php endif; ?>

                <?php if(Yii::$app->user->can('rbac/authorization')): ?>
                    <li  class="<?php if(Yii::$app->controller->action->id=='authorization') echo 'active'?>">
                        <a href="<?php echo Yii::$app->urlManager->createUrl('rbac/authorization')?>">
                            <i class="icon-bar-chart"></i>
                            Cập nhật quyền theo vai trò</a>
                    </li>
                <?php endif; ?>
                <?php if(Yii::$app->user->can('rbac/authorization')): ?>
                    <li class="<?php if(Yii::$app->controller->action->id=='user_role') echo 'active'?>">
                        <a href="<?php echo Yii::$app->urlManager->createUrl('rbac/user_role')?>">
                            <i class="icon-bulb"></i>
                            Phân vai trò người dùng</a>
                    </li>
                <?php endif; ?>

                <?php if(Yii::$app->user->can('admin/index')): ?>
                    <li class="<?php if(Yii::$app->controller->id=='admin') echo 'active'?>">
                        <a href="<?php echo Yii::$app->urlManager->createUrl('admin/index')?>">
                            <i class="icon-bulb"></i>
                            Danh sách người dùng</a>
                    </li>
                <?php endif; ?>
                <?php if(Yii::$app->user->can('log/index')): ?>
                    <li  class="<?php if(Yii::$app->controller->id=='log') echo 'active'?>">
                        <a href="<?php echo Yii::$app->urlManager->createUrl('log/index')?>">
                            <i class="icon-bar-chart"></i>
                            System Logs</a>
                    </li>
                <?php endif; ?>
            </ul>
        </li>
    <?php endif; ?>
</ul>