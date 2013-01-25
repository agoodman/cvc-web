$(document).ready(function() {
	$('#chicken').click(function() {
		$('#vote_chicken')[0].checked = true;
		$('#vote_cobra')[0].checked = false;
		$('#drawer').show();
		$('#chicken').addClass('active');
		$('#cobra').removeClass('active');
	});
	$('#cobra').click(function() {
		$('#vote_chicken')[0].checked = false;
		$('#vote_cobra')[0].checked = true;
		$('#drawer').show();
		$('#chicken').removeClass('active');
		$('#cobra').addClass('active');
	});
});
