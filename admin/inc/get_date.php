<?php
    //created new connection file, i'm having an error within directory so i do this magic
    include('DBConnection.php');

    $check_id = "";

    $driver_count = array();
    $date = array();

    $select_date = "SELECT `date_created` FROM `drivers_list` ORDER BY `date_created` ASC";
    $result = $conn->query($select_date);

    while($row = mysqli_fetch_assoc($result)) {

        $date[] = $row['date_created'];

        $get_drivers_count = "SELECT * FROM `drivers_list` WHERE `date_created` = '" . $row['date_created'] . "'";
        $result_count = $conn->query($get_drivers_count);

        $driver_count[] = mysqli_num_rows($result_count);

    }

    echo json_encode(array('date' => $date, 'count' => $driver_count));

    



?>