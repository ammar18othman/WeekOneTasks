<?php
$connection = new mysqli("localhost","root","","servomotordb");
$sql1 = mysqli_query($connection,"SELECT Enigne1,Enigne2,Enigne3,Enigne4,Enigne5,Enigne6 FROM servomotors_table WHERE SMID=(SELECT MAX(SMID) FROM servomotors_table)");
$sql2 = mysqli_query($connection,"SELECT ON_OFF FROM on_off_table WHERE ID=(SELECT MAX(ID) FROM on_off_table)");
$print_data1 = mysqli_fetch_row($sql1);
$print_data2 = mysqli_fetch_row($sql2);

if($print_data1>0){
echo 'Engine1: ';
echo $print_data1[0];
echo '<br>';
echo 'Engine2: ';
echo $print_data1[1];
echo '<br>';
echo 'Engine3: ';
echo $print_data1[2];
echo '<br>';
echo 'Engine4: ';
echo $print_data1[3];
echo '<br>';
echo 'Engine5: ';
echo $print_data1[4];
echo '<br>';
echo 'Engine6: ';
echo $print_data1[5];
echo '<br>';
} else {
    echo "No data have been saved<br>";
}

if($print_data2>0){
echo "On/Off: ";
echo $print_data2[0];
echo '<br>';
} else {
    echo "On/Off button have not triggered yet<br>";
}

?>