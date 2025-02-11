/*============================================================================
  Ajax the add to cart experience by revealing it in a side drawer
  Plugin Documentation - http://haravan.github.io/Timber/#ajax-cart
  (c) Copyright 2015 Haravan Inc. Author: Carson Shold (@cshold). All Rights Reserved.

  This file includes:
    - Basic Haravan Ajax API calls
    - Ajax cart plugin

  This requires:
    - jQuery 1.8+
    - handlebars.min.js (for cart template)
    - modernizr.min.js
    - snippet/ajax-cart-template.liquid

  Customized version of Haravan's jQuery API
  (c) Copyright 2009-2015 Haravan Inc. Author: Caroline Schnapp. All Rights Reserved.
==============================================================================*/
if ((typeof HaravanAPI) === 'undefined') { HaravanAPI = {}; }

/*============================================================================
  API Helper Functions
==============================================================================*/
function attributeToString(attribute) {
	if ((typeof attribute) !== 'string') {
		attribute += '';
		if (attribute === 'undefined') {
			attribute = '';
		}
	}
	return jQuery.trim(attribute);
};

/*============================================================================
  API Functions
==============================================================================*/
HaravanAPI.onCartUpdate = function(cart) {
	// alert('There are now ' + cart.item_count + ' items in the cart.');
};

HaravanAPI.updateCartNote = function(note, callback) {
	var $body = $(document.body),
			params = {
				type: 'POST',
				url: '/cart/update.js',
				data: 'note=' + attributeToString(note),
				dataType: 'json',
				beforeSend: function() {
					$body.trigger('beforeUpdateCartNote.ajaxCart', note);
				},
				success: function(cart) {
					if ((typeof callback) === 'function') {
						callback(cart);
					}
					else {
						HaravanAPI.onCartUpdate(cart);
					}
					$body.trigger('afterUpdateCartNote.ajaxCart', [note, cart]);
				},
				error: function(XMLHttpRequest, textStatus) {
					$body.trigger('errorUpdateCartNote.ajaxCart', [XMLHttpRequest, textStatus]);
					HaravanAPI.onError(XMLHttpRequest, textStatus);
				},
				complete: function(jqxhr, text) {
					$body.trigger('completeUpdateCartNote.ajaxCart', [this, jqxhr, text]);
				}
			};
	jQuery.ajax(params);
};

HaravanAPI.onError = function(XMLHttpRequest, textStatus) {
	var data = eval('(' + XMLHttpRequest.responseText + ')');
	if (!!data.message) {
		alert(data.message + '(' + data.status  + '): ' + data.description);
	}
};

/*============================================================================
  POST to cart/add.js returns the JSON of the cart
    - Allow use of form element instead of just id
    - Allow custom error callback
==============================================================================*/
HaravanAPI.addItemFromForm = function(form, callback, errorCallback) {
	var $body = $(document.body),
			params = {
				type: 'POST',
				url: '/cart/add.js',
				data: jQuery(form).serialize(),
				dataType: 'json',
				beforeSend: function(jqxhr, settings) {
					$body.trigger('beforeAddItem.ajaxCart', form);
				},
				success: function(line_item) {
					if ((typeof callback) === 'function') {
						callback(line_item, form);
					}
					else {
						HaravanAPI.onItemAdded(line_item, form);
					}
					$body.trigger('afterAddItem.ajaxCart', [line_item, form]);
				},
				error: function(XMLHttpRequest, textStatus) {
					if ((typeof errorCallback) === 'function') {
						errorCallback(XMLHttpRequest, textStatus);
					}
					else {
						HaravanAPI.onError(XMLHttpRequest, textStatus);
					}
					$body.trigger('errorAddItem.ajaxCart', [XMLHttpRequest, textStatus]);
				},
				complete: function(jqxhr, text) {
					$body.trigger('completeAddItem.ajaxCart', [this, jqxhr, text]);
				}
			};
	jQuery.ajax(params);
};

// Get from cart.js returns the cart in JSON
HaravanAPI.getCart = function(callback) {
	$(document.body).trigger('beforeGetCart.ajaxCart');
	jQuery.getJSON('/cart.js', function (cart, textStatus) {
		if ((typeof callback) === 'function') {
			callback(cart);
		}
		else {
			HaravanAPI.onCartUpdate(cart);
		}
		$(document.body).trigger('afterGetCart.ajaxCart', cart);
	});
};

// POST to cart/change.js returns the cart in JSON
HaravanAPI.changeItem = function(id, quantity, callback) {
	var $body = $(document.body),
			params = {
				type: 'POST',
				url: '/cart/update.js',
				data: jQuery('#CartContainer form').serialize(),
				dataType: 'json',
				beforeSend: function() {
					$body.trigger('beforeChangeItem.ajaxCart', [id, quantity]);
				},
				success: function(cart) {
					if ((typeof callback) === 'function') {
						callback(cart);
					}
					else {
						HaravanAPI.onCartUpdate(cart);
					}
					$body.trigger('afterChangeItem.ajaxCart', [id, quantity, cart]);
				},
				error: function(XMLHttpRequest, textStatus) {
					$body.trigger('errorChangeItem.ajaxCart', [XMLHttpRequest, textStatus]);
					HaravanAPI.onError(XMLHttpRequest, textStatus);
				},
				complete: function(jqxhr, text) {
					$body.trigger('completeChangeItem.ajaxCart', [this, jqxhr, text]);
				}
			};
	jQuery.ajax(params);
};

/*============================================================================
  Ajax Haravan Add To Cart
==============================================================================*/
var ajaxCart = (function(module, $) {

	'use strict';

	// Public functions
	var init, loadCart;

	// Private general variables
	var settings, isUpdating, $body;

	// Private plugin variables
	var $formContainer, $addToCart, $cartCountSelector, $cartCostSelector, $cartContainer, $drawerContainer;

	// Private functions
	var updateCountPrice, formOverride, itemAddedCallback, itemErrorCallback, cartUpdateCallback, buildCart, cartCallback, adjustCart, adjustCartCallback, createQtySelectors, qtySelectors, validateQty;

	/*============================================================================
    Initialise the plugin and define global options
  ==============================================================================*/
	init = function (options) {

		// Default settings
		settings = {
			formSelector       : 'form[action^="/cart/add"]',
			formCartDrawer		 : '#CartDrawer form',
			cartContainer      : '#CartContainer',
			cartCountSelector  : null,
			cartCostSelector   : null,
			moneyFormat        : '$',
			disableAjaxCart    : false,
			enableQtySelectors : true
		};

		// Override defaults with arguments
		$.extend(settings, options);

		// Select DOM elements
		$formContainer     = $(settings.formSelector);
		$cartContainer     = $(settings.cartContainer);
		$addToCart         = $formContainer.find(settings.addToCartSelector);
		$cartCountSelector = $(settings.cartCountSelector);
		$cartCostSelector  = $(settings.cartCostSelector);

		// General Selectors
		$body = $(document.body);

		// Track cart activity status
		isUpdating = false;

		// Setup ajax quantity selectors on the any template if enableQtySelectors is true
		if (settings.enableQtySelectors) {
			qtySelectors();
		}

		// Take over the add to cart form submit action if ajax enabled
		if (!settings.disableAjaxCart && $addToCart.length) {
			formOverride();
		}

		// Run this function in case we're using the quantity selector outside of the cart
		adjustCart($cartContainer.find('form'));
	};

	loadCart = function () {
		$body.addClass('drawer--is-loading');
		HaravanAPI.getCart(cartUpdateCallback);
	};

	updateCountPrice = function (cart) {
		if ($cartCountSelector) {
			$cartCountSelector.html(cart.item_count).removeClass('hidden-count');

			if (cart.item_count === 0) {
				$cartCountSelector.addClass('hidden-count');
			}
		}
		if ($cartCostSelector) {
			$cartCostSelector.html(Haravan.formatMoney(cart.total_price, settings.moneyFormat));
		}
	};

	formOverride = function () {
		$formContainer.on('submit', function(evt) {
			evt.preventDefault();

			// Add class to be styled if desired
			$addToCart.removeClass('is-added').addClass('is-adding');

			// Remove any previous quantity errors
			$('.qty-error').remove();

			HaravanAPI.addItemFromForm(evt.target, itemAddedCallback, itemErrorCallback);
		});
	};

	itemAddedCallback = function (product) {
		$addToCart.removeClass('is-adding').addClass('is-added');

		HaravanAPI.getCart(cartUpdateCallback);
	};

	itemErrorCallback = function (XMLHttpRequest, textStatus) {
		var data = eval('(' + XMLHttpRequest.responseText + ')');
		$addToCart.removeClass('is-adding is-added');

		if (!!data.message) {
			if (data.status == 422) {
				$formContainer.after('<div class="errors qty-error">'+ data.description +'</div>')
			}
		}
	};

	cartUpdateCallback = function (cart) {
		// Update quantity and price
		updateCountPrice(cart);
		buildCart(cart);
	};

	buildCart = function (cart) {
		// Start with a fresh cart div
		$cartContainer.empty();

		// Show empty cart
		if (cart.item_count === 0) {
			$cartContainer
			.append('<p>' + 'Giỏ hàng trống' + '</p>');
			cartCallback(cart);
			return;
		}

		// Handlebars.js cart layout
		var items = [],
				item = {},
				data = {},
				source = $("#CartTemplate").html(),
				template = Handlebars.compile(source);

		// Add each item to our handlebars.js data
		$.each(cart.items, function(index, cartItem) {

			/* Hack to get product image thumbnail
       *   - If image is not null
       *     - Remove file extension, add _small, and re-add extension
       *     - Create server relative link
       *   - A hard-coded url of no-image
      */
			if (cartItem.image != null){
				var prodImg = cartItem.image.replace(/(\.[^.]*)$/, "_small$1").replace('http:', '');
			} else {
				var prodImg = "//hstatic.net/s/assets/admin/no-image-medium-cc9732cb976dd349a0df1d39816fbcc7.gif";
			}
			// Create item's data object and add to 'items' array
			item = {
				key: cartItem.id,
				line: index + 1, // Haravan uses a 1+ index in the API
				url: cartItem.url,
				img: prodImg,
				name: cartItem.product_title,
				variation: cartItem.variant_options,
				properties: cartItem.properties,
				itemAdd: cartItem.quantity + 1,
				itemMinus: cartItem.quantity - 1,
				itemQty: cartItem.quantity,
				price: Haravan.formatMoney(cartItem.price, settings.moneyFormat),
				vendor: cartItem.vendor,
				linePrice: Haravan.formatMoney(cartItem.line_price, settings.moneyFormat),
				originalLinePrice: Haravan.formatMoney(cartItem.original_line_price, settings.moneyFormat),
				discounts: cartItem.discounts,
				discountsApplied: cartItem.line_price === cartItem.original_line_price ? false : true
			};

			items.push(item);
		});

		// Gather all cart data and add to DOM
		data = {
			items: items,
			note: cart.note,
			totalPrice: Haravan.formatMoney(cart.total_price, settings.moneyFormat),
			totalCartDiscount: cart.total_discount === 0 ? 0 : "Tiết kiệm" + Haravan.formatMoney(cart.total_discount, settings.moneyFormat),
			totalCartDiscountApplied: cart.total_discount === 0 ? false : true
		}

		$cartContainer.append(template(data));

		cartCallback(cart);
	};

	cartCallback = function(cart) {
		$body.removeClass('drawer--is-loading');
		$body.trigger('afterCartLoad.ajaxCart', cart);

		if (window.Haravan && Haravan.StorefrontExpressButtons) {
			Haravan.StorefrontExpressButtons.initialize();
		}
	};

	adjustCart = function (form) {
		// Delegate all events because elements reload with the cart

		// Add or remove from the quantity
		$body.on('click', '.ajaxcart__qty-adjust', function() {
			if (isUpdating) {
				return;
			}

			var $el = $(this),
					id = $el.data('line'),
					$qtySelector = $el.siblings('.ajaxcart__qty-num'),
					qty = parseInt($qtySelector.val().replace(/\D/g, ''));

			var qty = validateQty(qty);

			// Add or subtract from the current quantity
			if ($el.hasClass('ajaxcart__qty--plus')) {
				qty += 1;
				$qtySelector.val(qty);
			} else {
				qty -= 1;
				if (qty <= 0){
					qty = 0
				};
				$qtySelector.val(qty);
			}

			// If it has a data-line, update the cart.
			// Otherwise, just update the input's number
			if (id) {
				updateQuantity(id, qty);
			} else {
				$qtySelector.val(qty);
			}
		});

		// Update quantity based on input on change
		$body.on('change', '.ajaxcart__qty-num', function() {
			if (isUpdating) {
				return;
			}
			var $el = $(this),
					id = $el.data('line'),
					qty = parseInt($el.val().replace(/\D/g, ''));

			var qty = validateQty(qty);

			// If it has a data-line, update the cart
			if (id) {
				updateQuantity(id, qty);
			}
		});

		// Prevent cart from being submitted while quantities are changing
		$body.on('submit', 'form.ajaxcart', function(evt) {
			if (isUpdating) {
				evt.preventDefault();
			}
		});

		// Highlight the text when focused
		$body.on('focus', '.ajaxcart__qty-adjust', function() {
			var $el = $(this);
			setTimeout(function() {
				$el.select();
			}, 50);
		});

		function updateQuantity(id, qty) {
			isUpdating = true;

			// Add activity classes when changing cart quantities
			var $row = $('.ajaxcart__row[data-line="' + id + '"]').addClass('is-loading');

			if (qty === 0) {
				$row.parent().addClass('is-removed');
			}

			// Slight delay to make sure removed animation is done
			setTimeout(function() {
				HaravanAPI.changeItem(id, qty, adjustCartCallback);
			}, 250);
		}

		// Save note anytime it's changed
		$body.on('change', 'textarea[name="note"]', function() {
			var newNote = $(this).val();

			// Update the cart note in case they don't click update/checkout
			HaravanAPI.updateCartNote(newNote, function(cart) {});
		});
	};

	adjustCartCallback = function (cart) {
		// Update quantity and price
		updateCountPrice(cart);

		// Reprint cart on short timeout so you don't see the content being removed
		setTimeout(function() {
			isUpdating = false;
			HaravanAPI.getCart(buildCart);
		}, 150)
	};

	createQtySelectors = function() {
		// If there is a normal quantity number field in the ajax cart, replace it with our version
		if ($('input[type="number"]', $cartContainer).length) {
			$('input[type="number"]', $cartContainer).each(function() {
				var $el = $(this),
						currentQty = $el.val();

				var itemAdd = currentQty + 1,
						itemMinus = currentQty - 1,
						itemQty = currentQty;

				var source   = $("#AjaxQty").html(),
						template = Handlebars.compile(source),
						data = {
							key: $el.data('id'),
							itemQty: itemQty,
							itemAdd: itemAdd,
							itemMinus: itemMinus
						};

				// Append new quantity selector then remove original
				$el.after(template(data)).remove();
			});
		}
	};

	qtySelectors = function() {
		// Change number inputs to JS ones, similar to ajax cart but without API integration.
		// Make sure to add the existing name and id to the new input element
		var numInputs = $('input[type="number"]');

		if (numInputs.length) {
			numInputs.each(function() {
				var $el = $(this),
						currentQty = $el.val(),
						inputName = $el.attr('name'),
						inputId = $el.attr('id');

				var itemAdd = currentQty + 1,
						itemMinus = currentQty - 1,
						itemQty = currentQty;
				if($el.attr('id') != undefined){
					var key_new = $el.attr('id').replace('updates_','');
				}
				console.log($el);
				var source   = $("#JsQty").html(),
						template = Handlebars.compile(source),
						data = {
							key: key_new,
							itemQty: itemQty,
							itemAdd: itemAdd,
							itemMinus: itemMinus,
							inputName: inputName,
							inputId: inputId,
							price_new: $el.attr('item-price')/100
						};

				// Append new quantity selector then remove original
				$el.after(template(data)).remove();
			});

			// Setup listeners to add/subtract from the input
			$('.js-qty__adjust').on('click', function() {
				var $el = $(this),
						id = $el.data('id'),
						$qtySelector = $el.siblings('.js-qty__num'),
						qty = parseInt($qtySelector.val().replace(/\D/g, ''));

				var qty = validateQty(qty);

				// Add or subtract from the current quantity
				if ($el.hasClass('js-qty__adjust--plus')) {
					qty += 1;
				} else {
					qty -= 1;
					if (qty <= 1) qty = 1;
				}
				// Update the input's number
				$qtySelector.val(qty);
			});
		}
	};

	validateQty = function (qty) {
		if((parseFloat(qty) == parseInt(qty)) && !isNaN(qty)) {
			// We have a valid number!
		} else {
			// Not a number. Default to 1.
			qty = 1;
		}
		return qty;
	};

	module = {
		init: init,
		load: loadCart
	};

	return module;

}(ajaxCart || {}, jQuery));