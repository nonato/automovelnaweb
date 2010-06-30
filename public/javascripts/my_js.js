
$(function() {
  $('#forgot_username_link').tipsy({gravity: 'w'});   
});

$(document).ready(function() {

	$(".signin").click(function(e) {          
		e.preventDefault();
		$("fieldset#signin_menu").toggle();
		$(".signin").toggleClass("menu-open");
	});
	
	$("fieldset#signin_menu").mouseup(function() {
		return false
	});
	$(document).mouseup(function(e) {
		if($(e.target).parent("a.signin").length==0) {
			$(".signin").removeClass("menu-open");
			$("fieldset#signin_menu").hide();
		}
	});			
	
});


window.onload = function() {
	var paras = document.getElementById('content').getElementsByTagName('p');
	if(paras.length) {
		paras[0].className = paras[0].className + ' intro';
	}
};


$(document).ready(function() {
	//area 1
	$('.fade-area-1').children().hover(function() {
		$(this).siblings().stop().fadeTo(500,0.5);
	}, function() {
		$(this).siblings().stop().fadeTo(500,1);
	});
});


jQuery.fn.toggleText = function(a,b) {
return   this.html(this.html().replace(new RegExp("("+a+"|"+b+")"),function(x){return(x==a)?b:a;}));
}

$(document).ready(function(){
	$('.tgl').before('<span>busca detalhada</span>');
	$('.tgl').css('display', 'none')
	$('span', '#busca_detalhada').click(function() {
		$(this).next().slideToggle('slow')
		.siblings('.tgl:visible').slideToggle('fast');
	
		$(this).toggleText('busca detalhada','ocultar busca detalhada')
		.siblings('span').next('.tgl:visible').prev()
		.toggleText('busca detalhada','ocultar busca detalhada')
	});
})