const path = require('path');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
module.exports = {
    mode: 'development',
    optimization: {
        minimize: true,
        minimizer: [new UglifyJsPlugin({
            include: /\.min\.js$/
        })]
    },
    devtool: "source-map",
    entry: {
        "OwlCarousel2.min":"./frontend/web/OwlCarousel2/dist/owl.carousel.min.js",
        "owlthumb.min":"./frontend/web/OwlCarousel2/owlthumb.min.js",
        "bootstrap.min":"./frontend/web/theme/js/bootstrap.min.js",
        "apiJquery.min":"./frontend/web/theme/js/api.jquery.js",
        "modernizr.min":"./frontend/web/theme/js/modernizr.min.js",
        "wow.min":"./frontend/web/theme/js/wow.min.js",
        "mThumbnailScroller.min":"./frontend/web/theme/js/jquery.mThumbnailScroller.js",
        "elevatezoom.min":"./frontend/web/theme/js/jquery.elevatezoom.js",
        "bootstrapTabdrop.min":"./frontend/web/theme/js/bootstrap-tabdrop.js",
        "mainscript.min":"./frontend/web/theme/js/mainscript.js",
        "handlebars.min":"./frontend/web/theme/js/handlebars.min.js",
        "timber.min":"./frontend/web/theme/js/timber.js",
        "script.min":"./frontend/web/theme/js/script.js",
        "fastclick.min":"./frontend/web/theme/js/fastclick.min.js",
        "mainjs.min":"./frontend/web/theme/js/mainjs.js",
        "main.min":"./frontend/web/theme/js/main.js",
        "flags.min":"./frontend/web/theme/js/flags.js",
        "menu.min":"./frontend/web/theme/js/menu.js",
        "element_main.min":"./frontend/web/theme/js/element_main.js",
        "mousewheel.min":"./frontend/web/fancybox-master/dist/jquery.mousewheel-3.0.4.pack.js",
        "fancybox.min":"./frontend/web/fancybox-master/dist/jquery.fancybox.js",
        "mmenu.min":"./frontend/web/theme/js/jquery.mmenu.min.js",
        "myscript.min":"./frontend/web/theme/js/myscript.js",
        "pagination.min":"./frontend/web/theme/js/pagination.js",
        "awesome.min":"./frontend/web/theme/css/fonts/font-awesome.css",
        "carousel.min":"./frontend/web/OwlCarousel2/dist/assets/owl.carousel.min.css",
        "bootstrapcss.min":"./frontend/web/theme/css/bootstrap.min.css",
        "style.min":"./frontend/web/theme/css/style.css",
        "jessicaStyle.min":"./frontend/web/theme/css/jessicaStyle.css",
        "page.min":"./frontend/web/theme/css/page.css",
        "product.min":"./frontend/web/theme/css/product.css",
        "simple-line-icons.min":"./frontend/web/theme/simplelineicons/css/simple-line-icons.css",
        "media.min":"./frontend/web/theme/css/media.css",
        "custom_style.min":"./frontend/web/theme/css/custom_style.css",
        "translateelement.min":"./frontend/web/theme/css/translateelement.css",
        "fancyboxcss":"./frontend/web/fancybox-master/dist/jquery.fancybox.css",
        "mThumbnailScrollercss.min":"./frontend/web/theme/css/jquery.mThumbnailScroller.css",
        "mmenucss.min":"./frontend/web/theme/css/jquery.mmenu.css"
    },
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, 'frontend')+"/web/dist/js",
    },

};