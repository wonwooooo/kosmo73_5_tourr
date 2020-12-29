$(function(){
	$('.searchtext').hover(
		function(){$(this).css("background-position","0 -500px")},
		function(){$(this).css("background-position","0 0")}
	)
	
	if($('.searchtext').val() == null)
			{
			$('.searchtext').css("background-position","0 0");
		
			}
			
	
})