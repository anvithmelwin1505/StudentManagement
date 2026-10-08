<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Login Form</title>

    <style>

/* =========================================
   GLOBAL RESET
========================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* =========================================
   BODY
========================================= */

body {
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    padding: 30px;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    color: #ffffff;

    background:
        radial-gradient(
            circle at 10% 15%,
            rgba(0, 229, 255, 0.35),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 20%,
            rgba(255, 0, 153, 0.30),
            transparent 30%
        ),
        radial-gradient(
            circle at 80% 90%,
            rgba(124, 58, 237, 0.35),
            transparent 32%
        ),
        linear-gradient(
            135deg,
            #09001f 0%,
            #17004d 35%,
            #3b0764 65%,
            #19002f 100%
        );

    overflow-y: auto;
}


/* =========================================
   LEFT BACKGROUND GLOW
========================================= */

body::before {
    content: "";

    position: fixed;

    width: 350px;
    height: 350px;

    border-radius: 50%;

    background: #00e5ff;

    filter: blur(130px);

    opacity: 0.18;

    top: -80px;
    left: -80px;

    z-index: -1;
}


/* =========================================
   RIGHT BACKGROUND GLOW
========================================= */

body::after {
    content: "";

    position: fixed;

    width: 350px;
    height: 350px;

    border-radius: 50%;

    background: #ff0099;

    filter: blur(140px);

    opacity: 0.16;

    bottom: -100px;
    right: -80px;

    z-index: -1;
}


/* =========================================
   MAIN FORM
========================================= */

form {
    width: 100%;

    max-width: 520px;

    padding: 38px 45px 40px;

    border-radius: 24px;

    background:
        linear-gradient(
            135deg,
            rgba(255, 255, 255, 0.14),
            rgba(255, 255, 255, 0.05)
        );

    border: 1px solid rgba(255, 255, 255, 0.20);

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.50),
        0 0 40px rgba(99, 102, 241, 0.20);

    backdrop-filter: blur(18px);

    position: relative;

    overflow: hidden;
}


/* =========================================
   TOP GRADIENT LINE
========================================= */

form::before {
    content: "";

    position: absolute;

    top: 0;
    left: 0;

    width: 100%;
    height: 4px;

    background:
        linear-gradient(
            90deg,
            #00e5ff,
            #6366f1,
            #a855f7,
            #ec4899
        );
}


/* =========================================
   MAIN HEADING
========================================= */

.main-heading {
    width: 100%;

    text-align: center;

    font-size: 32px;

    font-weight: 800;

    letter-spacing: 1px;

    margin-bottom: 30px;

    background:
        linear-gradient(
            90deg,
            #67e8f9,
            #818cf8,
            #d946ef,
            #fb7185
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;

    background-clip: text;
}


/* =========================================
   FIELDSET
========================================= */

form fieldset {
    border: none;

    padding: 0;

    margin: 0;

    width: 100%;
}


/* =========================================
   LOGIN TITLE
========================================= */

.login-title {
    width: 100%;

    text-align: center;

    font-size: 22px;

    font-weight: 700;

    letter-spacing: 0.8px;

    margin-bottom: 28px;

    color: #e0e7ff;
}


/* =========================================
   LABEL
========================================= */

label {
    display: block;

    width: 100%;

    margin-bottom: 9px;

    color: rgba(255, 255, 255, 0.92);

    font-size: 15px;

    font-weight: 600;

    letter-spacing: 0.2px;
}


/* =========================================
   INPUT FIELDS
========================================= */

input[type="tel"],
input[type="password"] {
    display: block;

    width: 100%;

    height: 58px;

    padding: 0 18px;

    margin-bottom: 22px;

    border: 1px solid rgba(255, 255, 255, 0.18);

    border-radius: 12px;

    outline: none;

    background:
        rgba(9, 0, 31, 0.72);

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 15px;

    transition:
        border-color 0.3s ease,
        box-shadow 0.3s ease,
        transform 0.3s ease,
        background 0.3s ease;
}


/* =========================================
   PLACEHOLDER
========================================= */

input::placeholder {
    color: rgba(255, 255, 255, 0.40);
}


/* =========================================
   INPUT FOCUS
========================================= */

input[type="tel"]:focus,
input[type="password"]:focus {

    border-color: #818cf8;

    background:
        rgba(9, 0, 31, 0.92);

    box-shadow:
        0 0 0 3px rgba(99, 102, 241, 0.14),
        0 0 22px rgba(0, 229, 255, 0.15);

    transform: translateY(-2px);
}


/* =========================================
   LOGIN BUTTON
========================================= */

input[type="submit"] {

    display: block;

    width: 100%;

    height: 58px;

    margin-top: 5px;

    border: none;

    border-radius: 12px;

    cursor: pointer;

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 17px;

    font-weight: 700;

    letter-spacing: 0.6px;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    box-shadow:
        0 10px 25px rgba(99, 102, 241, 0.30);

    transition:
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background 0.3s ease;
}


/* =========================================
   LOGIN BUTTON HOVER
========================================= */

input[type="submit"]:hover {

    transform: translateY(-4px);

    background:
        linear-gradient(
            90deg,
            #00e5ff,
            #6366f1,
            #c026d3,
            #ff0099
        );

    box-shadow:
        0 15px 35px rgba(99, 102, 241, 0.40),
        0 0 25px rgba(236, 72, 153, 0.20);
}


/* =========================================
   LOGIN BUTTON CLICK
========================================= */

input[type="submit"]:active {
    transform: translateY(-1px) scale(0.99);
}


/* =========================================
   FORGOT PASSWORD SECTION
========================================= */

.forgot-section {

    width: 100%;

    text-align: center;

    margin-top: 30px;

    padding-top: 25px;

    border-top: 1px solid rgba(255, 255, 255, 0.12);
}


/* =========================================
   FORGOT PASSWORD TITLE
========================================= */

.forgot-title {

    font-size: 16px;

    font-weight: 700;

    letter-spacing: 0.5px;

    margin-bottom: 8px;

    color: #e0e7ff;
}


/* =========================================
   FORGOT PASSWORD TEXT
========================================= */

.forgot-text {

    width: 100%;

    text-align: center;

    color: rgba(255, 255, 255, 0.65);

    font-size: 14px;

    line-height: 1.6;
}


/* =========================================
   RESET PASSWORD LINK
========================================= */

.forgot-text a {

    display: inline-block;

    color: #67e8f9;

    text-decoration: none;

    font-weight: 700;

    margin-left: 4px;

    transition:
        color 0.3s ease,
        text-shadow 0.3s ease;
}


.forgot-text a:hover {

    color: #f0abfc;

    text-decoration: underline;

    text-shadow:
        0 0 12px rgba(240, 171, 252, 0.50);
}


/* =========================================
   ERROR MESSAGE
========================================= */

.error-message {

    position: fixed;

    top: 20px;
    left: 50%;

    transform: translateX(-50%);

    width: 400px;

    max-width: 90%;

    padding: 13px 20px;

    text-align: center;

    border-radius: 12px;

    background:
        linear-gradient(
            90deg,
            #dc2626,
            #e11d48,
            #db2777
        );

    color: #ffffff;

    font-size: 14px;

    font-weight: 600;

    box-shadow:
        0 10px 30px rgba(225, 29, 72, 0.35);

    z-index: 100;
}


/* =========================================
   SUCCESS MESSAGE
========================================= */

.success-message {

    position: fixed;

    top: 20px;
    left: 50%;

    transform: translateX(-50%);

    width: 400px;

    max-width: 90%;

    padding: 13px 20px;

    text-align: center;

    border-radius: 12px;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    color: #ffffff;

    font-size: 14px;

    font-weight: 600;

    box-shadow:
        0 10px 30px rgba(99, 102, 241, 0.35);

    z-index: 100;
}


/* =========================================
   MOBILE RESPONSIVE
========================================= */

@media (max-width: 600px) {

    body {
        padding: 20px;

        align-items: center;

        overflow-y: auto;
    }

    form {
        width: 100%;

        max-width: 430px;

        padding: 32px 25px 35px;

        border-radius: 20px;
    }

    .main-heading {
        font-size: 27px;

        margin-bottom: 25px;
    }

    .login-title {
        font-size: 20px;

        margin-bottom: 24px;
    }

    input[type="tel"],
    input[type="password"] {
        height: 53px;

        font-size: 14px;
    }

    input[type="submit"] {
        height: 54px;

        font-size: 16px;
    }

    .forgot-section {
        margin-top: 25px;

        padding-top: 20px;
    }

    .forgot-text {
        font-size: 13px;
    }
}

</style>

</head>


<body>


<% if(request.getAttribute("fail") != null) { %>

    <div class="error-message">
        <%= request.getAttribute("fail") %>
    </div>

<% } %>


<% if(request.getAttribute("success") != null) { %>

    <div class="success-message">
        <%= request.getAttribute("success") %>
    </div>

<% } %>


<form action="login" method="post">


    <!-- MAIN HEADING -->

    <div class="main-heading">
        LOGIN FORM
    </div>


    <!-- LOGIN -->

    <fieldset>

        <div class="login-title">
            LOGIN
        </div>


        <label for="phone">
            Enter Phone Number
        </label>

        <input
            type="tel"
            id="phone"
            name="phone"
            placeholder="Enter Phone Number"
            required>


        <label for="password">
            Enter Password
        </label>

        <input
            type="password"
            id="password"
            name="pw"
            placeholder="Enter Password"
            required>


        <input
            type="submit"
            value="LOGIN">

    </fieldset>


    <!-- FORGOT PASSWORD -->

    <div class="forgot-section">

        <div class="forgot-title">
            FORGOT PASSWORD?
        </div>

        <div class="forgot-text">

            Have you forgot the password?

            <a href="forgotpassword.jsp">
                Reset Password
            </a>

        </div>

    </div>


</form>


</body>

</html>