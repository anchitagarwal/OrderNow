<!DOCTYPE html>
<html lang="en">
<head>

<title>OrderNow</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="../css/roboto.css" rel="stylesheet" type="text/css">
<link href="../css/box.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../js/dropdown.js"></script>

</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../admin/index" style="font-family: roboto, sans-serif">OrderNow</a>
			</div>
			<div id="bs-example-navbar-collapse-6"
				class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../admin/index" style="font-family: roboto, sans-serif">Home</a></li>
					<li><a href="#" style="font-family: roboto, sans-serif">Specials</a></li>
					<li><a href="#" style="font-family: roboto, sans-serif">Orders</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="padding-right: 10px;">
					<li><a href="../addMember/index" style="font-family: roboto, sans-serif">Add Member</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" style="font-family: roboto, sans-serif">Account <b class="caret"></b></a>
						<ul class="dropdown-menu" style="margin-top: 5px">
							<li><a href="#" style="font-family: roboto, sans-serif">Change Password</a></li>
							<li class="divider"></li>
							<li><a href="#" style="font-family: roboto, sans-serif">Sign Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<br />
		<br />
		<br />
		<br />
		
		<g:if test="${params.user_added_flag == '1' }">
				<div class="alert alert-success alert-dismissable" style="font-family: roboto, sans-serif" align="center">User added successfully.</div>
		</g:if>
		
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-lg-4">
				<div class="box">
					<div class="icon">
						<div class="image">
							<i class="fa fa-star"></i>
						</div>
						<div class="info">
							<h3 class="title">Today's Special</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices
								gravida massa luctus ornare. Suspendisse blandit quam elit, eu
								imperdiet neque semper.</p>
							<div class="more">
								<a href="#" title="Title Link"> SPECIALS <i
									class="fa fa-magic"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="space"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
