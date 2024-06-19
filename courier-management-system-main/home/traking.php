<?php
session_start();
if(isset($_SESSION['uid'])){
    echo "";
    }else{
    header('location: ../login.php');
    }

?>


<title>Tracking Parcel</title>
<div style="overflow-x:auto;">
<table width='90%' height='20%' border="1px dash" style="margin-top:15px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:20px">
        <th>Tracking Id</th>
        
        <th>Sender Name</th>
        <th>Receiver Name</th>
        <th>Sender Address</th>
        <th>Reciver Address</th>
        <th>Sender Phone Number</th>
        <th>Reciver Phone Number</th>
        <th>Status</th>
        
    </tr>


<?php
   

    
    include('../admin/cms/db_connect.php');

    include('../dbconnection.php');

    $email = $_SESSION['emm'];

    $qryy= "SELECT * FROM `parcels` WHERE 'sender_contact'='$email' ";
    $run= mysqli_query($conn,$qryy);

        $count=0;
        while($data=mysqli_fetch_assoc($run))
        {
            $count++;
        ?>
        <tr align="center">
            <td><?php echo $count; ?></td>
           
            <td><?php echo $data['sname']; ?></td>
            <td><?php echo $data['rname']; ?></td>
            <td><?php echo $data['saddress']; ?></td>
            <td><?php echo $data['raddress']; ?></td>
            <td><?php echo $data['sphone']; ?></td>
            <td><?php echo $data['rphone']; ?></td>
            <td>
               
                
                <a href="deletecourier.php?bb=<?php echo $data['billno']; ?>">Already Entered</a>
            </td>
        </tr>
        <?php
        }
    
    ?>
</table>
</div>