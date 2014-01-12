$(document).ready(function(){
	$('#myTab a').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show')
	  // $('#myTab a[href="#custom"]').tab('show')
	  // console.log('Clicked '+this)
	});	

	$('a.translate').on('click', function(e){
		e.preventDefault();
		var target = $(this).parent().parent().find('.target-content-box');
		console.log('target is ' + target.get());
		var nativecontent = $(this).parent().parent().find('.native-content-box');
		console.log('native is ' + nativecontent.get());
		target.toggle();
		nativecontent.toggle();
	
		
	});

	$('a.add-contentuser').on('click', function(e){
		e.preventDefault();
		var addsign = $(this).find('span');
		console.log('addsign is ' + addsign.get());
		addsign.toggleClass('glyphicon-plus-sign glyphicon-minus-sign');
		var word_id = $(this).parent().parent().data('word');
		var user_id = $(this).parent().parent().data('user');
		console.log('word id is '+ word_id);
		$.ajax({
			type: 'POST',
			url: '/contentusers',
			dataType: 'json',
			data: {contentuser: {word_id: word_id, user_id: user_id}},
			success: function(data){
				// console.log('AJAX CALL SUCCESS. Data: ' + data);
			}
		});
		
	});
});


