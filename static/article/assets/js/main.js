/*
	main js
*/

(function($) {

	skel.breakpoints({
		xlarge:	'(max-width: 1680px)',
		large:	'(max-width: 1280px)',
		medium:	'(max-width: 980px)',
		small:	'(max-width: 736px)',
		xsmall:	'(max-width: 480px)'
	});

	$(function() {

		var	$window = $(window),
			$body = $('body'),
			$menu = $('#menu'),
			$sidebar = $('#sidebar'),
			$main = $('#main');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 100);
			});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on medium.
			skel.on('+medium -medium', function() {
				$.prioritize(
					'.important\\28 medium\\29',
					skel.breakpoint('medium').active
				);
			});

		// IE<=9: Reverse order of main and sidebar.
			if (skel.vars.IEVersion <= 9)
				$main.insertAfter($sidebar);

		// Menu.
			$menu
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'right',
					target: $body,
					visibleClass: 'is-menu-visible'
				});

		// Search (header).
			var $search = $('#search'),
				$search_input = $search.find('input');

			$body
				.on('click', '[href="#search"]', function(event) {

					event.preventDefault();

					// Not visible?
						if (!$search.hasClass('visible')) {

							// Reset form.
								$search[0].reset();

							// Show.
								$search.addClass('visible');

							// Focus input.
								$search_input.focus();
 
                                                        // Reset Search div
                                                                $('.sub-visible').removeClass('sub-visible').addClass('sub-nav');

						}

				});

			$search_input
				.on('keydown', function(event) {

                                     if (event.keyCode == 13){
                                          event.preventDefault() ;
                                          $('.sub-visible').removeClass('sub-visible').addClass('sub-nav');
					    $.get(
						$search.attr('action'),
						$search.serialize(),
						function(data) {
						    //$searchResult.html(data['status']);
                                                    var $search_html = '';
                                                    $.each( data, function( key, value ) {
                                                      var length = 25;
                                                      var trimmedString = value['title'].length > length ? value['title'].substring(0, length - 3) + '...' : value['title'];
                                                      $search_html += '<a title="'+value['title']+'" href="/detail/'+value['id']+'">'+trimmedString+'</a><br />';
                                                    });

                                                    $('.sub-nav').html($search_html);
                                                    $('.sub-nav').removeClass('sub-nav').addClass('sub-visible');
						}
					    );
                                     }

				     if (event.keyCode == 27)
				         $search_input.blur();

				})
				.on('blur', function() {
					window.setTimeout(function() {
						$search.removeClass('visible');
					}, 100);
				});

		// Intro.
			var $intro = $('#intro');

			// Move to main on <=large, back to sidebar on >large.
				skel
					.on('+large', function() {
						$intro.prependTo($main);
					})
					.on('-large', function() {
						$intro.prependTo($sidebar);
					});

	});

})(jQuery);
