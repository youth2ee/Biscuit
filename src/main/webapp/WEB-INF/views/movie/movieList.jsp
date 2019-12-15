<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/card.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/read_more.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/rating.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/ribbon.css" rel="stylesheet">

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'>
<!-- <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:100'> -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


</head>
<body>

<!-- header -->
<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<!-- section -->
<section>

<div class="box">
  <div class="ribbon-1"></div>

  <div class="ribbon-2"></div>

  <div class="ribbon-3"></div>

  <div class="ribbon-4">
    <div class="ribbon-content"></div>
  </div>
</div>

<!-- api -->
<!-- <img alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg"> -->

<%-- <div id="poster">
<c:forEach items="${movieList}" var="mlist" varStatus="status">

<div class="posterOne">
<img class="pimg" alt="" src="${mlist.movieInfo_poster}"><br>

<div class="pcontext">

<div class="ptitle">
<div class="page">
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
</div><!-- page -->

<div class="pname">
${mlist.movieInfo_title}
</div><!-- pname -->

</div><!-- ptitle -->

<div class="ptext">
개봉일 : ${mlist.movieInfo_date}<br>
상영시간  : ${mlist.movieInfo_time}분<br>
평점 : ${mlist.movieInfo_star}<br>
</div><!-- ptext -->

</div><!-- pcontext -->
</div><!-- posterone -->


<c:if test="${(status.index+1)%5 == 0}">
<div class="posterDiv"></div>
</c:if>

</c:forEach>

 <a href="#" class="btn more-trigger">Show More</a>

</div> --%>






<!-- poster test!!  -->

<!-- <div class="card">

  <div class="thumb">
  <img class="pimg" alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg">
  </div>
  
  <div class="infos">
    <h2 class="title">new york city
    <span class="flag">
    <img  class="age" alt="" src="../resources/images/movieSelect/m4.png">
    </span></h2>
    
    <h3 class="date">november 2 - 4</h3>
    <h3 class="seats">seats remaining: 2</h3>
    <p class="txt">
      Join us for our Live Infinity Session in
      beautiful New York City. 
    </p>
    <h3 class="details">event details</h3>
  </div>
  
</div> -->



<!-- top ten -->
 <div id="poster">
<c:forEach items="${movieList}" var="mlist" varStatus="status">
<div class="card">

<div class="ribbon-2"></div>
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
 
<div  style="float: left;">
<h2 class="title">${mlist.movieInfo_title}</h2>
</div>
 
</div> 

<h3 class="date">개봉일 : ${mlist.movieInfo_date}</h3> 
<h3 class="date">평점 : ${mlist.movieInfo_star}</h3> 
<h3 class="seats">상영시간  : ${mlist.movieInfo_time}분</h3>

<p class="txt">
Join us for our Live Infinity Session in beautiful New York City. 
</p>


<!-- 별점 테스트  -->
<div class="star-rating rating${status.index}">
  <fieldset>
  <input type="hidden" class="realstar" value="${mlist.movieInfo_star}">
  <input type="hidden" class="movienum" value="${mlist.movieInfo_num}">
    <input type="radio" id="${mlist.movieInfo_num}star5" class="star star5" name="rating" value="5" /><label for="${mlist.movieInfo_num}star5" class="starlab starl5" title="Outstanding">5</label>
    <input type="radio" id="${mlist.movieInfo_num}star4" class="star star4" name="rating" value="4" /><label for="${mlist.movieInfo_num}star4" class="starlab starl4" title="Very Good">4</label>
    <input type="radio" id="${mlist.movieInfo_num}star3" class="star star3" name="rating" value="3" /><label for="${mlist.movieInfo_num}star3" class="starlab starl3" title="Good">3</label>
    <input type="radio" id="${mlist.movieInfo_num}star2" class="star star2" name="rating" value="2" /><label for="${mlist.movieInfo_num}star2" class="starlab starl2" title="Poor">2</label>
    <input type="radio" id="${mlist.movieInfo_num}star1" class="star star1" name="rating" value="1" /><label for="${mlist.movieInfo_num}star1" class="starlab starl1" title="Very Poor">1</label>
  </fieldset>
</div>

<!-- 별점 테스트 끝 -->


<!-- modal 띄울가 말까 -->
<h3 class="details">comment</h3>
</div>


</div><!-- posterone -->


<c:if test="${(status.index+1)%5 == 0}">
<div class="posterDiv"></div>
</c:if>

</c:forEach>


</div>






<!-- 전체 리스트 -->
 <div id="poster">
<c:forEach items="${movieList}" var="mlist" varStatus="status">
<div class="card">

<div class="ribbon-2"></div>
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
 
<div  style="float: left;">
<h2 class="title">${mlist.movieInfo_title}</h2>
</div>
 
</div> 

<h3 class="date">개봉일 : ${mlist.movieInfo_date}</h3> 
<h3 class="date">평점 : ${mlist.movieInfo_star}</h3> 
<h3 class="seats">상영시간  : ${mlist.movieInfo_time}분</h3>

<p class="txt">
Join us for our Live Infinity Session in beautiful New York City. 
</p>


<!-- 별점 테스트  -->
<div class="star-rating rating${status.index}">
  <fieldset>
  <input type="hidden" class="realstar" value="${mlist.movieInfo_star}">
  <input type="hidden" class="movienum" value="${mlist.movieInfo_num}">
    <input type="radio" id="${mlist.movieInfo_num}star5" class="star star5" name="rating" value="5" /><label for="${mlist.movieInfo_num}star5" class="starlab starl5" title="Outstanding">5</label>
    <input type="radio" id="${mlist.movieInfo_num}star4" class="star star4" name="rating" value="4" /><label for="${mlist.movieInfo_num}star4" class="starlab starl4" title="Very Good">4</label>
    <input type="radio" id="${mlist.movieInfo_num}star3" class="star star3" name="rating" value="3" /><label for="${mlist.movieInfo_num}star3" class="starlab starl3" title="Good">3</label>
    <input type="radio" id="${mlist.movieInfo_num}star2" class="star star2" name="rating" value="2" /><label for="${mlist.movieInfo_num}star2" class="starlab starl2" title="Poor">2</label>
    <input type="radio" id="${mlist.movieInfo_num}star1" class="star star1" name="rating" value="1" /><label for="${mlist.movieInfo_num}star1" class="starlab starl1" title="Very Poor">1</label>
  </fieldset>
</div>

<!-- 별점 테스트 끝 -->


<!-- modal 띄울가 말까 -->
<h3 class="details">comment</h3>
</div>


</div><!-- posterone -->


<c:if test="${(status.index+1)%5 == 0}">
<div class="posterDiv"></div>
</c:if>

</c:forEach>

<!--  <a href="#" class="btn more-trigger">Show More</a> -->
 <button class="btn more-trigger">더보기</button>

</div>







<!-- poster test end  -->




<!-- api -->
<%-- 				
<ol class="officeRank rounded-list">
					
<c:forEach begin="0" end="9" var="i">
<li class="active" id="Rank_${i}"></li>
</c:forEach>

</ol>
  --%>
  
<input type="hidden" id="r0">
<input type="hidden" id="r1">
<input type="hidden" id="r2">
<input type="hidden" id="r3">
<input type="hidden" id="r4">
<input type="hidden" id="r5">
<input type="hidden" id="r6">
<input type="hidden" id="r7">
<input type="hidden" id="r8">
<input type="hidden" id="r9">





</section>

<!-- footer -->
<footer></footer>


<script type="text/javascript">
/* 위치 초기화 */
var x = $('html').offset();

$(function(){
	$("html, body").animate({ scrollTop: 0 }, "slow"); 
});
/* 위치 초기화 끝 */

var mnum = ""; //영화번호
/* var mstar = ""; //내가 입력한 평점
var ostar = ""; //db에 입력된 평점 */


 //어제 날짜 구하기
var nowDate = new Date();
var yesterDate = nowDate.getTime() - (1*24*60*60*1000);
nowDate.setTime(yesterDate);

var yesterYear = nowDate.getFullYear();
var yesterMonth = nowDate.getMonth() +1;
var yesterDay = nowDate.getDate();

if(yesterMonth < 10){ yesterMonth = "0"+ yesterMonth; }
if(yesterDay < 10){ yesterDay = "0" + yesterDay; }

var yesterDate = yesterYear + "" + yesterMonth + "" + yesterDay;
yesterDate = yesterDate.trim();
//alert(yesterDate);
////////////////////////////////////////////////////////////////

$.ajax({
	type: "GET",
	url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
	async: false,
	data: {
		key: "${key}",
		targetDt: yesterDate
	},
	success: function(data) {
		
		
		
		
		
		
		
		
		$.ajax({
			type: "GET",
			url: "./movieapi",
			data: {
				rank1:data.boxOfficeResult.dailyBoxOfficeList[0].rank
			},
			success: function(data) {
				alert("성공");
			}
			
		});
		
/* 		$('#r0').attr('title');
		$('#r0').attr('name');
		$('#r0').val();
	
		alert($('#r0').attr('title'));
		alert($('#r0').attr('name'));
		alert($('#r0').val());
		
		alert(data.boxOfficeResult.dailyBoxOfficeList[0].rank);
		alert(data.boxOfficeResult.dailyBoxOfficeList[0].movieNm);
		alert(data.boxOfficeResult.dailyBoxOfficeList[0].audiAcc); */
		
		
		//for (var i = 0; i < data.boxOfficeResult.dailyBoxOfficeList.length; i++) {
/* 			alert(data.boxOfficeResult.dailyBoxOfficeList[i].rank);
			alert(data.boxOfficeResult.dailyBoxOfficeList[i].movieNm);
			alert(data.boxOfficeResult.dailyBoxOfficeList[i].audiAcc); */
/* 			
			$('#r'+i).attr('title',data.boxOfficeResult.dailyBoxOfficeList[i].rank);
			$('#r'+i).attr('name',data.boxOfficeResult.dailyBoxOfficeList[i].movieNm);
			$('#r'+i).val(data.boxOfficeResult.dailyBoxOfficeList[i].audiAcc);
			
			alert($('#r'+i).attr('title'));
			alert($('#r'+i).attr('name'));
			alert($('#r'+i).val());
			
		}
		 */
		

	}
}); 
 


 


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


/* info */
 $('.card').on('mouseover',function() {
	
	var ostar = $(this).find('.realstar').val();
	var mnum = $(this).find('.movienum').val();
	console.log(ostar);
	console.log(mnum);

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
	}
	
}); 

 /* $('.card').on('mouseleave',function() {
		
		ostar = $(this).find('.realstar').val();
		mnum = $(this).find('.movienum').val();
		console.log(ostar);
		console.log(mnum);

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
		}
		
	}); 
 */





/* 별점 */
$('.starlab').click(function() {
	mstar = $(this).text();
	console.log(mstar);
	$(this).closest('.infos').addClass('.tact');
	
	x = $(this).closest('.card').offset();
	$('html').animate({scrollTop : x.top}, 400);

});




</script>

</body>
</html>