$(document).ready(function(){
	$("#tipo_elemento_icono").on("click change",function(){
		var glyficon= $(this).val();
		$("div#icon").html('<i class="'+glyficon+'"></i>');
	});
});