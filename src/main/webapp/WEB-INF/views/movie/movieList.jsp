<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>영화 그 이상의 감동 CGV</title>

<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/layout/footer.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/card.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/read_more.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/rating.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/ribbon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/heart.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/modal.css" rel="stylesheet">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'>
<!-- <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:100'> -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
</head>
<body>

<!-- header -->
<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<!-- section -->
<section>

<!-- 로그인  정보 -->
<input type="hidden" id="memberid" value="${member.id}">
<!-- 로그인 정보 끝  -->

<!-- top ten -->
 <div id="poster">
<c:forEach items="${movieList}" var="mlist" varStatus="status">
<div class="card">
<!-- <!-- <div class="ribbon-3">
</div> -->

<!-- 랭킹 순위 표시하기 
varstatus가 1이면 varstatus index로 랭킹 1 표시하기
10까지만 표시하기
-->
<%-- ${status.index} --%>

<div class="ribbon-2">
  <div class="checkboxes-container">
    <div class="control-group">
        <input type="checkbox" class="red-heart-checkbox heart" id="red-check${mlist.movieInfo_num}">   
      <label for='red-check${mlist.movieInfo_num} heartl'>
      <c:if test="${status.count lt 11}"><div class="ranking">${status.count}</div></c:if>
      </label>
    </div>

  </div>
</div>



<div class="thumb" style="background-image: url('${mlist.movieInfo_poster}');">
<%-- <img class="pimg" alt="" src="${mlist.movieInfo_poster}"> --%>
</div>

<div class="infos">
<div>

<div style="float: left; height: 30px; margin-bottom: 4px;">
<span class="flag">
 <c:choose>
<c:when test="${mlist.movieInfo_grade eq '전체 관람가'}">
<img class="age" alt="" src="../resources/images/movieSelect/m1.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '12세 관람가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m2.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '15세 관람가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m3.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '청소년 관람불가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m4.png"></c:when>
</c:choose>
 </span>
</div>
 
<div style="float: left;">
<h2 class="title" id="${mlist.movieInfo_num}" >${mlist.movieInfo_title}</h2>
</div>
 
</div> 

<h3 class="date">예매율 : ${mlist.movieInfo_rating}</h3> 
<h3 class="date">평점 : ${mlist.movieInfo_star}</h3> 
<h3 class="seats">상영시간  : ${mlist.movieInfo_time}분</h3>
<h3 class="date">개봉일 : ${mlist.movieInfo_date}</h3> 

<p class="txt">
</p>


<!-- 별점 테스트  -->
<div class="star-rating rating${status.index}">
  <fieldset>
    <input type="hidden" class="realstar" value="${mlist.movieInfo_star}">
    <input type="hidden" class="movienum" value="${mlist.movieInfo_num}">
    <input type="hidden" id="myGrade${mlist.movieInfo_num}" class="myGrade">
    <input type="radio" id="${mlist.movieInfo_num}star5" class="star star5" name="rating${mlist.movieInfo_num}" value="5" />
    <label for="${mlist.movieInfo_num}star5" class="starlab starl5" title="5"></label>
    <input type="radio" id="${mlist.movieInfo_num}star4" class="star star4" name="rating${mlist.movieInfo_num}" value="4" />
    <label for="${mlist.movieInfo_num}star4" class="starlab starl4" title="4"></label>
    <input type="radio" id="${mlist.movieInfo_num}star3" class="star star3" name="rating${mlist.movieInfo_num}" value="3" />
    <label for="${mlist.movieInfo_num}star3" class="starlab starl3" title="3"></label>
    <input type="radio" id="${mlist.movieInfo_num}star2" class="star star2" name="rating${mlist.movieInfo_num}" value="2" />
    <label for="${mlist.movieInfo_num}star2" class="starlab starl2" title="2"></label>
    <input type="radio" id="${mlist.movieInfo_num}star1" class="star star1" name="rating${mlist.movieInfo_num}" value="1" />
    <label for="${mlist.movieInfo_num}star1" class="starlab starl1" title="1"></label>
  </fieldset>
</div>
<!-- 별점 테스트 끝 -->


<!-- modal 띄울가 말까 -->
<h3 class="details myBtn" style="float: left;" title="${mlist.movieInfo_num}">상세보기</h3>
<h3 class="under" style="float: left;">  /  </h3>

<form action="./movieSelect" method="get" class="frm" >
<input type="hidden" name="movieInfo_name" value="${mlist.movieInfo_title}">
<button class="myBtn2"><h3 class="details" style="float: left;" title="${mlist.movieInfo_title}">예매하기</h3></button>
</form>


</div><!-- infos -->



</div><!-- card -->

<c:if test="${(status.index+1)%5 == 0}">
<div class="posterDiv" style="height: 0px;"></div>
</c:if>

</c:forEach>

<c:forEach items="${movieList}" var="mlist">
<div class="newmodal"> 
<div class="mask" role="dialog" id="${mlist.movieInfo_num}modal"></div>
	
<div class="elegant-modal" role="alert">
	<button class="close" role="button">X</button>
	
	
	<table style="margin: 0 auto;"> 
	<tr class="trm" style="width: 390px;">
	
	<td class="tdm1" style="text-align: right;">
	<h1 class="title-modal">${mlist.movieInfo_title}</h1></td>
	
	<td class="tdm2" style="text-align: left; padding-top: 20px;"> 
<c:choose>
<c:when test="${mlist.movieInfo_grade eq '전체 관람가'}">
<img style="border-radius: 10px;" alt="" src="../resources/images/movieSelect/m1.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '12세 관람가'}">
<img style="border-radius: 10px;"  alt="" src="../resources/images/movieSelect/m2.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '15세 관람가'}">
<img style="border-radius: 10px;"  alt="" src="../resources/images/movieSelect/m3.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '청소년 관람불가'}">
<img style="border-radius: 10px;"  alt="" src="../resources/images/movieSelect/m4.png"></c:when>
</c:choose>
</td>
	</tr>
	</table>
	
	<hr class="line-modal">
	
	<div>
	<div class="paragraph-modal" style="float: left;"> 
	
	<table class="tmodal paragraph-modal" style="position: relative; left: 256px; top:20px; text-align: left; margin-bottom: 20px;"> 
	<tr>
	<td style="width: 80px">장르</td>
	<td>${mlist.movieInfo_genre}</td>
	</tr>
	
	<tr>
	<td style="width: 80px">개봉일</td>
	<td>${mlist.movieInfo_date}</td>
	</tr>
	
	<tr>
	<td style="width: 80px">상영시간</td>
	<td>${mlist.movieInfo_time}</td>
	</tr>
	
	<tr>
	<td style="width: 80px">제작국가</td>
	<td>${mlist.movieInfo_nation}</td>
	</tr>
	
	<tr>
	<td style="width: 80px">제작년도</td>
	<td>${mlist.movieInfo_year}</td>	
	</tr>
	
	</table>
	
	<p class="paragraph-modal">${mlist.movieInfo_plot}</p> 
	
	</div>

	<div style="float: left;"> 
	<img class="pm" alt="" src="${mlist.movieInfo_poster}"> 
	</div> 
	
	</div>
	<!-- <button class="content-button-close">CLOSE</button> -->
	
</div> 

</div>
</c:forEach>


 <button class="btn more-trigger">더보기</button>
</div>

</section>

<!-- footer -->
<footer style="color: black;
    text-shadow: none;
    font-weight: normal;">
		<c:import url="../layout/footer.jsp" />
</footer>


<script type="text/javascript">
/* 위치 초기화 */
var x = $('html').offset();

$(function(){
	$("html, body").animate({ scrollTop: 0 }, "slow"); 
});
/* 위치 초기화 끝 */

 
 
 /* 저장 된 별점 가져오기 */
 var gradeList = [];
 var numList = [] ;
<c:forEach items="${myGrade}" var="grade">
	// 별점을 준 영화 번호
	numList.push("${grade.movieInfo_num}");
	// 내가 준 별점
	gradeList.push("${grade.movieGrade_star}"); 
</c:forEach> 

 for (var i = 0; i <gradeList.length; i++){
	 // myGrade + 영화번호를 아이디로 가지는 항목에 그에 해당하는 별점 넣어주기
	 $("#myGrade"+numList[i]).val(gradeList[i]);
 }
 


/* 저장 된 하트 값 져오기  */
var heartlist = [];
	<c:forEach items="${hearts}" var="heart"> 
		// DB에서 해당 아이디가 좋아요한 영화 번호를 가져와서 배열에 넣음
		heartlist.push("${heart.movieInfo_num}"); 
	</c:forEach> 
for (var i = 0; i < heartlist.length; i++) {
	// red-check + 영화번호를 아이디로 가지는 항목에 하트 체크 여부 값 넣어주기
 	$("input:checkbox[id='red-check" + heartlist[i] + "']").attr('checked', true);
}

/* read more */

 $(document).ready(function() {
  $('body').showMoreItems();
});

 
(function($) {
  $.fn.showMoreItems = function(options) {

    var $totalItems = $('.card').length,
        $visibleItems = $('.card:visible').length,
        settings = $.extend({}, $.fn.showMoreItems.defaults, options),
        i = settings.count,
        countLess = settings.count - 1;
  	 $('.card:lt(' + settings.count + ')').show();

    $('.more-trigger').click(function(el) {
      el.preventDefault();

      if ($visibleItems !== $totalItems) {
        if(i + settings.count <= $totalItems) {
          $visibleItems = i += settings.count;
          $('.card:lt('+ i +')').show();

          if(i == $totalItems) {
            $('.more-trigger').text("처음으로");
          }

        } else if (i !== $totalItems) {
          $('.card:gt(' + countLess + ')').show();
          $('.more-trigger').text("처음으로");
          $visibleItems = $totalItems;
          i = $totalItems;
        }
      } else if($visibleItems === $totalItems) {
        $('.card:gt(' + countLess + ')').hide();
        $('.more-trigger').text("더보기");
        $visibleItems = settings.count;
        i = settings.count;
      }
    });
  }

  $.fn.showMoreItems.defaults = {
    count: 15
  };
})(jQuery);

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-36251023-1']);
_gaq.push(['_setDomainName', 'jqueryscript.net']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

var mnum = ""; //영화번호
var id = $('#memberid').val().trim(); //로그인되어있는지 확인

/* info */
 $('.card').on('mouseover',function() {
	var ostar = $(this).find('.myGrade').val();
	mnum = $(this).find('.movienum').val();
/* 	console.log(ostar);*/
	console.log("aa"+mnum); 
	

	 if (ostar > 8 && ostar <= 10) {
		console.log("ostar"+ostar);
		$(this).find('#'+mnum+'star5').attr('checked','checked');
	}else if (ostar > 6 && ostar <= 8) {
		console.log("ostar"+ostar);
		$(this).find('#'+mnum+'star4').attr('checked','checked');
	}else if (ostar > 4 && ostar <= 6) {
		console.log("ostar"+ostar);
		$(this).find('#'+mnum+'star3').attr('checked','checked');
	}else if (ostar > 2 && ostar <= 4) {
		console.log("ostar"+ostar);
		$(this).find('#'+mnum+'star2').attr('checked','checked');
	}else if (ostar > 0 && ostar <= 2) {
		console.log("ostar"+ostar);
		$(this).find('#'+mnum+'star1').attr('checked','checked');
	} else{
		$(this).find('#'+mnum+'star1').attr('checked',false);
		$(this).find('#'+mnum+'star2').attr('checked',false);
		$(this).find('#'+mnum+'star3').attr('checked',false);
		$(this).find('#'+mnum+'star4').attr('checked',false);
		$(this).find('#'+mnum+'star5').attr('checked',false);
	}
}); 



/* 별점 */
$('.starlab').click(function() {
	x = $(this).closest('.card').offset();
	$('html').animate({scrollTop : x.top}, 400);
	
	var mstar =$(this).attr('title');
	mstar = mstar*2;
	
	$(this).closest('.infos').addClass('.tact');
	
	mnum = $(this).closest('.star-rating').find('.movienum').val();


	if (id != '') {
		 $.ajax({
			data : {
				id:id,
				movieInfo_num:mnum,
				movieGrade_star:mstar
				},
			type : "POST",
			url : "./movieListStar",
			success : function(data) {
				
		 		if (data == 1) {
					alert("별점 추가 성공");
				} else {
					alert("별점 추가 실패");
				} 
				
			}
		}); 
		
	} else{		
		alert('로그인 해주세요');
	} 

});
 
 
//하트
$('.checkboxes-container').click(function() {
	/* var mname = $(this).closest('.ribbon-2').siblings('.infos').find('.title').text(); */
	mnum = $(this).closest('.ribbon-2').siblings('.infos').find('.title').attr('id').trim();
	var mheart = 0;
	if (id != '') {
		//로그인 되어있을 때만
		//영화 하트 체크 했으면 1
		//영화 하트 체크 안했으면 0
		
		if($(this).find('.heart').prop("checked") == true){
			mheart = 0;
			$(this).find('.heart').prop("checked", false);
			console.log(id);
			console.log(mnum);
			console.log(mheart);
		} else if ($(this).find('.heart').prop("checked") == false) {
			mheart = 1;
			$(this).find('.heart').prop("checked",true);	
			console.log(id);
			console.log(mnum);
			console.log(mheart);
		}
		
		
		//받은 정보 ajax로 보내기
		 $.ajax({
			data : {
				id:id,
				movieInfo_num:mnum,
				movieGrade_heart:mheart
				},
			type : "POST",
			url : "./movieListHeart",
			success : function(data) {
				
	/* 	 		if (data == 1) {
					alert("성공");
				} else {
					alert("실패");
				} */
				
			}
		}); 

	} else {
		alert('로그인 해주세요')
	}
	
});

//예약
$(".myBtn2").on("click", function(){
	$(this).submit(); 
	 /* $(this).siblings('.frm').submit();  */
});



//모달
// Elegant Modal

// Function to open Modal when the page finishes loading (with time to display animation)
/* setTimeout(function(){
	$(".mask").addClass("active");
}, 500); */

// Click event function to open modal (active)
$(".myBtn").on("click", function(event){
	var t = $(this).attr('title');
	$('#'+t+'modal').addClass('active');
});


$(".elegant-modal").on("mouseenter", function(event){
   $(".card").off("hover");
});


// Função para fechar o modal.
 function closeModal(){
	 $(".mask").removeClass("active");  //Remove the active class
} 


// Function to close the modal screen
//$(this).closest('.infos').siblings('.newmodal').find(".close")

 $(".close, .mask").on("click", function(){
  closeModal();
}); 

// Closes the modal with the button within the content
 $(".content-button-close").click(function(){
	closeModal();
}); 

// or the keyboard (esc)
 $(document).keyup(function(e) {
  if (e.keyCode == 27) {
    closeModal();
  }
}); 

$('.elegant-modal').mouseenter(function(event) {
	event.preventDefault();
});

</script>

</body>
</html>
