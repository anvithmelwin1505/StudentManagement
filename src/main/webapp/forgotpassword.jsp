	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	
	<!DOCTYPE html>
	<html>
	
	<head>
	
	<meta charset="UTF-8">
	
	<title>Change Password</title>
	
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

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    color: #ffffff;

    padding: 30px;

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

    overflow: hidden;
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
   MAIN FORM CARD
========================================= */

form {
    width: 100%;
    max-width: 595px;

    padding: 45px 48px;

    border-radius: 25px;

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
   OUTER FIELDSET
========================================= */

body > fieldset {
    display: none;
}


/* =========================================
   INNER FIELDSET
========================================= */

form fieldset {
    border: none;

    padding: 0;

    margin: 0;
}


/* =========================================
   CHANGE PASSWORD TITLE
========================================= */

form fieldset legend {
    width: 100%;

    text-align: center;

    font-size: 30px;

    font-weight: 700;

    letter-spacing: 0.5px;

    padding: 0;

    margin-bottom: 35px;

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
   LABEL
========================================= */

label {
    display: block;

    font-size: 15px;

    font-weight: 600;

    letter-spacing: 0.2px;

    margin-bottom: 9px;

    color: rgba(255, 255, 255, 0.92);
}


/* =========================================
   INPUT FIELDS
========================================= */

input[type="tel"],
input[type="email"],
input[type="text"],
input[type="password"] {

    width: 100%;

    height: 60px;

    padding: 0 18px;

    margin-bottom: 23px;

    border-radius: 12px;

    border: 1px solid rgba(255, 255, 255, 0.18);

    outline: none;

    background:
        rgba(9, 0, 31, 0.70);

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 15px;

    transition:
        all 0.3s ease;
}


/* =========================================
   INPUT PLACEHOLDER
========================================= */

input::placeholder {
    color: rgba(255, 255, 255, 0.40);
}


/* =========================================
   INPUT FOCUS
========================================= */

input[type="tel"]:focus,
input[type="email"]:focus,
input[type="text"]:focus,
input[type="password"]:focus {

    border-color: #818cf8;

    background:
        rgba(9, 0, 31, 0.90);

    box-shadow:
        0 0 0 3px rgba(99, 102, 241, 0.14),
        0 0 22px rgba(0, 229, 255, 0.15);

    transform: translateY(-2px);
}


/* =========================================
   RESET PASSWORD BUTTON
========================================= */

input[type="submit"] {

    width: 100%;

    height: 62px;

    margin-top: 3px;

    border: none;

    border-radius: 12px;

    cursor: pointer;

    color: #ffffff;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 17px;

    font-weight: 700;

    letter-spacing: 0.5px;

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
   TEXT BELOW BUTTON
========================================= */

form fieldset {

    color: rgba(255, 255, 255, 0.65);

    font-size: 15px;

    line-height: 1.6;
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

@media (max-width: 700px) {

    body {
        padding: 20px;

        overflow-y: auto;
    }

    form {

        max-width: 450px;

        padding: 35px 28px;

        border-radius: 20px;
    }

    form fieldset legend {

        font-size: 26px;

        margin-bottom: 28px;
    }

    input[type="tel"],
    input[type="email"],
    input[type="text"],
    input[type="password"] {

        height: 53px;

        font-size: 14px;
    }

    input[type="submit"] {

        height: 54px;

        font-size: 16px;
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
	
	
	<form action="forgotpassword" method="post">
	
	    <fieldset>
	
	        <legend>CHANGE PASSWORD</legend>
	
	
	        <label for="phone">
	            Enter Phone Number
	        </label>
	
	        <input
	            type="tel"
	            id="phone"
	            name="phone"
	            placeholder="Enter Phone Number"
	            required>
	
	
	        <label for="email">
	            Enter Email
	        </label>
	
	        <input
	            type="email"
	            id="email"
	            name="email"
	            placeholder="Enter Email"
	            required>
	
	
	        <label for="password">
	            Enter New Password
	        </label>
	
	        <input
	            type="password"
	            id="password"
	            name="password"
	            placeholder="Enter New Password"
	            required>
	
	
	        <label for="confirm">
	            Confirm Password
	        </label>
	
	        <input
	            type="password"
	            id="confirm"
	            name="confirm"
	            placeholder="Confirm Password"
	            required>
	
	
	        <input
	            type="submit"
	            value="RESET PASSWORD">
	
	
	        <br>
	        <br>
	
	
	        <div style="text-align:center;">
	
	            If password is changed successfully,
	            get back to
	
	            <a href="login.jsp">
	                Login
	            </a>
	
	        </div>
	
	    </fieldset>
	
	</form>
	
	
	</body>
	
	</html>