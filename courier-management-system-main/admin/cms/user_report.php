
<title>list</title>
<div style="overflow-x:auto;">
<table width='90%' height='20%' border="1px dash" style="margin-top:15px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:20px">
        <th>No.</th>
        
        <th>Email</th>
        <th>Tracking Number</th>
        <th>Message</th>
        <th>Status</th>
        
    </tr>

    <?php
    include('./dbconnection.php');

    

    $qryy= "SELECT * FROM `contacts`";
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
            <td><?php echo $count; ?></td>
           
            <td><?php echo $data['email']; ?></td>
            <td><?php echo $data['subject']; ?></td>
            <td><?php echo $data['msg']; ?></td>
            <td>
               
                
                <a href="deletereport.php?bb=<?php echo $data['msg']; ?>">Remove</a>
            </td>
        </tr>
        <?php
        }
    }
    ?>
</table>
</div>