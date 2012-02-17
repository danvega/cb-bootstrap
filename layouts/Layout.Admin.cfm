<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>Coldbox + Bootstrap FTW!</title>
	<meta charset="UTF-8" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<link rel="stylesheet" href="#prc.baseURL#/includes/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="#prc.baseURL#/includes/css/stylesheet.css" type="text/css"/>

	<!--[if lt IE 9]><script src="]#prc.baseURL#/includes/js/html5.js"></script><![endif]-->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="#prc.baseURL#/includes/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {

			
		});
	</script>
</head>
<body>

	<div class="container">

		<div class="content">

			<div class="page-header">
				<h2>#html.img(src="includes/images/coldbox/coldbox.png",alt="Coldbox")# Admin</h2>
			</div>
			<!-- /page-header -->

			<div class="row">
				<div class="span16">
					#renderView()#
				</div>
			</div>

		</div><!-- /content -->

		<div id="footer">
			Copyright &copy; ABC Company #year(now())#. All Rights Reserved
		</div>

	</div><!-- /container -->

</body>
</html>
</cfoutput>