<?php
$news= \common\models\Log::find()->where("noidung='news/news_post'")
    ->andWhere("loai='Tracking Active Record (Type Insert)'")->all();
$page= \common\models\Log::find()->where("noidung='page/newform'")
    ->andWhere("loai='Tracking Active Record (Type Insert)'")->all();
$product= \common\models\Log::find()->where("noidung='product/newform'")
    ->andWhere("loai='Tracking Active Record (Type Insert)'")->all();
/** @var \common\models\Log $value */
$user = \common\models\Admin::find()->where('status=10')->all();
/** @var \common\models\Admin[] $user */
?>
<div class="row">
    <div class="col-md-6 col-sm-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bar-chart font-green-sharp hide"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Thống kê </span>
                    <span class="caption-helper">bài viết tin tức...</span>
                </div>
                <div class="actions">
                    <span class="caption-subject font-red-flamingo bold uppercase"><?=$label?></span>
                </div>
            </div>
            <div class="portlet-body table-responsive">
                <table class="table table-hover table-bordered table-striped">
                    <tr>
                        <td>STT</td>
                        <td>User</td>
                        <td>Số lượng bài</td>
                    </tr>
                    <?php $stt=1; foreach ($user as $users):?>
                        <tr>
                            <td><?=$stt?></td>
                            <td><?=$users->username?></td>

                            <td>
                                <?php $count = 0;
                                foreach ($news as $value){
                                    if($value->user==$users->username){
                                        if($label!="All the time") {
                                            date_default_timezone_set('Asia/Ho_Chi_Minh');
                                            $activedate=date_create_from_format('H:m:s d/m/Y',$value->time);
                                            $froms = date_create_from_format('d/m/Y H:i:s',$from." 00:00:00");
                                            $tos = date_create_from_format('d/m/Y H:i:s',$to." 23:59:59");

                                            if($froms<=$activedate && $activedate<=$tos){
                                                $count++;
                                            }
                                        }else{
                                            $count++;
                                        }
                                    }
                                }
                                echo $count;
                                ?>
                            </td>
                        </tr>
                    <?php $stt++; endforeach;?>
                </table>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
    <div class="col-md-6 col-sm-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bar-chart font-green-sharp hide"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Thống kê </span>
                    <span class="caption-helper">bài viết Page...</span>
                </div>
                <div class="actions">
                    <span class="caption-subject font-red-flamingo bold uppercase"><?=$label?></span>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover table-bordered table-striped">
                    <tr>
                        <td>STT</td>
                        <td>User</td>
                        <td>Số lượng bài</td>
                    </tr>
                    <?php $stt=1; foreach ($user as $users):?>
                        <tr>
                            <td><?=$stt?></td>
                            <td><?=$users->username?></td>

                            <td>
                                <?php $count = 0;
                                foreach ($page as $value){
                                    if($value->user==$users->username){
                                        if($label!="All the time") {
                                            date_default_timezone_set('Asia/Ho_Chi_Minh');
                                            $activedate=date_create_from_format('H:m:s d/m/Y',$value->time);
                                            $froms = date_create_from_format('d/m/Y H:i:s',$from." 00:00:00");
                                            $tos = date_create_from_format('d/m/Y H:i:s',$to." 23:59:59");

                                            if($froms<=$activedate && $activedate<=$tos){
                                                $count++;
                                            }
                                        }else{
                                            $count++;
                                        }
                                    }
                                }
                                echo $count;
                                ?>
                            </td>
                        </tr>
                        <?php $stt++; endforeach;?>
                </table>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-6 col-sm-6">
        <!-- BEGIN PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-bar-chart font-green-sharp hide"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">Thống kê </span>
                    <span class="caption-helper">bài viết sản phẩm...</span>
                </div>
                <div class="actions">
                    <span class="caption-subject font-red-flamingo bold uppercase"><?=$label?></span>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover table-bordered table-striped">
                    <tr>
                        <td>STT</td>
                        <td>User</td>
                        <td>Số lượng bài</td>
                    </tr>
                    <?php $stt=1; foreach ($user as $users):?>
                        <tr>
                            <td><?=$stt?></td>
                            <td><?=$users->username?></td>

                            <td>
                                <?php $count = 0;
                                foreach ($product as $value){
                                    if($value->user==$users->username){
                                        if($label!="All the time") {
                                            date_default_timezone_set('Asia/Ho_Chi_Minh');
                                            $activedate=date_create_from_format('H:m:s d/m/Y',$value->time);
                                            $froms = date_create_from_format('d/m/Y H:i:s',$from." 00:00:00");
                                            $tos = date_create_from_format('d/m/Y H:i:s',$to." 23:59:59");

                                            if($froms<=$activedate && $activedate<=$tos){
                                                $count++;
                                            }
                                        }else{
                                            $count++;
                                        }
                                    }
                                }
                                echo $count;
                                ?>
                            </td>
                        </tr>
                        <?php $stt++; endforeach;?>
                </table>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>

</div>
<div class="clearfix"></div>