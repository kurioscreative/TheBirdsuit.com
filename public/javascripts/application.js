$(function() {
	$(".scrollable").scrollable();
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

$('h2').each(function(index, element) {
    var heading = $(element), word_array, last_word, first_part;

    word_array = heading.html().split(/\s+/); // split on spaces
    last_word = word_array.pop();             // pop the last word
    first_part = word_array.join(' ');        // rejoin the first words together

    heading.html([first_part, ' <span class="last_bold">', last_word, '</span>'].join(''));
});


$(function() {
 
	// if the function argument is given to overlay,
	// it is assumed to be the onBeforeLoad event listener
	$("a[rel]").overlay({
 
		mask: 'black',
 
		onBeforeLoad: function() {
 
			// grab wrapper element inside content
			var wrap = this.getOverlay().find(".contentWrap");
      var href = this.getTrigger().attr("href");
			// load the page specified in the trigger
			wrap.load(href + " #video");
		}
 
	});
});