<!-- user will delete there courier themself when click delete link in track section-->
<?php
    include('./dbconnection.php');
    $billno= $_REQUEST['bb'];

    $qry = "DELETE FROM `courier` WHERE `billno`='$billno'";
    $run = mysqli_query($dbcon,$qry);

    if($run==true){
    ?>  <script>
        alert("Parcel's details Entered Successfully");
        window.open('list.php','_self');
                
        </script>
    <?php
}
?>