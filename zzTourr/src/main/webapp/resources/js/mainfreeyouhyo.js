$(function(){

	$('#submitinput').click(
			
		function(){

			if($('#title').val().length == 0 || $('#title').val().length > 31 ||
			$('#content').val().length == 0 || $('#content').val().length > 401
			)
			{
				alert("제목과 내용은 필수입력이며, 제목은 30자, 내용은 400자 미만입니다. 다시 확인바랍니다")
				return false;
			}
			
			
		})
			
			
})