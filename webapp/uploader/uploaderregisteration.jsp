<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
</head>
<body style="text-decoration: none; background-color: #148F77;">

<div class="container">
	<h1 style="text-align: center; color: white; font-size: 10vh">Registration</h1>

	<form class="w-75 text-align-center m-auto" method="post" action="/buko/UploaderRegisteration">
		<div class="row mb-2">
			<label for="name" class="col-sm-3 col-form-label">Name</label>
			<div class="col-sm-9">
				<input type="text" class="form-control is-valid" id="name" name="name" required>
			</div>
		</div>

		<div class="row mb-2">
			<label for="email" class="col-sm-3 col-form-label">Email</label>
			<div class="col-sm-9">
				<input type="email" class="form-control is-valid" id="email" name="email" required>
			</div>
		</div>
		<div class="row mb-2">
			<label for="password" class="col-sm-3 col-form-label">Password</label>
			<div class="col-sm-9">
				<input type="password" class="form-control is-valid" id="password" name="password" required>
			</div>
		</div>
		<div class="row mb-2">
			<label for="confirmpassword" class="col-sm-3 col-form-label">Confirm Password</label>
			<div class="col-sm-9">
				<input type="password" class="form-control is-valid" id="confirmpassword" name="confirmpassword" required>
			</div>
		</div>
		<div class="row mb-2">
			<label for="phone" class="col-sm-3 col-form-label">Phone Number</label>
			<div class="col-sm-9">
				<input type="tel" class="form-control is-valid" id="phone" name="phone" required>
			</div>
		</div>
		<div class="row mb-2">
			<label for="gender" class="col-form-label col-sm-4 pt-0">Gender</label>
			
				<div class="col-sm-4 form-check">
					<input class="form-check-input" type="radio" name="gender" id="gender" value="Male" checked><label	class="form-check-label" for="gender"> Male </label>
				</div>
				<div class="col-sm-4 form-check">
					<input class="form-check-input" type="radio" name="gender" id="gender" value="Female"><label class="form-check-label" for="gebder"> Female </label>
				</div>

			
		</div>
		<div class="row mb-2">
		<button type="reset" class="col-sm-5 btn btn-light m-4">Reset</button>
		<button type="submit" class="col-sm-5 btn btn-primary m-4">Sign in</button>
		</div>
		
	</form>

</div>


	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
		integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
		integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
		crossorigin="anonymous"></script>

</body>
</html>