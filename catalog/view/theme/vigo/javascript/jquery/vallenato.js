jQuery(document).ready(function($j){$j('.accordion-header').toggleClass('inactive-header');var contentwidth=$j('.accordion-header').width();$j('.accordion-content').css({'width':contentwidth});$j('.accordion-header').first().toggleClass('active-header').toggleClass('inactive-header');$j('.accordion-content').first().slideDown().toggleClass('open-content');$j('.accordion-header').click(function(){if($j(this).is('.inactive-header')){$j('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');$j(this).toggleClass('active-header').toggleClass('inactive-header');$j(this).next().slideToggle().toggleClass('open-content')}else{$j(this).toggleClass('active-header').toggleClass('inactive-header');$j(this).next().slideToggle().toggleClass('open-content')}});return false});
