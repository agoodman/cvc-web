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
});
