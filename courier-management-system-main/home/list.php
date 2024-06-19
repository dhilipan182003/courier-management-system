<?php include('header.php'); ?>

<div style="overflow-x:auto;">
<table width='80%' border="1px dash" style="margin-top:20px;margin-left:auto ;margin-right:auto ;font-weight:bold;border-spacing: 5px 5px;border-collapse: collapse;">
    <tr style="background-color: #32CD32;font-size:20px">
        <th>Tracking number</th>
        <th>Item's Image</th>
        <th>Sender Name</th>
        <th>Receiver Name</th>
        <th>Receiver's Email</th>
        <th>Action</th>
    </tr>

    <?php
    include('../dbconnection.php');

    

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
            <td><?php echo $count; ?></td>
            <td><img src="../dbimages/<?php echo $data['image']; ?>" alt="pic" style="max-width: 100px;"/> </td>
            <td><?php echo $data['sname']; ?></td>
            <td><?php echo $data['rname']; ?></td>
            <td><?php echo $data['remail']; ?></td>
            <td>
               
                <a href="http://localhost/20uca513/courier-management-system-main/admin/cms/dup.php?page=track">CheckStatus</a>||
                <a href="deletecourier.php?bb=<?php echo $data['billno']; ?>">Item Recived</a>
            </td>
        </tr>
        <?php
        }
    }
    ?>
</table>
</div>