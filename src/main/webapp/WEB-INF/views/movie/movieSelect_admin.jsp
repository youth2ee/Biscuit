<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieSelect_admin.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/design/set2.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/design/demo.css" rel="stylesheet" >

<%-- <link href="${pageContext.request.contextPath}/resources/css/select/demo.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/select/select.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/select/skinborder.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/select/selectList.css" rel="stylesheet" > --%>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200" rel="stylesheet">
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200'>
<!-- <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'> -->
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css'>

      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select/style.css">

<style>
	body #cdawrap {
		--cda-top: 15px;
		--cda-background: transparent;
		--cda-text-color: #333;
		--cda-border-color: rgba(0,0,0,0.4);
		--cda-sp-color: #999;
	}
</style>


</head>
<body>
<div id="total">
<header>
<c:import url="../layout/header.jsp"/>
</header>

<section>
<div id="sec">

<div id = "secTitle">
<h1>관리자 모드 (새로 개관한 극장을 추가하기)</h1>
</div>

<!--  -->
		

<!--  -->
<div id="sec1">
<div class="wrapper typo">영화관 지역
  <div class="list">
  <span class="placeholder">select</span>
    <ul class="list__ul">
      <li><a href="">서울</a></li>
      <li><a href="">경기</a></li>
      <li><a href="">인천</a></li>
      <li><a href="">강원</a></li>
      <li><a href="">대전/충청</a></li>
      <li><a href="">대구</a></li>
      <li><a href="">부산/울산</a></li>
      <li><a href="">경상</a></li>
      <li><a href="">광주/전라/제주</a></li>
    </ul>
  </div>
</div>
</div>


<!--  -->


<div id="sec2">
<div>
<span class="input input--yoshiko" style="width: 300px;">
	<input class="input__field input__field--yoshiko" type="text" id="input-10" style="width: 300px;" />
	<label class="input__label input__label--yoshiko" for="input-10" style="width: 300px;" >
		<span class="input__label-content input__label-content--yoshiko" data-content="새로 개관할 극장명" style="width: 300px;" >
		새로 개관할 극장명</span>
	</label>
</span>
</div>

<div>
<span class="input input--yoshiko" style="width: 300px;">
	<input class="input__field input__field--yoshiko" type="text" id="input-10" style="width: 300px;" />
	<label class="input__label input__label--yoshiko" for="input-10" style="width: 300px;" >
		<span class="input__label-content input__label-content--yoshiko" data-content="극장 주소" style="width: 300px;" >
		극장 주소</span>
	</label>
</span>
</div>

<div>
<span class="input input--yoshiko" style="width: 300px;">
	<input class="input__field input__field--yoshiko" type="tel" id="input-10" style="width: 300px;" />
	<label class="input__label input__label--yoshiko" for="input-10" style="width: 300px;" >
		<span class="input__label-content input__label-content--yoshiko" data-content="극장 전화번호" style="width: 300px;" >
		극장 전화번호</span>
	</label>
</span>
</div>
</div>



</div><!-- sec -->
</section>

<footer>
d
</footer>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

    <script>
    console.clear();

    var el = {};

    $('.placeholder').on('click', function (ev) {
      $('.placeholder').css('opacity', '0');
      $('.list__ul').toggle();
    });

     $('.list__ul a').on('click', function (ev) {
       ev.preventDefault();
       var index = $(this).parent().index();
       
       $('.placeholder').text( $(this).text() ).css('opacity', '1');
       
       console.log($('.list__ul').find('li').eq(index).html());
       
       $('.list__ul').find('li').eq(index).prependTo('.list__ul');
       $('.list__ul').toggle();   
       
     });


    $('select').on('change', function (e) {
      
      // Set text on placeholder hidden element
      $('.placeholder').text(this.value);
      
      // Animate select width as placeholder
      $(this).animate({width: $('.placeholder').width() + 'px' });
      
    });
    
    
    </script>



</div>
</body>
</html>