<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Text Input Effects | Set 2</title>
		<meta name="description" content="Simple ideas for enhancing text input interactions" />
		<meta name="keywords" content="input, text, effect, focus, transition, interaction, inspiration, web design" />
		<meta name="author" content="Codrops" />
		<!-- <link rel="shortcut icon" href="../favicon.ico"> -->
		<!-- <link rel="stylesheet" type="text/css" href="css/normalize.css" />  -->
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/design/demo.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/design/set2.css" />
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
		<div class="container">
			<header class="codrops-header">
				<div class="codrops-links">
					<a class="codrops-icon codrops-icon--prev" href="http://tympanus.net/Tutorials/SlidingHeaderLayout/" title="Previous Demo"><span>Previous Demo</span></a>
					<a class="codrops-icon codrops-icon--drop" href="http://tympanus.net/codrops/?p=21991" title="Back to the a"><span>Back to the Codrops a</span></a>
				</div>
				<h1>Text Input Effects <span>Simple ideas for enhancing text input interactions</span></h1>
				<nav class="codrops-demos">
					<a href="index.html">Set 1</a>
					<a href="index2.html" class="current-demo">Set 2</a>
				</nav>
			</header>
			
			
			<section class="content bgcolor-3">
				<h2>Manami</h2>
				<span class="input input--manami">
					<input class="input__field input__field--manami" type="text" id="input-32" />
					<label class="input__label input__label--manami" for="input-32">
						<span class="input__label-content input__label-content--manami">Username</span>
					</label>
				</span>
				<span class="input input--manami">
					<input class="input__field input__field--manami" type="text" id="input-33" />
					<label class="input__label input__label--manami" for="input-33">
						<span class="input__label-content input__label-content--manami">Website</span>
					</label>
				</span>
				<span class="input input--manami">
					<input class="input__field input__field--manami" type="text" id="input-34" />
					<label class="input__label input__label--manami" for="input-34">
						<span class="input__label-content input__label-content--manami">Invitation Code</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-7">
				<h2>Nariko</h2>
				<span class="input input--nariko">
					<input class="input__field input__field--nariko" type="text" id="input-20" />
					<label class="input__label input__label--nariko" for="input-20">
						<span class="input__label-content input__label-content--nariko">First Name</span>
					</label>
				</span>
				<span class="input input--nariko">
					<input class="input__field input__field--nariko" type="text" id="input-21" />
					<label class="input__label input__label--nariko" for="input-21">
						<span class="input__label-content input__label-content--nariko">Middle Name</span>
					</label>
				</span>
				<span class="input input--nariko">
					<input class="input__field input__field--nariko" type="text" id="input-22" />
					<label class="input__label input__label--nariko" for="input-22">
						<span class="input__label-content input__label-content--nariko">Last Name</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-1">
				<h2>Nao</h2>
				<span class="input input--nao">
					<input class="input__field input__field--nao" type="text" id="input-1" />
					<label class="input__label input__label--nao" for="input-1">
						<span class="input__label-content input__label-content--nao">Street</span>
					</label>
					<svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
				<span class="input input--nao">
					<input class="input__field input__field--nao" type="text" id="input-2" />
					<label class="input__label input__label--nao" for="input-2">
						<span class="input__label-content input__label-content--nao">City</span>
					</label>
					<svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
				<span class="input input--nao">
					<input class="input__field input__field--nao" type="text" id="input-3" />
					<label class="input__label input__label--nao" for="input-3">
						<span class="input__label-content input__label-content--nao">Region</span>
					</label>
					<svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
			</section>
			<section class="content">
				<h2>Yoshiko</h2>
				<span class="input input--yoshiko">
					<input class="input__field input__field--yoshiko" type="text" id="input-10" />
					<label class="input__label input__label--yoshiko" for="input-10">
						<span class="input__label-content input__label-content--yoshiko" data-content="Bird's Color">Bird's Color</span>
					</label>
				</span>
				<span class="input input--yoshiko">
					<input class="input__field input__field--yoshiko" type="text" id="input-11" />
					<label class="input__label input__label--yoshiko" for="input-11">
						<span class="input__label-content input__label-content--yoshiko" data-content="Wing Span">Wing Span</span>
					</label>
				</span>
				<span class="input input--yoshiko">
					<input class="input__field input__field--yoshiko" type="text" id="input-12" />
					<label class="input__label input__label--yoshiko" for="input-12">
						<span class="input__label-content input__label-content--yoshiko" data-content="Beak Length">Beak Length</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-10">
				<h2>Shoko</h2>
				<span class="input input--shoko">
					<input class="input__field input__field--shoko" type="text" id="input-4" />
					<label class="input__label input__label--shoko" for="input-4">
						<span class="input__label-content input__label-content--shoko">Player Name</span>
					</label>
					<svg class="graphic graphic--shoko" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
						<path d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
				<span class="input input--shoko">
					<input class="input__field input__field--shoko" type="text" id="input-5" />
					<label class="input__label input__label--shoko" for="input-5">
						<span class="input__label-content input__label-content--shoko">Village</span>
					</label>
					<svg class="graphic graphic--shoko" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
						<path d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
				<span class="input input--shoko">
					<input class="input__field input__field--shoko" type="text" id="input-6" />
					<label class="input__label input__label--shoko" for="input-6">
						<span class="input__label-content input__label-content--shoko">World</span>
					</label>
					<svg class="graphic graphic--shoko" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
						<path d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</span>
			</section>
			<section class="content bgcolor-4">
				<h2>Chisato</h2>
				<span class="input input--chisato">
					<input class="input__field input__field--chisato" type="text" id="input-13" />
					<label class="input__label input__label--chisato" for="input-13">
						<span class="input__label-content input__label-content--chisato" data-content="First Name">First Name</span>
					</label>
				</span>
				<span class="input input--chisato">
					<input class="input__field input__field--chisato" type="text" id="input-14" />
					<label class="input__label input__label--chisato" for="input-14">
						<span class="input__label-content input__label-content--chisato" data-content="Middle Name">Middle Name</span>
					</label>
				</span>
				<span class="input input--chisato">
					<input class="input__field input__field--chisato" type="text" id="input-15" />
					<label class="input__label input__label--chisato" for="input-15">
						<span class="input__label-content input__label-content--chisato" data-content="Last Name">Last Name</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-3">
				<h2>Makiko</h2>
				<span class="input input--makiko">
					<input class="input__field input__field--makiko" type="text" id="input-16" />
					<label class="input__label input__label--makiko" for="input-16">
						<span class="input__label-content input__label-content--makiko">Search</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-9">
				<h2>Sae</h2>
				<span class="input input--sae">
					<input class="input__field input__field--sae" type="text" id="input-17" />
					<label class="input__label input__label--sae" for="input-17">
						<i class="fa fa-fw fa-pencil icon icon--sae"></i>
						<span class="input__label-content input__label-content--sae">Email Address</span>
					</label>
				</span>
				<span class="input input--sae">
					<input class="input__field input__field--sae" type="text" id="input-18" />
					<label class="input__label input__label--sae" for="input-18">
						<i class="fa fa-fw fa-pencil icon icon--sae"></i>
						<span class="input__label-content input__label-content--sae">Invitation Code</span>
					</label>
				</span>
				<span class="input input--sae">
					<input class="input__field input__field--sae" type="text" id="input-19" />
					<label class="input__label input__label--sae" for="input-19">
						<i class="fa fa-fw fa-pencil icon icon--sae"></i>
						<span class="input__label-content input__label-content--sae">Full Name</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-4">
				<h2>Kozakura</h2>
				<span class="input input--kozakura">
					<input class="input__field input__field--kozakura" type="text" id="input-7" />
					<label class="input__label input__label--kozakura" for="input-7">
						<span class="input__label-content input__label-content--kozakura" data-content="Name">Name</span>
					</label>
					<svg class="graphic graphic--kozakura" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M1200,9c0,0-305.005,0-401.001,0C733,9,675.327,4.969,598,4.969C514.994,4.969,449.336,9,400.333,9C299.666,9,0,9,0,9v43c0,0,299.666,0,400.333,0c49.002,0,114.66,3.484,197.667,3.484c77.327,0,135-3.484,200.999-3.484C894.995,52,1200,52,1200,52V9z"/>
					</svg>
				</span>
				<span class="input input--kozakura">
					<input class="input__field input__field--kozakura" type="text" id="input-8" />
					<label class="input__label input__label--kozakura" for="input-8">
						<span class="input__label-content input__label-content--kozakura" data-content="Email">Email</span>
					</label>
					<svg class="graphic graphic--kozakura" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M1200,9c0,0-305.005,0-401.001,0C733,9,675.327,4.969,598,4.969C514.994,4.969,449.336,9,400.333,9C299.666,9,0,9,0,9v43c0,0,299.666,0,400.333,0c49.002,0,114.66,3.484,197.667,3.484c77.327,0,135-3.484,200.999-3.484C894.995,52,1200,52,1200,52V9z"/>
					</svg>
				</span>
				<span class="input input--kozakura">
					<input class="input__field input__field--kozakura" type="text" id="input-9" />
					<label class="input__label input__label--kozakura" for="input-9">
						<span class="input__label-content input__label-content--kozakura" data-content="Website">Website</span>
					</label>
					<svg class="graphic graphic--kozakura" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M1200,9c0,0-305.005,0-401.001,0C733,9,675.327,4.969,598,4.969C514.994,4.969,449.336,9,400.333,9C299.666,9,0,9,0,9v43c0,0,299.666,0,400.333,0c49.002,0,114.66,3.484,197.667,3.484c77.327,0,135-3.484,200.999-3.484C894.995,52,1200,52,1200,52V9z"/>
					</svg>
				</span>
			</section>
			<section class="content bgcolor-1">
				<h2>Fumi</h2>
				<span class="input input--fumi">
					<input class="input__field input__field--fumi" type="text" id="input-23" />
					<label class="input__label input__label--fumi" for="input-23">
						<i class="fa fa-fw fa-university icon icon--fumi"></i>
						<span class="input__label-content input__label-content--fumi">Course Name</span>
					</label>
				</span>
				<span class="input input--fumi">
					<input class="input__field input__field--fumi" type="text" id="input-24" />
					<label class="input__label input__label--fumi" for="input-24">
						<i class="fa fa-fw fa-graduation-cap icon icon--fumi"></i>
						<span class="input__label-content input__label-content--fumi">Degree</span>
					</label>
				</span>
				<span class="input input--fumi">
					<input class="input__field input__field--fumi" type="text" id="input-25" />
					<label class="input__label input__label--fumi" for="input-25">
						<i class="fa fa-fw fa-suitcase icon icon--fumi"></i>
						<span class="input__label-content input__label-content--fumi">Work Place</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-4">
				<h2>Ruri</h2>
				<span class="input input--ruri">
					<input class="input__field input__field--ruri" type="text" id="input-26" />
					<label class="input__label input__label--ruri" for="input-26">
						<span class="input__label-content input__label-content--ruri">Username</span>
					</label>
				</span>
				<span class="input input--ruri">
					<input class="input__field input__field--ruri" type="text" id="input-27" />
					<label class="input__label input__label--ruri" for="input-27">
						<span class="input__label-content input__label-content--ruri">Website</span>
					</label>
				</span>
				<span class="input input--ruri">
					<input class="input__field input__field--ruri" type="text" id="input-28" />
					<label class="input__label input__label--ruri" for="input-28">
						<span class="input__label-content input__label-content--ruri">Invitation Code</span>
					</label>
				</span>
			</section>
			<section class="content bgcolor-3">
				<h2>Kohana</h2>
				<span class="input input--kohana">
					<input class="input__field input__field--kohana" type="text" id="input-29" />
					<label class="input__label input__label--kohana" for="input-29">
						<i class="fa fa-fw fa-clock-o icon icon--kohana"></i>
						<span class="input__label-content input__label-content--kohana">Time</span>
					</label>
				</span>
				<span class="input input--kohana">
					<input class="input__field input__field--kohana" type="text" id="input-30" />
					<label class="input__label input__label--kohana" for="input-30">
						<i class="fa fa-fw fa-bus icon icon--kohana"></i>
						<span class="input__label-content input__label-content--kohana">Line</span>
					</label>
				</span>
				<span class="input input--kohana">
					<input class="input__field input__field--kohana" type="text" id="input-31" />
					<label class="input__label input__label--kohana" for="input-31">
						<i class="fa fa-fw fa-phone icon icon--kohana"></i>
						<span class="input__label-content input__label-content--kohana">Phone</span>
					</label>
				</span>
			</section>
			<!-- Related demos -->
			<section class="content content--related">
				<p>If you enjoyed this demo you might also like:</p>
				<a class="media-item" href="http://tympanus.net/Development/MinimalForm/">
					<img class="media-item__img" src="img/related/MinimalForm.png" />
					<h3 class="media-item__title">Minimal Form Interface</h3>
				</a>
				<a class="media-item" href="http://tympanus.net/Development/SelectInspiration/">
					<img class="media-item__img" src="img/related/SelectInspiration.png" />
					<h3 class="media-item__title">Custom Select Elements</h3>
				</a>
			</section>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script>
			(function() {
				// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
				if (!String.prototype.trim) {
					(function() {
						// Make sure we trim BOM and NBSP
						var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
						String.prototype.trim = function() {
							return this.replace(rtrim, '');
						};
					})();
				}

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
		</script>
		
<!-- For the demo ad only -->   
<script src="//tympanus.net/codrops/adpacks/demoad.js"></script>

	</body>
</html>