/*load ajax once time*/
$(".load-ajax").click(function(){
	var _this = $(this);
	var _url = $(this).data('url');
	var _container = $(this).data('container');
	$(_container).append('<div class="loading-ajax-once-time">Đang cập nhật dữ liêu...</div>')
	$.ajax({
		url: _url,
		async : false,
		type:'POST',
		success:function(data){
			$(_container).remove('.loading-ajax-once-time');
			$(_container).html(data);
			_this.removeClass('load-ajax');
		},
		complete:function() {
		}
	});
});

/* Add to cart, Buy now*/
$('.buy-now').click(function(e){	
	e.preventDefault() ;
	var params = {
		type: 'POST',
		url: '/cart/add.js',
		async : false,
		data: {quantity:1,id:$(this).data('id')},
		dataType: 'json',
		success: function(line_item) {
			updateCart();
			window.location = '/checkout';
		},
		error: function(XMLHttpRequest, textStatus) {
			Haravan.onError(XMLHttpRequest, textStatus);
		}
	};
	jQuery.ajax(params);
});

$('.add-to-cart').click(function(e){	
	e.preventDefault() ;
	var params = {
		type: 'POST',
		url: '/cart/add.js',
		async : false,
		data: {quantity:1,id:$(this).data('id')},
		dataType: 'json',
		success: function(line_item) {
			updateCart();
			$('.js-drawer-open-right').trigger('click');
		},
		error: function(XMLHttpRequest, textStatus) {
			Haravan.onError(XMLHttpRequest, textStatus);
		}
	};
	jQuery.ajax(params);
});


/*update cart count*/
function updateCart(){
	$.ajax({
		type: 'GET',
		url: '/cart?view=count',
		async: true,
		success: function(data){
			$('.site-header__cart-toggle.js-drawer-open-right > #CartCount').html(parseInt(data));
			$('.site-header__cart-toggle.js-drawer-open-right > .CartCountMobile').html(parseInt(data));
		}
	})
}


/* Owl carousel */
var navRightText = '<i class="fa fa-angle-left" aria-hidden="true"></i>';
var navLeftText = '<i class="fa fa-angle-right" aria-hidden="true"></i>';

$(function(){

	$(".owl-carousel.owl-enable").each(function(){
		var config = {
			margin: 10,
			lazyLoad: true,
			navigationText: [navRightText, navLeftText]
		}; 

		var owl = $(this);
		if( $(this).data('slide') == 1 ){
			config.singleItem = true;
		}else {
			config.items = $(this).data( 'items' );
		}
		if ($(this).data('items')) {
			config.itemsDesktop = $(this).data('items');
		}
		if ($(this).data('desktop')) {
			config.itemsDesktop = $(this).data('desktop');
		}
		if ($(this).data('desktopsmall')) {
			config.itemsDesktopSmall = $(this).data('desktopsmall');
		}
		if ($(this).data('tablet')) {
			config.itemsTablet = $(this).data('tablet');
		}
		if ($(this).data('tabletsmall')) {
			config.itemsTabletSmall = $(this).data('tabletsmall');
		}
		if ($(this).data('mobile')) {
			config.itemsMobile = $(this).data('mobile');
		}
		if ($(this).data('autoplay')) {
			config.autoPlay = $(this).data('autoplay');
		}
		if ($(this).data('nav')) {
			config.navigation = $(this).data('nav');
		}

		$(this).owlCarousel( config );
	});
})

jQuery(document).ready(function(){
	if ( $('.slides li').size() > 0 ) {
		$(".hrv-banner-container .slides").owlCarousel({
			singleItem: true,
			autoPlay : 5000,
			items : 1,
			itemsDesktop : [1199,1],
			itemsDesktopSmall : [980,1],
			itemsTablet: [768,1],
			itemsMobile : [479,1],
			slideSpeed : 500,
			paginationSpeed : 500,
			rewindSpeed : 500,
			addClassActive: true,
			lazyLoad: true,
			navigation : true,
			stopOnHover : true,
			pagination : false,
			scrollPerPage:true,
			afterMove: nextslide,
			afterInit: nextslide,
		});
		function nextslide() {
			$(".hrv-banner-container .owl-item .hrv-banner-caption").css('display','none');
			$(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
			$(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display','block');

			var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
			$('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
			$('.hrv-banner-container .owl-item.active>li').append(heading);
			$('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
		}

	}
	if($('#ProductThumbs').length){
		var productThumb = $('#ProductThumbs');
		var productThumbInner = $('#ProductThumbs .inner');
		var productFeatureImage = $('#ProductPhoto');
		var thumbControlUp = $('.product-thumb-control .up');
		var thumbControlDown = $('.product-thumb-control .down');

		if($(window).width() < 769){
			productThumbInner.addClass('owl-carousel');
			productThumbInner.owlCarousel({
				items: 3,
				margin: 10,
				itemsTablet: [768,3],
				itemsMobile : [479,3],
			});
		}else{
			var _temp = 0;
			var _mt = parseInt(productThumbInner.css("margin-top"));
			var _maxScroll = productThumb.height() - productThumbInner.height();
			if(_maxScroll === 0 ){
				$('.product-thumb-control').remove();
			}
			thumbControlUp.click(function(){
				_temp = _mt + 110;
				console.log(_mt);
				if(_temp > 0){
					_mt = 0;
					productThumbInner.css("margin-top", _mt)
				}else{
					_mt = _temp;
					productThumbInner.css("margin-top", _mt)
				}
			});
			thumbControlDown.click(function(){
				_temp = _mt - 110;
				if(_temp < _maxScroll){
					_mt = _maxScroll;
					productThumbInner.css("margin-top", _mt)
				}else{
					_mt = _temp;
					productThumbInner.css("margin-top", _mt)
				}
			});
		}
	}
})


/* variant click */


function convertToSlug(str) {

	str= str.toLowerCase();  
	str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");  
	str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");  
	str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");  
	str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");  
	str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");  
	str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");  
	str= str.replace(/đ/g,"d");  
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-"); 
	str= str.replace(/-+-/g,"-");
	str= str.replace(/^\-+|\-+$/g,"");  
	return str;  
} 

var swatch_size = parseInt($('.select-swatch').children().size());

jQuery(document).on('click','.swatch input', function(e) {  
	swatch_size = parseInt($('.select-swatch').children().size());
	e.preventDefault()
	var $this = $(this);
	var _available = '';
	$this.parent().siblings().find('label').removeClass('sd');
	$this.next().addClass('sd');
	var name = $this.attr('name');
	var value = $this.val();
	$('select[data-option='+name+']').val(value).trigger('change');
	if($(this).data('img-src')){
		var img_ = $(this).data('img-src');
		$('.product-single__thumbnail[href="'+img_+'"]').trigger('click');
	}
	if(swatch_size == 2){
		if(name.indexOf('1') != -1){
			$('#variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
			$('#variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
			$('#variant-swatch-1 .swatch-element label').removeClass('sd');
			$('#variant-swatch-1 .swatch-element').removeClass('soldout');
			$('.selector-wrapper .single-option-selector').eq(1).find('option').each(function(){
				var _tam = $(this).val();
				$(this).parent().val(_tam).trigger('change');
				if(check_variant){
					if(_available == '' ){
						_available = _tam;
					}
				}else{
					$('#variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
					$('#variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
				}
			})
			$('.selector-wrapper .single-option-selector').eq(1).val(_available).trigger('change');
			$('#variant-swatch-1 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
		}
	}else if (swatch_size == 3){
		var _count_op2 = $('#variant-swatch-1 .swatch-element').size();
		var _count_op3 = $('#variant-swatch-2 .swatch-element').size();
		if(name.indexOf('1') != -1){
			$('#variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
			$('#variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
			$('#variant-swatch-1 .swatch-element label').removeClass('sd');
			$('#variant-swatch-1 .swatch-element').removeClass('soldout');
			$('#variant-swatch-2 .swatch-element label').removeClass('sd');
			$('#variant-swatch-2 .swatch-element').removeClass('soldout');
			var _avi_op1 = '';
			var _avi_op2 = '';
			$('#variant-swatch-1 .swatch-element').each(function(ind,value){
				var _key = $(this).data('value');
				var _unavi = 0;
				$('.single-option-selector').eq(1).val(_key).change();
				$('#variant-swatch-2 .swatch-element label').removeClass('sd');
				$('#variant-swatch-2 .swatch-element').removeClass('soldout');
				$('#variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
				$('#variant-swatch-2 .swatch-element').each(function(i,v){
					var _val = $(this).data('value');
					$('.single-option-selector').eq(2).val(_val).change();
					if(check_variant == true){
						if(_avi_op1 == ''){
							_avi_op1 = _key;
						}
						if(_avi_op2 == ''){
							_avi_op2 = _val;
						}
						//console.log(_avi_op1 + ' -- ' + _avi_op2)
					}else{
						_unavi += 1;
					}
				})
				if(_unavi == _count_op3){
					$('#variant-swatch-1 .swatch-element[data-value = "'+_key+'"]').addClass('soldout');
					setTimeout(function(){
						$('#variant-swatch-1 .swatch-element[data-value = "'+_key+'"] input').attr('disabled','disabled');
					})
				}
			})
			$('#variant-swatch-1 .swatch-element[data-value="'+_avi_op1+'"] input').click();
		}
		else if(name.indexOf('2') != -1){
			$('#variant-swatch-2 .swatch-element label').removeClass('sd');
			$('#variant-swatch-2 .swatch-element').removeClass('soldout');
			$('.selector-wrapper .single-option-selector').eq(2).find('option').each(function(){
				var _tam = $(this).val();
				$(this).parent().val(_tam).trigger('change');
				if(check_variant){
					if(_available == '' ){
						_available = _tam;
					}
				}else{
					$('#variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
					$('#variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);				
				}
			})
			$('.selector-wrapper .single-option-selector').eq(2).val(_available).trigger('change');
			$('#variant-swatch-2 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
		}
	}else{
			 if(name.indexOf('1') != -1){

				 $('#variant-swatch-0 .swatch-element').find('input').prop('disabled', false);

				 $('#variant-swatch-0 .swatch-element label').removeClass('sd');

				 $('#variant-swatch-0 .swatch-element').removeClass('soldout');

				 $('.selector-wrapper .single-option-selector').eq(0).find('option').each(function(){

					 var _tam = $(this).val();

					 $(this).parent().val(_tam).trigger('change');

					 if(check_variant){
						 _available = _tam;
					 } else{
						 $('#variant-swatch-0 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
						 $('#variant-swatch-0 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
					 }

				 })

				 $('.selector-wrapper .single-option-selector').eq(0).val(value).trigger('change');
				 $('#variant-swatch-0 .swatch-element[data-value="'+ value +'"] label').addClass('sd');
			 }
	}
})