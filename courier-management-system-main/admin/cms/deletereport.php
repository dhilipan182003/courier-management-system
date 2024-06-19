<!-- user will delete there courier themself when click delete link in track section-->
<?php
    include('./dbconnection.php');
    $billno= $_REQUEST['bb'];

    $qry = "DELETE FROM `contacts` WHERE `msg`='$billno'";
    $run = mysqli_query($dbcon,$qry);

    if($run==true){
    ?>  <script>
        alert("Successfully Removed");
        window.open('user_report.php','_self');
                
        </script>
    <?php
}
?>