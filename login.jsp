<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Signup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            height: 100vh;
            background: url('https://i.pinimg.com/1200x/bb/3d/02/bb3d027efc8586606821a1c60c10a986.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            backdrop-filter: blur(2px);
        }

        .container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
        }

        .auth-box {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 40px 30px;
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 32px rgba(31, 38, 135, 0.37);
            text-align: center;
        }

        .auth-box h2 {
            color: #fff;
            margin-bottom: 25px;
        }

        .input-box {
            position: relative;
            margin-bottom: 20px;
        }

        .input-box i {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            color: #fff;
        }

        .input-box input {
            width: 100%;
            padding: 12px 12px 12px 45px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 16px;
        }

        .input-box input::placeholder {
            color: #eee;
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 14px;
            color: #fff;
            margin-bottom: 20px;
        }

        .options a {
            color: #fff;
            text-decoration: none;
        }

        .auth-btn {
            width: 100%;
            padding: 12px;
            border: none;
            background: #ffffff;
            color: #6a0dad;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .auth-btn:hover {
            background: #eee;
        }

        .toggle-link {
            margin-top: 20px;
            font-size: 14px;
            color: #fff;
        }

        .toggle-link a {
            color: #ffffff;
            text-decoration: underline;
        }

        .form-container {
            max-height: 500px;
            overflow: hidden;
            transition: all 0.5s ease-in-out;
        }

        .login-form, .signup-form {
            padding: 0 20px;
        }

        .signup-form {
            display: none;
        }

        .error {
            color: red;
            font-size: 12px;
            margin-top: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="auth-box">
            <div class="form-container">
                <!-- Login Form -->
                <form class="login-form" id="loginForm">
                    <h2>Login</h2>
                    <div class="input-box">
                        <i class="fa-solid fa-envelope"></i>
                        <input type="email" placeholder="Email" id="loginEmail" required>
                    </div>
                    <div class="input-box">
                        <i class="fa-solid fa-lock"></i>
                        <input type="password" placeholder="Password" id="loginPassword" required>
                    </div>
                    <div class="options">
                        <label><input type="checkbox"> Remember Me</label>
                        <a href="#">Forgot Password</a>
                    </div>
                    <button type="submit" class="auth-btn">Log in</button>
                    <p class="toggle-link">Don't have an account? <a href="#" id="showSignup">Register</a></p>
                </form>

                <!-- Signup Form -->
                <form class="signup-form" id="signupForm">
                    <h2>Sign Up</h2>
                    <div class="input-box">
                        <i class="fa-solid fa-user"></i>
                        <input type="text" placeholder="Full Name" id="signupName" required>
                    </div>
                    <div class="input-box">
                        <i class="fa-solid fa-envelope"></i>
                        <input type="email" placeholder="Email" id="signupEmail" required>
                    </div>
                    <div class="input-box">
                        <i class="fa-solid fa-lock"></i>
                        <input type="password" placeholder="Password" id="signupPassword" required>
                    </div>
                    <div class="input-box">
                        <i class="fa-solid fa-lock"></i>
                        <input type="password" placeholder="Confirm Password" id="confirmPassword" required>
                    </div>
                    <button type="submit" class="auth-btn">Sign Up</button>
                    <p class="toggle-link">Already have an account? <a href="#" id="showLogin">Login</a></p>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Toggle between login and signup forms
        document.getElementById('showSignup').addEventListener('click', function(e) {
            e.preventDefault();
            document.querySelector('.login-form').style.display = 'none';
            document.querySelector('.signup-form').style.display = 'block';
        });

        document.getElementById('showLogin').addEventListener('click', function(e) {
            e.preventDefault();
            document.querySelector('.login-form').style.display = 'block';
            document.querySelector('.signup-form').style.display = 'none';
        });

        // Handle login form submission
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('loginEmail').value;
            const password = document.getElementById('loginPassword').value;
            
            // Here you would typically send this data to your server
            console.log('Login attempt:', { email, password });
            alert('Login functionality would be implemented here');
        });

        // Handle signup form submission
        document.getElementById('signupForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('signupName').value;
            const email = document.getElementById('signupEmail').value;
            const password = document.getElementById('signupPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            
            // Simple validation
            if (password !== confirmPassword) {
                alert('Passwords do not match');
                return;
            }
            
            // Here you would typically send this data to your server
            console.log('Signup attempt:', { name, email, password });
            alert('Signup successful! Welcome ' + name);
        });
    </script>
</body>
</html>