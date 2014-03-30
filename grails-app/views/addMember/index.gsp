<!DOCTYPE html>
<html lang="en">
<head>

<title>OderNow</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/chosen.css" rel="stylesheet">
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="../css/roboto.css" rel="stylesheet" type="text/css">
<script src="../js/jquery.min.js"></script>
<script src="../js/dropdown.js"></script>
<script src="../js/chosen.jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$(".chosen-select").chosen();
	});
</script>

</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../admin/index"
					style="font-family: roboto, sans-serif">OrderNow</a>
			</div>
			<div id="bs-example-navbar-collapse-6"
				class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="../admin/index"
						style="font-family: roboto, sans-serif">Home</a></li>
					<li><a href="#" style="font-family: roboto, sans-serif">Specials</a></li>
					<li><a href="#" style="font-family: roboto, sans-serif">Orders</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="padding-right: 10px;">
					<li class="active"><a href="../addMember/index"
						style="font-family: roboto, sans-serif">Add Member</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" style="font-family: roboto, sans-serif">Account
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu" style="margin-top: 5px">
							<li><a href="#" style="font-family: roboto, sans-serif">Change
									Password</a></li>
							<li class="divider"></li>
							<li><a href="#" style="font-family: roboto, sans-serif">Sign
									Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 80px">
	
		<g:if test="${params.user_exist_flag == '1' }">
				<div class="alert alert-warning" align="center" style="font-family: roboto, sans-serif">The user already exists.</div>
		</g:if>
		
		<g:if test="${params.user_type_null_flag == '1' }">
				<div class="alert alert-warning" align="center" style="font-family: roboto, sans-serif">Please select the user type.</div>
		</g:if>
		
		<g:if test="${params.password_flag == '1' }">
				<div class="alert alert-warning" align="center" style="font-family: roboto, sans-serif">Passwords do not match.</div>
		</g:if>
	
		<g:form class="form-horizontal" id="registration_form"
			controller="AddMember" action="addMembertoDB" method="POST">
			<fieldset>
				<div id="legend">
					<legend style="font-family: roboto, sans-serif">Register</legend>
				</div>
				<div class="row">
					<div class="control-group">
						<!-- Name -->
						<label class="col-md-2 control-label" for="name" style="font-family: roboto, sans-serif">Name</label>
						<div class="col-md-6">
							<input type="text" id="name" name="name" placeholder=""
								class="form-control" required="required">
							<p class="help-block" style="font-family: roboto, sans-serif">Please provide the user's name.</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="control-group">
						<!-- E-mail -->
						<label class="col-md-2 control-label" for="email" style="font-family: roboto, sans-serif">E-mail</label>
						<div class="col-md-6">
							<input type="email" id="email" name="email" placeholder=""
								class="form-control" required="required">
							<p class="help-block" style="font-family: roboto, sans-serif">Please provide the user's E-mail</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="control-group">
						<!-- Password-->
						<label class="col-md-2 control-label" for="password" style="font-family: roboto, sans-serif">Password</label>
						<div class="col-md-6">
							<input type="password" id="password" name="password"
								placeholder="" class="form-control" required="required" >
							<p class="help-block" style="font-family: roboto, sans-serif">Password should be at least 4
								characters</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="control-group">
						<!-- Password -->
						<label class="col-md-2 control-label" for="password_confirm" style="font-family: roboto, sans-serif">Password
							(Confirm)</label>
						<div class="col-md-6">
							<input type="password" id="password_confirm"
								name="password_confirm" placeholder="" class="form-control"
								required="required">
							<p class="help-block" style="font-family: roboto, sans-serif">Please confirm password</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="control-group">
						<!-- User Type -->
						<label class="col-md-2 control-label" for="user_type" style="font-family: roboto, sans-serif">Type
							of User</label>
						<div class="col-md-6">
							<select data-placeholder="Choose a Type..." name="user_type"
								class="chosen-select" style="width: 150px;" tabindex="2">
								<option value=""></option>
								<option value="3" style="font-family: roboto, sans-serif">Admin</option>
								<option value="1" style="font-family: roboto, sans-serif">Waiter</option>
								<option value="2" style="font-family: roboto, sans-serif">Customer</option>
							</select>
						</div>
					</div>
				</div>

				<br /> <br />
				<div class="row">
					<div class="control-group">
						<!-- Button -->
						<div class="col-md-2 col-md-offset-2">
							<button type="submit" id="submit" class="btn btn-success" style="font-family: roboto, sans-serif">Register</button>
						</div>
					</div>
				</div>
			</fieldset>
		</g:form>
	</div>

</body>
</html>
