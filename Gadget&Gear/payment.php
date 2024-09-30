<?php

require "config/constants.php";

?>

<?php
	if(isset($_POST["submit"])){
		if(strlen($_POST['account_number']) != 11){
			$account_error = '*Phone number must be 11 digit';
		}
		if(strlen($_POST['pin_number']) != 5){
			$pin_error = '*Pin number must be 5 digit';
		}
		if(($_POST['option']) == 'Choose Payment Method'){
			$opt_error = '*You must select a payment method';
		}
		if((strlen($_POST['account_number']) == 11) && (strlen($_POST['pin_number']) == 5) && (($_POST['option']) != 'Choose Payment Method')){
			header('Location: payment2.php');
		}

	}
?>
<?php
	if(!(isset($_POST['account_number']))){
		$_POST['account_number']="";
	}
	if(!(isset($_POST['pin_number']))){
		$_POST['pin_number']="";
	}
	if(!(isset($_POST['option']))){
		$_POST['option'] = '';
	}
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Payment</title>
	<link rel="icon" type="image/x-icon" href="icon.png">
	<link rel="stylesheet" type="text/css" href="payment.css">
</head>
<body>
<header>
	<div class="container">
		<div class="center">
			<h3>PAYMENT INFORMATION</h3>
			<form action="payment.php" method="post">
				Accepted Options <br>
				<img src="image/picture.jpeg" width="110">
				</br>	
				<div id="method">
					<label>
						Payment Through</br>
						<select name='option'>
							<option>Choose Payment Method</option>
							<option
							<?php 
								if (($_POST['option'])=='bKash'){
									echo "selected";
								}
							?>
							>bKash</option>
							<option
							<?php 
								if (($_POST['option'])=='ROCKET'){
									echo "selected";
								}
							?>
							>ROCKET</option>
							<option
							<?php 
								if (($_POST['option'])=='NAGAD'){
									echo "selected";
								}
							?>
							>NAGAD</option>
						</select>
						<div class="red-text"> <?php if(isset($opt_error)){echo $opt_error;} ?> </div>
					</label>
				</div>
				Account Number
				<input type="number" name="account_number" value="<?php echo $_POST['account_number']?>" placeholder="Enter Phone No." required>
				<div class="red-text"> <?php if(isset($account_error)){echo $account_error;} ?> </div>
				PIN
				<input type="number" name="pin_number" value="<?php echo $_POST['pin_number']?>" placeholder="Enter PIN" required>
				<div class="red-text"> <?php if(isset($pin_error)) {echo $pin_error;} ?> </div>
				<div class="center">
					<input type="submit" name="submit" value="Confirm Payment">
				</div>
			</form>
		</div>
	</div>
		
</header>
</body>
</html>