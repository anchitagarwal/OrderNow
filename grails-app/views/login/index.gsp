<!DOCTYPE html>
<html lang="en">
<head>

<title>OrderNow Login</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
body {
	background: url('../images/cafe.jpg') fixed;
	background-size: cover;
	padding: 0;
	margin: 0;
}
.panel {
	opacity: 0.9;
}

</style>

</head>

<body>

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<g:form id="loginform" class="form-horizontal" role="form"
						controller="Login" action="UserAuthentication" method="POST">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" value=""
								placeholder="email address">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="password">
						</div>



						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember" value="1"> Remember me
								</label>
							</div>
						</div>


						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<input id="btn-login" type="submit" value="Login"
									class="btn btn-success" />
							</div>
						</div>


						<div class="form-group">
							<div class="col-md-12 control">
								<div style="border-top: 1px solid #888; font-size: 85%"></div>
							</div>
						</div>
					</g:form>



				</div>
			</div>
		</div>
	</div>


</body>
</html>
