<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Page Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="/static/style.css" />
	<script src="main.js"></script>
</head>
<body>
	% from bottle import *
	% from beaker.middleware import SessionMiddleware
	% bs = request.environ.get("beaker.session")
	<h1>Vefverslun</h1>
	<section class="wrapper">
		<div>
			<h3>Jakki</h3>
			<a href="/chart/0">
			<img src="/static/mynd0.jfif"></a>
			<h4>Verð: 25000</h4>
		</div>
		<div>
			<h3>Peysa</h3>
			<a href="/chart/1">
			<img src="/static/mynd1.jpg"></a>
			<h4>Verð: 15000</h4>
		</div>
		<div>
			<h3>Kjóll</h3>
			<a href="/chart/2">
			<img src="/static/mynd2.jpeg"></a>
			<h4>Verð: 30000</h4>
		</div>
		<div>
			<h3>Nærbuxur</h3>
			<a href="/chart/3">
			<img src="/static/mynd3.jpg"></a>
			<h4>Verð: 5000</h4>
		</div>
		<div>
			<h3>Samfestingur</h3>
			<a href="/chart/4">
			<img src="/static/mynd4.jpg"></a>
			<h4>Verð: 30000</h4>
		</div>
		<div>
			<h3>Jakkaföt</h3>
			<a href="/chart/5">
			<img src="/static/mynd5.jpg"></a>
			<h4>Verð: 40000</h4>
		</div>

	</section>
	<%
		from bottle import *
		from beaker.middleware import SessionMiddleware
		bs = request.environ.get("beaker.session")
		cnt = 0
		for i in range(6):
			if bs.get(str(i)):
			cnt += 1
			end
		end
	%>
	<aside class="karfa">
		( {{cnt}} )
		<a href="/chart" title="Skoða körfu"><img src="/static/cart.png"></a>
	</aside>
</body>
</html>