<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복검사</title>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->

<!--sist스타일시트  -->
<link rel="stylesheet" href="https://www.sist.co.kr/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="https://www.sist.co.kr/css/board.css" type="text/css" media="all" />

<style type="text/css">
#idWrap{width: 468px; height: 330px; margin: 0px auto}
#background{ width: 464px; height: 326px; background: #ffffff url(images/id_background.png) no-repeat; position: relative;}
#inputWrap{position:absolute; top:186px; left:103px;}
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btn").addEventListener("click",sendId);
}

function sendId(){
	//2.현재창에 입력된 id를 얻어와서 부모창(opener)에 전달
	opener.window.document.frm.id.value=document.subFrm.id.value;
	//3.자식창을 닫기
	self.close();
}
</script>
</head>
<body id="idWrap">
	<div id="background">
	<div id="inputWrap">
	<form name="subFrm">
		<input type="text" name="id" value="${param.id}" class="inputTxt inputIdtype" />
		<input type="button" value="사용" id="btn" class="btn btn-success btn-sm" />
	</form>
	</div>
	</div>
</body>
</html>