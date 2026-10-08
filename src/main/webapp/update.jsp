<%@page import="com.StudentApp.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   UPDATE FORM
========================================= */

form {
    width: 100%;

    max-width: 500px;

    padding: 42px 42px 38px;

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
   UPDATE FORM TITLE
========================================= */

form::after {
    content: "UPDATE STUDENT";

    display: block;

    width: 100%;

    text-align: center;

    font-size: 30px;

    font-weight: 800;

    letter-spacing: 0.7px;

    margin-bottom: 32px;

    padding-top: 2px;

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

    font-size: 15px;

    font-weight: 600;

    letter-spacing: 0.2px;
}


/* =========================================
   TEXT INPUTS
========================================= */

input[type="text"] {

    display: block;

    width: 100%;

    height: 55px;

    padding: 0 17px;

    margin-bottom: 21px;

    border-radius: 12px;

    border: 1px solid rgba(255, 255, 255, 0.18);

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

input[type="text"]::placeholder {
    color: rgba(255, 255, 255, 0.40);
}


/* =========================================
   INPUT FOCUS
========================================= */

input[type="text"]:focus {

    border-color: #818cf8;

    background:
        rgba(9, 0, 31, 0.92);

    box-shadow:
        0 0 0 3px rgba(99, 102, 241, 0.14),
        0 0 22px rgba(0, 229, 255, 0.15);

    transform: translateY(-2px);
}


/* =========================================
   UPDATE BUTTON
========================================= */

input[type="submit"] {

    display: block;

    width: 100%;

    height: 57px;

    margin-top: 4px;

    margin-bottom: 17px;

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
   BUTTON ACTIVE
========================================= */

input[type="submit"]:active {
    transform: translateY(-1px) scale(0.99);
}


/* =========================================
   BACK TO DASHBOARD
========================================= */

a {

    display: block;

    width: 100%;

    height: 48px;

    line-height: 48px;

    text-align: center;

    border-radius: 11px;

    text-decoration: none;

    color: #c4b5fd;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 15px;

    font-weight: 600;

    background:
        rgba(255, 255, 255, 0.06);

    border: 1px solid rgba(255, 255, 255, 0.14);

    transition:
        transform 0.3s ease,
        color 0.3s ease,
        background 0.3s ease,
        box-shadow 0.3s ease;
}


/* =========================================
   LINK HOVER
========================================= */

a:hover {

    color: #ffffff;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7
        );

    border-color:
        rgba(255, 255, 255, 0.25);

    transform: translateY(-3px);

    box-shadow:
        0 10px 25px rgba(99, 102, 241, 0.35);
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

    color: #ffffff;

    font-size: 14px;

    font-weight: 600;

    background:
        linear-gradient(
            90deg,
            #dc2626,
            #e11d48,
            #db2777
        );

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

    color: #ffffff;

    font-size: 14px;

    font-weight: 600;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    box-shadow:
        0 10px 30px rgba(99, 102, 241, 0.35);

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

        padding: 34px 25px 30px;

        border-radius: 20px;
    }

    form::after {

        font-size: 26px;

        margin-bottom: 27px;
    }

    label {

        font-size: 13px;
    }

    input[type="text"] {

        height: 51px;

        font-size: 14px;

        margin-bottom: 17px;
    }

    input[type="submit"] {

        height: 53px;

        font-size: 16px;
    }

    a {

        height: 45px;

        line-height: 45px;

        font-size: 14px;
    }
}
</style>
</head>
<body>
<%Student s=null;%>
<%if(session.getAttribute("Student")!=null){%>
<%s=(Student)session.getAttribute("Student"); %>
<%} %>
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

<form action="update" method="post">
<label for="name">Name</label>
<input type="text" name="name" value="<%=s.getSname()%>">
<label for="branch">Branch</label>
<input type="text" name="branch" value="<%=s.getBranch()%>">
<label for="location">Location</label>
<input type="text" name="location" value="<%=s.getLocation()%>">
<input type="submit" value="Update">
<a href="dashboard.jsp">Back to DashBoard</a>
</form>
</body>
</html>