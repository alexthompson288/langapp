$(document).ready(function(){
	$('#myTab a').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show')
	  // $('#myTab a[href="#custom"]').tab('show')
	  console.log('Clicked '+this)
	});	

	$('a.translate').on('click', function(e){
		e.preventDefault();
		$(this).parent().parent().removeClass('show-text').addClass('hide-text');
		$(this).parent().parent().next().removeClass('hide-text').addClass('show-text');

		console.log('this is ' + $(this).parent().parent().html());
	});
});


