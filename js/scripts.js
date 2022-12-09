// Path: js\scripts.js

// Validating form

const validateform = () => {
    var name = document.myform.username.value;
    var password = document.myform.password.value;
    var cpassword = document.myform.cpassword.value;
    var email = document.myform.email.value;
    var mobile = document.myform.mobile.value;

    if (name == null || name == "" && password == null || password == "" && cpassword == null || cpassword == "" && email == null || email == "" && mobile == null || mobile == "") {
        document.getElementById("message").innerHTML = "**All fields must be filled out";
        return false;
    }
    else if (password.length < 6) {
        // alert("Password must be at least 6 characters long.");
        document.getElementById("message").innerHTML = "**Password must be at least 6 characters long.";
        return false;
    }
    else if (password != cpassword) {
        // alert("Password must be at least 6 characters long.");
        document.getElementById("message").innerHTML = "**Password must be same!";
        return false;
    }

    // Validate email address
    else if (email.indexOf("@", 0) < 0) {
        // alert("Please enter a valid e-mail address.");
        document.getElementById("message").innerHTML = "**Please enter a valid e-mail address.";
        return false;
    }

    else if (email.indexOf(".", 0) < 0) {
        // alert("Please enter a valid e-mail address.");
        document.getElementById("message").innerHTML = "**Please enter a valid e-mail address.";
        return false;
    }
    // Validate mobile number
    else if (isNaN(mobile)) {
        document.getElementById("message").innerHTML = "**It seems you have entered a non-numeric value kindly enter a valid mobile number";
        return false;
    }
    else if (mobile.length != 10) {
        document.getElementById("message").innerHTML = "**Mobile number must be 10 digit";
        return false;
    }
    else {
        return true;
    }

}


// Hide and show password (not implemented in frontend!)
const showPassword = () => {
    var showPass = document.getElementById("showPass");
    if (showPass.type === "password") {
        showPass.type = "text";
    } else {
        showPass.type = "password";
    }
}


// send ajax post request to server(php) to save data in database 

const myform = document.getElementById('myform');
myform.addEventListener('submit', (e) => {
    e.preventDefault();
    
    if (validateform()) {
        const data = {
            username: document.forms['myform']['username'].value,
            email: document.forms['myform']['email'].value,
            mobile: document.forms['myform']['mobile'].value,
            password: document.forms['myform']['password'].value,
            cpassword: document.forms['myform']['cpassword'].value,
        };

        const jsonString = JSON.stringify(data);

        const xhr = new XMLHttpRequest();
        xhr.open("POST", "http://localhost/signup/api/signup_api.php", true);
        xhr.setRequestHeader("Content-type", "application/json");
        xhr.send(jsonString);

        xhr.onload = function () {
            console.log(this.responseText);
            document.getElementById("smessage").innerHTML = this.response;
        }
    } else {
        document.getElementById("message").innerHTML = "Please fill all the fields correctly";
    }
});



