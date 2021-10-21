<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>About Me</title>
	<? include "parts/meta.php" ?>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;400;700&display=swap" rel="stylesheet">

	<style>
		.title {font-weight: bold;} p {font-size: 1em;} .last-col {text-align: right;}
		footer {height: 150px; background: var(--color-main);}
		
	</style>
</head>
<body>

	<? include "parts/navbar.php" ?>

	<!-- <div class="container pad push-down">
		<h1 style="font-size: 65px; text-align: center;">Hi there, I'm Seen Rongkapan.
			<br> Have you seen my work yet?</h1>
	</div> -->
	<div class="view-window hero" style="background-image: url(img/gg-bridge.jpeg);">
		<h1 style="color: white; text-align: center;">Hi there, I'm Seen Rongkapan.
			<br> Have you seen my work yet?</h1>
		
	</div>

	<div class="container" style="padding-bottom: 1em; margin-bottom: 1em;">
		
		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
				<h2>A Little About Me</h2>
			</div>

	        <div class="col-xs-12 col-md-5">
	        		<p style="padding-top: 0.85em;">My name is Seen Rongkapan. I was born and raised in Bangkok, Thailand and decided to move to San Francisco in 2012 to study and pursue design.</p>
	        		<p>I've been working as designer for big and small companies in <br>the Bay Area for the past 4 years. Currently I am working as a part-time visual designer at Postmates by Uber along side with persuing MA in Web Design and New Media at Academy of Art University in San Francisco.</p>
	        </div>
	        	
	    </div>
	</div>

	<div class="container" style="padding-bottom: 1em; margin-bottom: 1.75em;">
		<h1 style="padding-bottom: 0.4em; text-align: center;">Experiences</h1>
		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e; border-top: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">Visual Designer</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Postmates by Uber</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">February 2020 — Present</p>
	        </div>
	    </div>


		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">Digital Designer (Contract)</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Minted</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">Sep 2019 — January 2020</p>
	        </div>
	    </div>


		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">Digital Designer</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Healthline</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">June 2019 — August 2019</p>
	        </div>
	    </div>



		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">Packaging Designer</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Juli-Shore Design</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">Sep 2017 — Dec 2017</p>
	        </div>
	    </div>
	</div>

	<div class="container" style="padding-bottom: 1em; margin-bottom: 2em;">
		<h1 style="padding-bottom: 0.4em; text-align: center;">Education</h1>
		<div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e; border-top: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">MA in Web Design & New Media</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Academy of Art University</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">Sep 2020 — Present</p>
	        </div>
	    </div>

	    <div class="grid gap" style="padding-bottom: 0.8em; padding-top: 0.8em; border-bottom: 0.1em solid #918b8e;">
			<div class="col-xs-12 col-md-7">
					<p class="title">BFA in Graphic Design</p>
			</div>

	        <div class="col-xs-12 col-md-3">
	        		<p>Academy of Art University</p>
	        </div>
	        	
			<div class="col-xs-12 col-md-2">
					<p class="last-col">Sep 2012 — May 2017</p>
	        </div>
	    </div>
	</div>
	
	<footer> 
		<div class="container">
			<h4 style="text-align: center; font-weight: 400; padding-top: 2em; color: var(--color-neutral-light);">Copyright 2020</h3>
		</div>
	</footer>
</body>
</html>