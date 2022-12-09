<?php
    include '../database/db_connection.php';

    if (isset($_POST['submit'])) {
        $username = mysqli_real_escape_string($CONNECTION, $_POST['username']);
        $email = mysqli_real_escape_string($CONNECTION, $_POST['email']);
        $mobile = mysqli_real_escape_string($CONNECTION, $_POST['mobile']);
        $password = mysqli_real_escape_string($CONNECTION, $_POST['password']);
        $cpassword = mysqli_real_escape_string(
            $CONNECTION,
            $_POST['cpassword']
        );

        $pass = password_hash($password, PASSWORD_BCRYPT);
        $cpass = password_hash($cpassword, PASSWORD_BCRYPT);

        $emailquery = "select * from user where email = '$email' ";

        $query = mysqli_query($CONNECTION, $emailquery);

        $emailcount = mysqli_num_rows($query);

        if ($emailcount > 0) { ?>
    <script>
        alert("Email already exists"); 
    </script>

    <?php } else {if ($password === $cpassword) {
                $insert_query = "insert into user(username, email, mobile, password, cpassword) values('$username', '$email', '$mobile', '$pass', '$cpass')";
                $save_user = mysqli_query($CONNECTION, $insert_query);

                if ($save_user) { ?>
    <script>
        alert("You have successfully registered!");
        localStorage.setItem("username", "<?php echo $username; ?>");
        localStorage.setItem("email", "<?php echo $email; ?>");
        localStorage.setItem("mobile", "<?php echo $mobile; ?>");
    </script>
    <?php } else { ?>
    <script>
        alert("User not saved"); 
    </script>
    <?php }
            } else {
                 ?>
    <script>
        alert("Password not matched!"); 
    </script>

    <?php

            }}

            // header('Location: /signup/view/login.php');
    }
    
    ?>