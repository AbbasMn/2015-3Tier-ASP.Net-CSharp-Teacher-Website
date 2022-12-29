// JavaScript Document
    jQuery('.top_scroll a').click(function(){
		jQuery(this).stop().animate({opacity: '0'}, 200 ,function(){
			jQuery('html, body').animate({scrollTop: '0'} ,600,function(){
	 jQuery('.top_scroll a').stop().animate({opacity: '1'});					
				});
			});
		return false;
	});
	jQuery(window).scroll(function () {
		if (jQuery(this).scrollTop() > 200) {
			jQuery('a[href=#top]').fadeIn();
		} else {
			jQuery('a[href=#top]').fadeOut();
		}
	});