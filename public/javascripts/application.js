$(function() {
	$(".scrollable").scrollable();
});

$(function() {
 
	// if the function argument is given to overlay,
	// it is assumed to be the onBeforeLoad event listener
	$("a[rel]").overlay({
 
		mask: 'black',
		effect: 'apple',
 
		onBeforeLoad: function() {
 
			// grab wrapper element inside content
			var wrap = this.getOverlay().find(".contentWrap");
      var href = this.getTrigger().attr("href");
			// load the page specified in the trigger
			wrap.load(href + " #video");
		}
 
	});
});

$(function() {
    $('img[data-hover]').hover(function() {
        $(this).attr('tmp', $(this).attr('src')).attr('src', $(this).attr('data-hover')).attr('data-hover', $(this).attr('tmp')).removeAttr('tmp');
    }).each(function() {
        $('<img />').attr('src', $(this).attr('data-hover'));
    });;
});

$(function() {
  $('#artist-link').hover(
    function(){
      $('ul.sub-nav').fadeIn()
    },
    function(){
      $('ul.sub-nav').fadeOut()
    });
});
