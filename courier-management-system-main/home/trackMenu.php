<!-- when track menu is clicked it will show all courier placed by that User-->
<?php
session_start();
if(isset($_SESSION['uid'])){
    echo "";
    }else{
    header('location: ../login.php');
    }

?>
<div style="overflow-x:auto;">
<table width='90%' border="5px dash" style="margin-top:20px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:20px">
        <th>Tracking number</th>
        <th>Sender Name</th>
        <th>Sender Number</th>
        <th>Receiver Name</th>
        <th>Receiver Number</th>
        <th>Action</th>
    </tr>

    <?php
    include('../dbconnection.php');

    $email = $_SESSION['emm'];
    include('../admin/cms/db_connect.php');
    $qryy= "SELECT * FROM `parcels` WHERE `sender_email`='$email'";
    $run= mysqli_query($conn,$qryy);

    if(mysqli_num_rows($run)<1){
        echo "<tr><td colspan='6'>No record found..</td></tr>";
    }
    else{
        $count=0;
        while($data=mysqli_fetch_assoc($run))
        {
            $count++;
        ?>
        <tr align="center">
            <td><?php echo $data['reference_number']; ?></td>
            <td><?php echo $data['sender_name']; ?></td>
            <td><?php echo $data['sender_contact']; ?></td>
            <td><?php echo $data['recipient_name']; ?></td>
            <td><?php echo $data['recipient_contact']; ?></td>
            <td>
               
                <a href="http://localhost/20uca513/courier-management-system-main/admin/cms/dup.php?page=track">CheckStatus</a>
                
            </td>
        </tr>
        <?php
        }
    }
    ?>
</table>
</div>