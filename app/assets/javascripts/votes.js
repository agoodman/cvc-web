$(document).ready(function() {
	$('.stat > .chicken img').click(function() {
		$('#vote_chicken')[0].checked = true;
		$('#vote_cobra')[0].checked = false;
	});
	$('.stat > .cobra img').click(function() {
		$('#vote_chicken')[0].checked = false;
		$('#vote_cobra')[0].checked = true;
	});
});
