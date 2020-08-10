<%@ include file="forsession.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Payment</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic">
				<img src="images/doc_img.png"  width=100% height=100%>
			</div>

			<form method="post" action="bill_db.jsp" class="contact1-form validate-form">
				<span class="contact1-form-title">
					Make a payment
				</span>
				
				<div class="wrap-input1 validate-input" data-validate = "Name is required">
					<input class="input1" type="text" name="id" placeholder="Id" required>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="text" name="name" placeholder="Name" required>
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="number" name="age" placeholder="Age" required>
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="address" placeholder="Address" required>
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					Date:<input class="input1" type="date" name="arrival" placeholder="Date" required>
					<span class="shadow-input1"></span>
				</div>
				
				
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="number" name="phone" placeholder="Phone no" required>
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="checkbox" name="service" value="ticket">Ticket: Rs 100<br>
					<input class="input1" type="checkbox" name="service" value="blood">Blood Test: Rs 100<br>
					<input class="input1" type="checkbox" name="service" value="urine">Urine Test: Rs 100<br>
					<input class="input1" type="checkbox" name="service" value="xray">X-ray: Rs 100<br>
					<input class="input1" type="checkbox" name="service" value="mri">MRI: Rs 100<br>
					
					<span class="shadow-input1"></span>
				</div>
				

				<div class="container-contact1-form-btn">
					<button type="submit" class="contact1-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>