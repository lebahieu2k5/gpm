<?php

$config = \common\models\Configure::getConfig();
$this->context->og_type = 'website';
$this->context->og_image = $config['contact_logo'];

use common\models\Configure;
use yii\widgets\ActiveForm;

\johnitvn\ajaxcrud\CrudAsset::register($this);

?>
<?php
$detect = new Mobile_Detect();
?>
<section id="main-slider">
    <div id="owl-main-slider" class="owl-carousel owl-enable owl-theme">
        <?php
            $slide = \common\models\Slides::find()->where("position = 'main' and active = 1")->orderBy('ord asc')->all();
            foreach ($slide as $slide1): /** @var \common\models\Slides $slide1 */
        ?>
            <div class="item">
            <div class="slide-bg">
                <img class="unveil-loaded" src="<?=$slide1->image?>">
            </div>

        </div>

        <?php endforeach; ?>
    </div>

    <script>
        $(document).ready(function () {
            $("#owl-main-slider").owlCarousel({
                singleItem: true,
                loop: true,
                autoplay: true,
                autoPlay: 1000,
                items: 1,
                slideSpeed: 500,
                paginationSpeed: 500,
                rewindSpeed: 500,
                addClassActive: true,
                lazyLoad: true,
                navigation: true,

                stopOnHover: true,
                pagination: false,
                scrollPerPage: true,
                nav: true,
                navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                afterMove: nextslide,
                afterInit: nextslide,
            })

            function nextslide() {
                $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                $('.hrv-banner-container .owl-item.active>li').append(heading);
                $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
            }
        })
    </script>
</section>


<main class="main-content" role="main">
    <section id="home-about-us">
        <div class="wrapper">
            <div class="inner">
                <?php $partnerDuoiSlide = \common\models\Partner::findOne(['position'=>3,'active'=>1]);
                //                                    $partnerDuoiSlide = \common\models\Partner::find()->where(['position'=>3,'active'=>1])->one();
                if(!is_null($partnerDuoiSlide)):
                ?>
                <div class="grid">
                    <div class="grid__item large--six-twelfths">
                        <div class="about-us-desc wow  fadeInLeft ">

                                    <h2 class="big-title">
                                        <?=$partnerDuoiSlide->name?>
                                    </h2>
                                    <div class="text-align-justify"><?=$partnerDuoiSlide->brief?></div>
                                    <a href="<?=$partnerDuoiSlide->url?>" target="_blank"><span>Tìm hiểu thêm</span><span><i
                                                    class="fa fa-arrow-right" aria-hidden="true"></i></span></a>

                        </div>
                    </div>
                    <div class="grid__item large--six-twelfths">
                        <div class="about-us-img wow fadeInRight">
                            <img src="<?=$partnerDuoiSlide->image?>"
                                 alt="Ảnh về chúng tôi">
                        </div>
                    </div>
                </div>
                <?php endif;?>
            </div>
        </div>
    </section>

    <section id="home-statistics">
        <div class="wrapper">
            <div class="inner">
                <div class="grid">
                    <div class="grid__item large--two-tenths">
                        <div class="numStaff">
                            <p class="counter" data-count="150">
                                0
                            </p>
                            <p>
                                Nhân viên
                            </p>
                        </div>
                    </div>
                    <div class="grid__item large--two-tenths">
                        <div class="numSupport">
                            <p>
                                <span class="counter" data-count="24">0</span>
                                /
                                <span class="counter" data-count="7">0</span>
                            </p>
                            <p>
                                Hỗ trợ
                            </p>
                        </div>
                    </div>
                    <div class="grid__item large--two-tenths">
                        <div class="numClient">
                            <p>
                                <span class="counter" data-count="1000">0</span>+
                            </p>
                            <p>
                                Khách hàng
                            </p>
                        </div>
                    </div>
                    <div class="grid__item large--two-tenths">
                        <div class="numPartner">
                            <p class="counter" data-count="150">
                                0
                            </p>
                            <p>
                                Đối tác
                            </p>
                        </div>
                    </div>
                    <div class="grid__item large--two-tenths">
                        <div class="numPrize">
                            <p>
                                <span class="counter" data-count="50">0</span>+
                            </p>
                            <p>
                                Giải thưởng
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="home-services">
        <div class="wrapper">
            <div class="inner">

                    <?php $services = \common\models\Partner::find()->where('position=4 and active=1')->orderBy('ord asc')->all(); ?>
                    <h2 class="our-services">
                        <span>Dịch vụ</span> của chúng tôi
                    </h2>
                <div id="owl-home-services-sliders" class="">
                    <div class="grid owl-carousel owl-enable owl-theme">
                        <?php foreach ($services as $svs):/** @var \common\models\Partner $svs */ ?>
                            <div class="item grid__item large--four-twelfths medium--six-twelfths small--one-whole" style="width: 100%; padding: 5px">

                                <a href="<?= $svs->url ?>" class="service-wrapper wow fadeInDown">

                                    <div class="service-img">
                                        <img src="<?= $svs->image ?>">
                                    </div>
                                    <p class="service-title">
                                        <?= $svs->name ?>
                                    </p>
                                    <div class="rte">

                                        <p class="text-align-just"><span>
                                       <?= $svs->brief ?>
                                    </span>
                                        </p>

                                    </div>
                                </a>

                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("#owl-home-services-sliders .grid").owlCarousel({
                    singleItem: false,
                    autoPlay: 5000,
                    responsive: {
                        // breakpoint from 0 up
                        0: {
                            items: 1
                        },
                        // breakpoint from 480 up
                        480: {
                            items: 2
                        },
                        // breakpoint from 768 up
                        768: {
                            items: 3
                        },
                        990: {
                            items: 3
                        }
                    },
                    slideSpeed: 500,
                    paginationSpeed: 500,
                    rewindSpeed: 500,
                    addClassActive: true,
                    lazyLoad: true,
                    navigation: true,
                    stopOnHover: true,
                    pagination: false,
                    scrollPerPage: true,
                    nav: true,
                    navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                    afterMove: nextslide,
                    afterInit: nextslide,
                })

                function nextslide() {
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                    $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                    var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                    $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                    $('.hrv-banner-container .owl-item.active>li').append(heading);
                    $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
                }
            })
        </script>
    </section>

    <section id="home-featured-products">
        <div class="wrapper">
            <div class="inner">
                <h2 class="our-services text-center">
                    <span>Sản phẩm</span> nổi bật
                </h2>
                <div class="grid list-products">

                    <div id="owl-product-slider" class="owl-carousel owl-enable suplo-owl owl-theme">
                        <?php
                        $sanphamcuaHoang = \common\models\Product::find()->where('active = 1 and home =1')->orderBy('id desc')->all();
                        foreach ($sanphamcuaHoang as $sanpham): /** @var \common\models\Product $sanpham */
                        ?>
                        <div class="grid__item wow fadeInUp">
                            <div class="product--loop">
                                <div class="inner">
                                    <a href="<?=$sanpham->getLink()?>" class="img-resize">
                                        <img src="<?=$sanpham->getDefaultImage()?>"
                                             alt="<?=$sanpham->name?>">
                                    </a>
                                    <div class="product--loop__info">
                                        <a href="<?=$sanpham->getLink()?>"
                                           class="product-name">
                                            <h2 class="product--loop__title">
                                                <?=$sanpham->name?>
                                            </h2>
                                        </a>
                                        <div class="product--loop__price">
                                            <span class="current-price">
                                                <?php if($sanpham->sale==0):?>
                                                    Giá: <span style="color: red; font-weight: bold" >Liên hệ</span>
                                                <?php else:?>
                                                <?=$sanpham->getSale()." ".$config['money_suffix']?>
                                                <?php endif;?>
                                            </span>

                                            <?php if($sanpham->sale<$sanpham->retail && $sanpham->sale>0):?>
                                                <span class="old-price">
                                                <s><?=$sanpham->getRetail()." ".$config['money_suffix']?></s>
                                            </span>
                                            <?php endif;?>
                                        </div>
                                    </div>
                                    <div class="product--loop__actions medium-down--hide">
                                        <a href="<?=$sanpham->getLink()?>" class="btn">Chi tiết</a>
                                        <a href="<?=$sanpham->getLink()?>" style="background-color: #576398;color: white" class="btn">Mua Ngay</a>
                                    </div>

                                    <?php if($sanpham->sale<$sanpham->retail && $sanpham->sale>0):?>
                                    <span class="product--loop__status">-<?=round(($sanpham->retail - $sanpham->sale) *100 / $sanpham->retail,0)?>%</span>
                                    <?php endif;?>

                                </div>
                            </div>


                        </div>
                        <?php endforeach;?>

                    </div>
                </div>
            </div>

        </div>
        <script>
            $(document).ready(function () {
                $("#owl-product-slider").owlCarousel({
                    singleItem: false,
                    autoPlay: 5000,
                    responsive: {
                        // breakpoint from 0 up
                        0: {
                            items: 1
                        },
                        // breakpoint from 480 up
                        480: {
                            items: 2
                        },
                        // breakpoint from 768 up
                        768: {
                            items: 3
                        },
                        990: {
                            items: 3
                        }
                    },
                    slideSpeed: 500,
                    paginationSpeed: 500,
                    rewindSpeed: 500,
                    addClassActive: true,
                    lazyLoad: true,
                    navigation: true,
                    stopOnHover: true,
                    pagination: false,
                    scrollPerPage: true,
                    nav: true,
                    navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                    afterMove: nextslide,
                    afterInit: nextslide,
                })

                function nextslide() {
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                    $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                    var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                    $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                    $('.hrv-banner-container .owl-item.active>li').append(heading);
                    $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
                }
            })
        </script>
    </section>

    <section id="home-why-us">
        <div class="wrapper">
            <div class="inner">
                <?php $PN01 = \common\models\Partner::findOne(['position'=>2, 'active'=>1]);
                if(!is_null($PN01)):
                ?>
                <div class="grid">
                    <div class="grid__item large--four-twelfths">
                        <div class="why-us-img wow  fadeInLeft">

                            <img src="<?=$PN01->image ?>">
                        </div>
                    </div>
                    <div class="grid__item large--eight-twelfths">
                        <div class="why-us-desc wow  fadeInRight">
                            <p class="why-us-title">
                                <?php echo $PN01->name?>
                            </p>
                            <p>
                               <?php echo $PN01->brief?>
                            </p>
                            <div class="text-right">
                                <a href="<?php echo $PN01->url?>" target="_blank"><span>Tìm hiểu thêm</span><span><i
                                                class="fa fa-arrow-right" aria-hidden="true"></i></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif;?>
            </div>
        </div>
    </section>

    <section id="home-articles">
        <div class="wrapper">
            <div class="inner">
                <h2 class="our-articles">
                    <span>Tin tức</span> nổi bật
                </h2>
                <div class="home-articles-wrapper grid">
                    <div id="owl-home-articles-slider" class="owl-carousel owl-enable owl-theme">
                        <?php $news = \common\models\News::find()->where('active = 1 and home = 1')->orderBy('hot asc')->all();
                        foreach ($news as $new): /** @var \common\models\News $new */
                        ?>
                        <div class="item grid__item">
                            <a href="<?=$new->getUrl() ?>"
                               class="article wow fadeInDown" title="<?= $new->title ?>">

                            <div class="article-img">
                                <img src="<?php echo $new->image;?>"
                                     alt="<?= $new->title ?>">
                            </div>
                            <h3 class="article-title">
                                <?= $new->title ?>
                            </h3>
                            <div class="rte">

                                <p class="article-desc"><?= $new->brief?></p>

                            </div>
                            <p class="viewmore"
                               href="<?=$new->getUrl() ?>">Xem
                                thêm <i class="fa fa-angle-right" aria-hidden="true"></i></p>
                            </a>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("#owl-home-articles-slider").owlCarousel({
                    singleItem: false,
                    autoPlay: 5000,
                    slideSpeed: 500,
                    responsive: {
                        // breakpoint from 0 up
                        0: {
                            items: 1
                        },
                        // breakpoint from 480 up
                        480: {
                            items: 2
                        },
                        // breakpoint from 768 up
                        768: {
                            items: 3
                        },
                        990: {
                            items: 3
                        }
                    },
                    paginationSpeed: 500,
                    rewindSpeed: 500,
                    addClassActive: true,
                    lazyLoad: true,
                    navigation: true,
                    stopOnHover: true,
                    pagination: false,
                    scrollPerPage: true,
                    nav: true,
                    navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                    afterMove: nextslide,
                    afterInit: nextslide,
                })

                function nextslide() {
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                    $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                    var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                    $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                    $('.hrv-banner-container .owl-item.active>li').append(heading);
                    $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
                }
            })
        </script>
    </section>

    <section id="home-partners">
        <div class="wrapper">
            <div class="inner">

                <h2 class="our-partners">
                    <span>Đối tác</span> của chúng tôi
                </h2>
                <div class="home-clients-wrapper">
                    <div id="owl-home-partners" class="owl-carousel owl-enable owl-theme">
                        <?php $partner = \common\models\Partner::find()->where('position=1 and active=1')->all();
                        foreach ($partner as $pn):/** @var \common\models\Partner $pn */
                        ?>
                        <div class="item wow fadeInDown">

                            <a href="<?=$pn->url?>" target="<?=$pn->url?>"><img class="unveil-loaded"
                                        src="<?php echo $pn->image;?>"
                                        alt="<?=$pn->name ?>"></a>
                        </div>
                        <?php endforeach;?>
                    </div>
                </div>

            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("#owl-home-partners").owlCarousel({
                    singleItem: false,
                    loop: true,
                    autoplay: true,
                    autoPlay: 5000,

                    responsive: {
                        // breakpoint from 0 up
                        0: {
                            items: 3
                        },
                        // breakpoint from 480 up
                        480: {
                            items: 3
                        },
                        // breakpoint from 768 up
                        768: {
                            items: 5
                        },
                        990: {
                            items: 5
                        }
                    },
                    slideSpeed: 500,
                    paginationSpeed: 500,
                    rewindSpeed: 500,
                    addClassActive: true,
                    lazyLoad: true,
                    navigation: true,
                    stopOnHover: true,
                    pagination: false,
                    scrollPerPage: true,
                    nav: true,
                    navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                })


            })
        </script>
    </section>

    <section id="home-testimonials" style="margin-bottom: 0px;">
        <div class="wrapper">
            <div class="inner">
                <h2 class="testi-title">
                    <span>CÁC DỰ ÁN</span> NỔI BẬT
                </h2>
                <div class="home-testimonials-wrapper grid">
                    <div id="owl-home-testimonials" class="owl-carousel owl-enable owl-theme">

                        <?php $khachhangcomment = \common\models\Comment::find()->where(['active'=>1])->orderBy("ord asc")->all();
                            foreach ($khachhangcomment as $comment):/** @var \common\models\Comment $comment  */
                        ?>
                            <div class="item grid__item">
                            <div class="testi-wrapper wow fadeInDown">
                                <div class="testimonial-img">
                                    <img src="<?=$comment->image?>"
                                         alt="<?=$comment->name?>">
                                </div>
                                <p class="testi-author" style="height: 100px">
                                    <?=$comment->name?>
                                </p>

                                <div class="testi-company">
                                    <p><span><?=$comment->job?></span></p>
                                </div>

                                <div class="rte">
                                    <p class="testi-desc" style="text-align: justify">“<?=$comment->content?>”</p>
                                </div>
                            </div>
                        </div>
                        <?php endforeach;?>

                    </div>

                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("#owl-home-testimonials").owlCarousel({
                    singleItem: false,
                    autoPlay: 5000,
                    responsive: {
                        // breakpoint from 0 up
                        0: {
                            items: 1
                        },
                        // breakpoint from 480 up
                        480: {
                            items: 2
                        },
                        // breakpoint from 768 up
                        768: {
                            items: 3
                        },
                        990: {
                            items: 3
                        }
                    },
                    slideSpeed: 500,
                    paginationSpeed: 500,
                    rewindSpeed: 500,
                    addClassActive: true,
                    lazyLoad: true,
                    navigation: true,
                    stopOnHover: true,
                    pagination: false,
                    scrollPerPage: true,
                    nav: true,
                    navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                    afterMove: nextslide,
                    afterInit: nextslide,
                })

                function nextslide() {
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                    $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                    $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                    var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                    $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                    $('.hrv-banner-container .owl-item.active>li').append(heading);
                    $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
                }
            })
        </script>
    </section>
</main>

<script>
    jQuery(document).ready(function () {
        wow = new WOW(
            {
                boxClass: 'wow',      // default
                animateClass: 'animated', // default
                offset: 0,          // default
                mobile: true,       // default
                live: true        // default
            }
        )
        wow.init();
    });
</script>
<script>
    window.onscroll = changePos;

    function changePos() {
        var header = $("#header");
        var headerheight = $("#header").height();
        if (window.pageYOffset > headerheight) {
            header.addClass('sticky-header');
        } else {
            header.removeClass('sticky-header');
        }
    }
</script>

<script>
    function Utils() {
    }

    Utils.prototype = {
        constructor: Utils,
        isElementInView: function (element, fullyInView, pageTop) {
            var pageBottom = pageTop + $(window).height();
            var elementTop = $(element).offset().top;
            var elementBottom = elementTop + $(element).height();

            if (fullyInView === true) {
                return ((pageTop < elementTop) && (pageBottom > elementBottom));
            } else {
                return ((elementTop <= pageBottom) && (elementBottom >= pageTop));
            }
        }
    };
    var Utils = new Utils();
    var isElementInView = Utils.isElementInView($('#home-statistics'), false, 0);
    var counter = true;
    $(window).scroll(function () {
        if (Utils.isElementInView($('#home-statistics'), false, $(window).scrollTop())) {
            if (counter) {
                $('.counter').each(function () {
                    var $this = $(this),
                        countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    }, {
                        duration: 3000,
                        easing: 'linear',
                        step: function () {
                            $this.text(Math.floor(this.countNum));
                        },
                        complete: function () {
                            $this.text(this.countNum);
                        }
                    });
                });
                counter = false;
            }
        } else {
        }
    });
</script>
<script>
    $(window).on('load', function () {
        var img_height_max = 0;
        $('.img-resize').each(function () {
            var img_h = $(this).find('img').height();
            if (img_height_max < img_h) {
                img_height_max = img_h;
            }
        })
        $('.img-resize').height(img_height_max);
    })

    $(window).on('load', function () {
        var img_height_max = 0;
        $('.img-resize-2').each(function () {
            if (img_height_max < $(this).height()) {
                img_height_max = $(this).height();
            }
        })
        $('.img-resize-2').height(img_height_max);
    })
</script>

