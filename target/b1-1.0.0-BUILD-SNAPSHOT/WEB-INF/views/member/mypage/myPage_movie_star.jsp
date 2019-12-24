<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<c:import url="../../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/member/mypage_star.css" rel="stylesheet">

</head>
<body>

<header>
<c:import url="../../layout/header.jsp" />
</header>

<section>
<div class="mypagewrap"> 



<div id="test">

<div class="mymenu">
<div class="menutitle">
<a href="./myPage"><img alt="" src="../../resources/images/mypage/mypage.png"></a>
</div>

<div class="menumain"> 
<div class="mmain"><a href="./myPage_movie_res">예매내역</a></div>
<div class="mmain"><a href="./myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain" style="background-color: #3b3b3b; padding-top: 10px; padding-bottom: 10px; color: black; padding-left: 10px;"><a style="color: white;"  href="./myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">

<div id="tboxmain2">

<c:forEach items="${starList}" var="star">
<div class="starbox">
<img alt="" src="${star.movieInfo_poster}">
<div class="stxt">
<p class="stitle"><i class='fas fa-star' style='font-size:18px;color:yellow;padding-right: 10px;'></i>${star.movieInfo_title}</p>
<p>${star.movieGrade_star}점</p>
</div>
</div>
</c:forEach>
 <button class="btn more-trigger">더보기</button>

</div>

</div>

</div>

</div>
</section>

<footer></footer>

<!-- <script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script> -->

<script type="text/javascript">
/* read more */

$(document).ready(function() {
  $('body').showMoreItems();
});

(function($) {
	  $.fn.showMoreItems = function(options) {

	    var $totalItems = $('.starbox').length,
	        $visibleItems = $('.starbox:visible').length,
	        settings = $.extend({}, $.fn.showMoreItems.defaults, options),
	        i = settings.count,
	        countLess = settings.count - 1;

	    $('.starbox:lt(' + settings.count + ')').show();

	    $('.more-trigger').click(function(el) {
	      el.preventDefault();

	      if ($visibleItems !== $totalItems) {
	        if(i + settings.count <= $totalItems) {
	          $visibleItems = i += settings.count;
	          $('.starbox:lt('+ i +')').show();

	          if(i == $totalItems) {
	            $('.more-trigger').text("처음으로");
	          }

	        } else if (i !== $totalItems) {
	          $('.starbox:gt(' + countLess + ')').show();
	          $('.more-trigger').text("처음으로");
	          $visibleItems = $totalItems;
	          i = $totalItems;
	        }
	      } else if($visibleItems === $totalItems) {
	        $('.starbox:gt(' + countLess + ')').hide();
	        $('.more-trigger').text("더보기");
	        $visibleItems = settings.count;
	        i = settings.count;
	      }

	    });
	  }

	  $.fn.showMoreItems.defaults = {
	    count: 8
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

</script>

</body>
</html>