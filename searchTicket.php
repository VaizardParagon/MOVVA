<?php

    include ("admin/inc/DBConnection.php");

    $id = 0;
    $offense_id = 0;
    $drivers_id = 0;



    $remarks = "";
    $violation = array();
    $place = "";
    $date = "";
    $license_no = "";
    $code = "";

    $ticket = $_POST['ticket'];

    $getTicket = "SELECT * FROM `offense_list` WHERE ticket_no = '" . $ticket . "'";

    $sql = $conn -> query($getTicket);

    while($row = mysqli_fetch_assoc($sql)) {

        $remarks = $row['remarks'];
        $date = $row['date_created'];
        $id = $row['id'];
        $drivers_id = $row['driver_id'];

    }

    $getData = "SELECT * FROM offense_items WHERE driver_offense_id = '". $id ."'";

    $sql2 = $conn -> query($getData);

    while ($row2 = mysqli_fetch_assoc($sql2)) {

        $offense_id = $row2['offense_id'];

        $getOffenseName = "SELECT `name` FROM offenses WHERE id = '" . $offense_id . "'";

        $getName = $conn -> query($getOffenseName);

        while ($name = mysqli_fetch_assoc($getName)) {
            $violation[] = $name['name'];
        }

    } 

    $getDriverLicense = "SELECT `meta_value` FROM drivers_meta WHERE driver_id = '" . $drivers_id . "' AND meta_field = 'license_id_no'";

    $sql3 = $conn -> query($getDriverLicense);

    while ($row3 = mysqli_fetch_assoc($sql3)) {
        $license_no = $row3['meta_value'];
    }

    $getDriverAddr = "SELECT `meta_value` FROM drivers_meta WHERE driver_id = '" . $drivers_id . "' AND meta_field = 'present_address'";

    $sql4 = $conn -> query($getDriverAddr);

    while ($row4 = mysqli_fetch_assoc($sql4)) {
        $place = $row4['meta_value'];
    }

    $newDate = date("M d Y h:i:s a", strtotime($date));

    $output = array ( 'remarks' => $remarks, 'date' => $newDate, 'violation' => $violation, 'license' => $license_no, 'address' => $place);

    echo json_encode($output);


    
   
    

?>