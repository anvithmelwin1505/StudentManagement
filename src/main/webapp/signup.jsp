<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Student Signup</title>

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

    padding: 35px 20px;

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

    background-attachment: fixed;

    overflow-x: hidden;
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

    filter: blur(140px);

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

    max-width: 480px;

    padding: 38px 42px 35px;

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

form::after {
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
   TOP GLOW
========================================= */

form::before {
    content: "";

    position: absolute;

    width: 200px;
    height: 100px;

    top: -70px;
    left: 50%;

    transform: translateX(-50%);

    background: #00e5ff;

    filter: blur(65px);

    opacity: 0.18;

    pointer-events: none;
}


/* =========================================
   FIELDSET
========================================= */

fieldset {
    border: none;

    width: 100%;

    position: relative;

    z-index: 2;
}


/* =========================================
   SIGNUP TITLE
========================================= */

legend {
    width: 100%;

    padding: 0;

    margin: 0 0 28px 0;

    text-align: center;

    font-size: 30px;

    font-weight: 800;

    letter-spacing: 0.7px;

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
   LABELS
========================================= */

label {
    display: block;

    width: 100%;

    margin-bottom: 8px;

    color: rgba(255, 255, 255, 0.92);

    font-size: 14px;

    font-weight: 600;

    letter-spacing: 0.2px;
}


/* =========================================
   INPUT FIELDS
========================================= */

input[type="text"],
input[type="tel"],
input[type="password"],
input[type="email"] {

    display: block;

    width: 100%;

    height: 50px;

    padding: 0 16px;

    margin-bottom: 17px;

    border-radius: 11px;

    border: 1px solid rgba(255, 255, 255, 0.18);

    outline: none;

    background:
        rgba(9, 0, 31, 0.72);

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 14px;

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

input[type="text"]:focus,
input[type="tel"]:focus,
input[type="password"]:focus,
input[type="email"]:focus {

    border-color: #818cf8;

    background:
        rgba(9, 0, 31, 0.92);

    box-shadow:
        0 0 0 3px rgba(99, 102, 241, 0.14),
        0 0 22px rgba(0, 229, 255, 0.15);

    transform: translateY(-2px);
}


/* =========================================
   SIGN UP BUTTON
========================================= */

input[type="submit"] {

    display: block;

    width: 100%;

    height: 55px;

    margin-top: 5px;

    border: none;

    border-radius: 12px;

    cursor: pointer;

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 16px;

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
   BUTTON HOVER
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
   BUTTON CLICK
========================================= */

input[type="submit"]:active {

    transform: translateY(-1px) scale(0.99);
}


/* =========================================
   LOGIN TEXT
========================================= */

form fieldset > div {

    color: rgba(255, 255, 255, 0.68);

    font-size: 14px;

    line-height: 1.6;

    text-align: center;
}


/* =========================================
   LOGIN LINK
========================================= */

a {

    color: #67e8f9;

    text-decoration: none;

    font-weight: 700;

    margin-left: 5px;

    transition:
        color 0.3s ease,
        text-shadow 0.3s ease;
}


a:hover {

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
   MOBILE RESPONSIVE
========================================= */

@media (max-width: 600px) {

    body {
        padding: 25px 15px;

        align-items: center;

        overflow-y: auto;
    }

    form {

        width: 100%;

        max-width: 420px;

        padding: 32px 25px 30px;

        border-radius: 20px;
    }

    legend {

        font-size: 26px;

        margin-bottom: 25px;
    }

    label {

        font-size: 13px;
    }

    input[type="text"],
    input[type="tel"],
    input[type="password"],
    input[type="email"] {

        height: 48px;

        font-size: 13px;

        margin-bottom: 15px;
    }

    input[type="submit"] {

        height: 53px;

        font-size: 15px;
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


<form action="signup" method="post">

    <fieldset>

        <legend>CREATE ACCOUNT</legend>


        <label for="name">
            Name
        </label>

        <input
            type="text"
            name="name"
            placeholder="Enter your name"
            required>


        <label for="phone">
            Phone
        </label>

        <input
            type="tel"
            name="phone"
            placeholder="Enter your phone number"
            required>


        <label for="email">
            Email
        </label>

        <input
            type="email"
            name="email"
            placeholder="Enter your email"
            required>


        <label for="location">
            Location
        </label>

        <input
            type="text"
            name="loc"
            placeholder="Enter your location"
            required>


        <label for="branch">
            Branch
        </label>

        <input
            type="text"
            name="branch"
            placeholder="Enter your branch"
            required>


        <label for="password">
            Password
        </label>

        <input
            type="password"
            name="password"
            placeholder="Enter your password"
            required>


        <label for="confirm">
            Confirm Password
        </label>

        <input
            type="password"
            name="confirm"
            placeholder="Confirm password"
            required>


        <input
            type="submit"
            value="SIGN UP">


        <br>
        <br>


        <div style="text-align:center;">

            Already have an account?

            <a href="login.jsp">
                Login
            </a>

        </div>


    </fieldset>

</form>


</body>

</html>