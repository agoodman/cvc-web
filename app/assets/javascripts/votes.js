$(document).ready(function() {
	$('#chicken').click(function() {
		$('#vote_chicken').val(true);
		$('#vote_cobra').val(false);
		$('#drawer').show({slide: 'down'});
		$('#chicken').addClass('active');
		$('#cobra').removeClass('active');
	});
	$('#cobra').click(function() {
		$('#vote_chicken').val(false);
		$('#vote_cobra').val(true);
		$('#drawer').show({slide: 'down'});
		$('#chicken').removeClass('active');
		$('#cobra').addClass('active');
	});
	$('section.votes > span.show').click(function() {
		$.getScript('/votes.js');
		return false;
	});
	$('section.votes > span.hide').click(function() {
		$('section.votes > ul').slideUp(function() {
			$('section.votes > ul li').remove();
		});
		$('section.votes > span.show').show();
		$('section.votes > span.hide').hide();
	});
});
