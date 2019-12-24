<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Inspiration for Custom Select Elements | Demo 1</title>
		<meta name="description" content="Creative styles and ideas for custom select elements" />
		<meta name="keywords" content="custom select, select style, javascript, inspiration, select element" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-skin-border.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7243260-2']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

	</head>
	<body class="demo-1">
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/DraggableDualViewSlideshow/"><span>Previous Demo</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=19400"><span>Back to the Codrops Article</span></a></span>
			</div>
			
			<header class="codrops-header">
				<h1><span>Inspiration for</span> Custom Select Elements</h1>	
				<nav class="codrops-demos">
					<a class="current-demo" href="index.html">Border</a>
					<a href="index2.html">Underline</a>
					<a href="index3.html">Elastic</a>
					<a href="index4.html">Slide</a>
					<a href="index5.html">Overlay</a>
					<a href="index6.html">Rotate</a>
					<a href="index7.html">Box Select</a>
					<a href="index8.html">Circular</a>
				</nav>
			</header>
			
			<section>
				<select class="cs-select cs-skin-border">
					<option value="" disabled selected>Preferred contact method</option>
					<option value="email">E-Mail</option>
					<option value="twitter">Twitter</option>
					<option value="linkedin">LinkedIn</option>
				</select>
			</section>
			
			<!-- Related demos -->
			<section class="related">
				<p>If you enjoyed this demo you might also like:</p>
				<a href="http://tympanus.net/Development/ResponsiveMultiLevelMenu/">
					<img src="https://tympanus.net/codrops/wp-content/uploads/2013/04/MultiLevelMenu-300x162.jpg" />
					<h3>Multi-Level Menu</h3>
				</a>
				<a href="http://tympanus.net/Development/SimpleDropDownEffects/">
					<img src="https://tympanus.net/codrops/wp-content/uploads/2012/11/SimpleDropDownEffects-300x162.jpg" />
					<h3>Drop-Down List Effects</h3>
				</a>
			</section>
		</div><!-- /container -->
		
		<script src="js/classie.js"></script>
		<script src="js/selectFx.js"></script>
		<script>
			(function() {
				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx(el);
				} );
			})();
		</script>
		<!-- For the demo ad only -->   
<script src="//tympanus.net/codrops/adpacks/demoad.js"></script>

	</body>
</html>