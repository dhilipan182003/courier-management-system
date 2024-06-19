<?php
session_start();
if(isset($_SESSION['uid'])){
    echo "";
    }else{
    header('location: ../index.php');
    }

?>
<?php
include('header.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pricing</title>
</head>
<body>
    <table width='40%' border="5px solid" style="margin-top:60px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:35px">
    <th>Weight in Kg</th><th>Price</th>
    </tr>
    <tr>
    <th>0-1</th><th>120</th>
    </tr>
    <tr>
    <th>1-2</th><th>200</th>
    </tr>
    <tr>
    <th>2-4</th><th>250</th>
    </tr>
    <tr>
    <th>4-5</th><th>300</th>
    </tr>
    <tr>
    <th>5-7</th><th>400</th>
    </tr>
    <tr>
    <th>7-above</th><th>500</th>
    </tr>
    </table>
    <h3 align="center" style="margin-top:30px;"> As per your courier's weight pay the amount on:</h3>
    <div style="margin-left:45% ;margin-right:auto ;font-weight:bold;">
    <ol>
    <li>UPI: abcd@sbi.com</li>
    <li>GPay: 8080807070</li>
    <li>PhnPay: 4567676746</li>
    </ol>
    </div>
</body>
</html>