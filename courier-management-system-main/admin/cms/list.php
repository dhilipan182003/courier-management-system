
<title>list</title>
<div style="overflow-x:auto;">
<table width='90%' height='20%' border="1px dash" style="margin-top:15px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:20px">
        <th>Transaction Number</th>
        
        <th>Sender Name</th>
        <th>Receiver Name</th>
        <th>Sender Address</th>
        <th>Reciver Address</th>
        <th>Sender Phone Number</th>
        <th>Reciver Phone Number</th>
        <th>Status</th>
        
    </tr>

    <?php
    include('./dbconnection.php');

    

    $qryy= "SELECT * FROM `courier`";
    $run= mysqli_query($dbcon,$qryy);

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
            <td><?php echo $data['billno']; ?></td>
           
            <td><?php echo $data['sname']; ?></td>
            <td><?php echo $data['rname']; ?></td>
            <td><?php echo $data['saddress']; ?></td>
            <td><?php echo $data['raddress']; ?></td>
            <td><?php echo $data['semail']; ?></td>
            <td><?php echo $data['remail']; ?></td>
            <td>
               
                
                <a href="deletecourier.php?bb=<?php echo $data['billno']; ?>">REMOVE</a>
            </td>
        </tr>
        <?php
        }
    }
    ?>
</table>
</div>