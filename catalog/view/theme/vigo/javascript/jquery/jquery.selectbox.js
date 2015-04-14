// JavaScript Document
/*
 * jQuery SelectBox Styler v1.0.1
 * http://dimox.name/styling-select-boxes-using-jquery-css/
 *
 * Copyright 2012 Dimox (http://dimox.name/)
 * Released under the MIT license.
 *
 * Date: 2012.10.07
 *
 */

(function($) {
	$.fn.selectbox = function(options) {
        var settings = $.extend({ styleClass: '' }, options);
		$(this).each(function() {
            var styleClass = settings.styleClass;
			var select = $(this);
			if (select.prev('span.selectbox').length < 1) {
				function doSelect() {
					var option = select.find('option');
					var optionSelected = option.filter(':selected');
					var optionText = option.filter(':first').text();
                    if(option.filter(':first').attr('data-image'))
                        optionText = '<img src="' + option.filter(':first').attr('data-image') + '"/>' + optionText;
                    
					if (optionSelected.length){
                        optionText = optionSelected.text();
                        if(optionSelected.attr('data-image'))
                            optionText = '<img src="' + optionSelected.attr('data-image') + '"/>' + optionText;

                    }
                    
					var ddlist = '';
					for (i = 0; i < option.length; i++) {
						var selected = '';
						var disabled = ' class="disabled"';
						if (option.eq(i).is(':selected')) {
							selected = ' class="selected sel"';
							ddlist += '<li' + selected + '><a>'
                            if(option.eq(i).attr('data-image'))
                                ddlist += '<img src="' + option.eq(i).attr('data-image') + '"/>';
                            ddlist += option.eq(i).text() +'</a></li>';
						}
						else
						if (option.eq(i).is(':disabled')) {
							selected = disabled;
							ddlist += '<li' + selected + '><a>'+ option.eq(i).text() +'</a></li>';
						}
						else {
							ddlist += '<li' + selected + '><a onclick="'+option.eq(i).val()+'">';
                            if(option.eq(i).attr('data-image'))
                                ddlist += '<img src="' + option.eq(i).attr('data-image') + '"/>';
                            ddlist += option.eq(i).html() +'</a></li>';
						}
						//ddlist += '<li' + selected + '>'+ option.eq(i).text() +'</li>';
						//ddlist += '<li' + selected + '><a href="'+option.eq(i).val()+'">'+ option.eq(i).html() +'</a></li>';
					}
					var selectbox =
						$('<span class="selectbox '+styleClass+'" style="display:inline-block;position:relative">'+
								'<div class="select" style="float:left;position:relative;z-index:10000"><div class="text">' + optionText + '</div>'+
									'<b class="trigger"><i class="arrow"></i></b>'+
								'</div>'+
								'<div class="dropdown" style="position:absolute;z-index:9999;overflow:auto;overflow-x:hidden;list-style:none">'+
									'<ul>' + ddlist + '</ul>'+
								'</div>'+
							'</span>');
					select.before(selectbox).css({position: 'absolute', top: -9999});
					var divSelect = selectbox.find('div.select');
					var divText = selectbox.find('div.text');
					var dropdown = selectbox.find('div.dropdown');
					var li = dropdown.find('li');
					var selectHeight = selectbox.outerHeight();
					if (dropdown.css('left') == 'auto') dropdown.css({left: 0});
					if (dropdown.css('top') == 'auto') dropdown.css({top: selectHeight});
					var liHeight = li.outerHeight();
					var position = dropdown.css('top');
					dropdown.hide();
                    dropdown.css('width', dropdown.parent().width()+"px");
					/* Ð¿Ñ€Ð¸ ÐºÐ»Ð¸ÐºÐµ Ð½Ð° Ð¿ÑÐµÐ²Ð´Ð¾ÑÐµÐ»ÐµÐºÑ‚Ðµ */
					divSelect.mouseover(function() {
						/* ÑƒÐ¼Ð½Ð¾Ðµ Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ */
						var topOffset = selectbox.offset().top;
						var bottomOffset = $(window).height() - selectHeight - (topOffset - $(window).scrollTop());
						if (bottomOffset < 0 || bottomOffset < liHeight * 6)	{
							dropdown.height('auto').css({top: 'auto', bottom: position});
							if (dropdown.outerHeight() > topOffset - $(window).scrollTop() - 20 ) {
								dropdown.height(Math.floor((topOffset - $(window).scrollTop() - 20) / liHeight) * liHeight);
							}
						} else if (bottomOffset > liHeight * 6) {
							dropdown.height('auto').css({bottom: 'auto', top: position});
							if (dropdown.outerHeight() > bottomOffset - 20 ) {
								dropdown.height(Math.floor((bottomOffset - 20) / liHeight) * liHeight);
							}
						}
                        dropdown.css('width', dropdown.parent().width()+"px");

						$('span.selectbox').css({zIndex: 1}).removeClass('focused');
						selectbox.css({zIndex: 3});
						if (dropdown.is(':hidden')) {
							$('div.dropdown:visible').hide();
							dropdown.fadeIn('fast');
						} 
						return false;
					});
                    $('span.selectbox').mouseleave(function(){
                        dropdown.fadeOut('fast');
                        return false;
                    });
					/* Ð¿Ñ€Ð¸ Ð½Ð°Ð²ÐµÐ´ÐµÐ½Ð¸Ð¸ ÐºÑƒÑ€ÑÐ¾Ñ€Ð° Ð½Ð° Ð¿ÑƒÐ½ÐºÑ‚ ÑÐ¿Ð¸ÑÐºÐ° */
					li.hover(function() {
						$(this).siblings().removeClass('selected');
					});
					var selectedText = li.filter('.selected').text();
					/* Ð¿Ñ€Ð¸ ÐºÐ»Ð¸ÐºÐµ Ð½Ð° Ð¿ÑƒÐ½ÐºÑ‚ ÑÐ¿Ð¸ÑÐºÐ° */
					li.filter(':not(.disabled)').click(function() {
						var liText = $(this).text();
						if ( selectedText != liText ) {
							$(this).addClass('selected sel').siblings().removeClass('selected sel');
							option.removeAttr('selected').eq($(this).index()).attr('selected', true);
							selectedText = liText;
							divText.text(liText);
							select.change();
						}
						dropdown.hide();
					});
					dropdown.mouseout(function() {
						dropdown.find('li.sel').addClass('selected');
					});
					/* Ñ„Ð¾ÐºÑƒÑ Ð½Ð° ÑÐµÐ»ÐµÐºÑ‚Ðµ */
					select.focus(function() {
						$('span.selectbox').removeClass('focused');
						selectbox.addClass('focused');
					})
					/* Ð¼ÐµÐ½ÑÐµÐ¼ ÑÐµÐ»ÐµÐºÑ‚ Ñ ÐºÐ»Ð°Ð²Ð¸Ð°Ñ‚ÑƒÑ€Ñ‹ */
					.keyup(function() {
						divText.text(option.filter(':selected').text());
						li.removeClass('selected sel').eq(option.filter(':selected').index()).addClass('selected sel');
					});
					/* Ð¿Ñ€ÑÑ‡ÐµÐ¼ Ð²Ñ‹Ð¿Ð°Ð´Ð°ÑŽÑ‰Ð¸Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¿Ñ€Ð¸ ÐºÐ»Ð¸ÐºÐµ Ð·Ð° Ð¿Ñ€ÐµÐ´ÐµÐ»Ð°Ð¼Ð¸ ÑÐµÐ»ÐµÐºÑ‚Ð° */
					$(document).on('click', function(e) {
						if (!$(e.target).parents().hasClass('selectbox')) {
							dropdown.hide().find('li.sel').addClass('selected');
							selectbox.removeClass('focused');
						}
					});
				}
				doSelect();
				// Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¸ Ð´Ð¸Ð½Ð°Ð¼Ð¸Ñ‡ÐµÑÐºÐ¾Ð¼ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ð¸
				select.on('refresh', function() {
					select.prev().remove();
					doSelect();
				})
			}
		});
	}
})(jQuery)