<?php
include '../database/db_connection.php';
header('Content-Type:application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');

// setting data
$data = json_decode(file_get_contents('php://input'), true);
$username = $data['username'];
$email = $data['email'];
$mobile = $data['mobile'];
$password = $data['password'];
$cpassword = $data['cpassword'];

// hash password and confirm password
$pass = password_hash($password, PASSWORD_BCRYPT);
$cpass = password_hash($cpassword, PASSWORD_BCRYPT);

//  email query to find the user email 
$emailquery = "select * from user where email = '$email' ";

$query = mysqli_query($CONNECTION, $emailquery);

$emailcount = mysqli_num_rows($query);

// checking if email is alredy exist throw a message
if ($emailcount > 0) {
    echo json_encode(['message' => 'Email already exists', 'status' => false]);
} else {

    // password equal or not
    if ($password === $cpassword) {
        $insert_query = "insert into user(username, email, mobile, password, cpassword) values('$username', '$email', '$mobile', '$pass', '$cpass')";
        $save_user = mysqli_query($CONNECTION, $insert_query);

        if ($save_user) {
            echo json_encode([
                'message' => 'You have successfully registered!',
                'status' => true,
            ]);
        } else {
            echo json_encode([
                'message' => 'User not saved',
                'status' => false,
            ]);
        }
    } else {
        echo json_encode([
            'message' => 'Password not matched!',
            'status' => false,
        ]);
    }
}

?>