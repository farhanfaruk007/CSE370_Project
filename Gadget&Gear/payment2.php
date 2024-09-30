<?php


require "db.php";

session_start();
if(!isset($_SESSION["uid"])){
    	header("location:index.php");
}?>
<?php
$trx_id=rand();
$str_trx = "TRX".$trx_id;
$cm_user_id = $_SESSION["uid"];
$p_st="Paid";

$sql = "SELECT p_id,qty FROM cart WHERE user_id = '$cm_user_id'";
$query = mysqli_query($con,$sql);


# code...

while ($row=mysqli_fetch_array($query)) {

    $product_id[] = $row["p_id"];
    $qty[] = $row["qty"];
}

for ($i=0; $i < count($product_id); $i++) {
    $sql = "INSERT INTO orders (user_id,product_id,qty,trx_id,p_status) VALUES ('$cm_user_id','".$product_id[$i]."','".$qty[$i]."','$str_trx','$p_st')";
    mysqli_query($con,$sql);
}

$sql = "DELETE FROM cart WHERE user_id = '$cm_user_id'";
if (mysqli_query($con,$sql)){ ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gadget&Gear</title>
        <link rel="icon" type="image/x-icon" href="icon.png">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/jquery2.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="main.js"></script>
        <style>
            table tr td {padding:10px;}
        </style>
    </head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
            <a href="index.php"><span class="navbar-brand">GADGET & GEAR</a>
            </div>
            <ul class="nav navbar-nav">
        </div>
    </div>
    <p><br/></p>
    <p><br/></p>
    <p><br/></p>
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading"></div>
                    <div class="panel-body">
                        <h1>Thank you</h1>
                        <hr/>
                        <p>Hi <?php echo "<b>".$_SESSION["name"]."</b>"; ?>,Your payment process is
                        successfully completed and your Transaction id is <b><?php echo $str_trx; ?></b><br/>
                        you can continue your Shopping <br/></p>
                        <a href="index.php" class="btn btn-success btn-lg">Continue Shopping</a>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</body>
</html>
<?php
}
else{
    header("location:index.php");
}?>

