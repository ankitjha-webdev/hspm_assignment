<?php
// file: db_connection.php
$_SERVER = 'localhost';  

$USER = 'root';

$PASS = '';  

$DB = 'signup';

$CONNECTION = mysqli_connect($_SERVER, $USER, $PASS, $DB);

if (!$CONNECTION) {

    die('Connection failed: ' . mysqli_connect_error());

} else {
    // echo '<h1>Connected successfully</h1>';
    ?>
<?php
}

?>