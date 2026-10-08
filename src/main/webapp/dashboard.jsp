<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.StudentApp.dto.Student" %>
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
    flex-direction: column;
    justify-content: center;
    align-items: center;

    gap: 16px;

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

    overflow: hidden;
}


/* =========================================
   BACKGROUND GLOW
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
   NAVBAR / WELCOME CARD
========================================= */

.navbar {
    width: 460px;
    max-width: 90%;

    padding: 28px 25px;

    margin-bottom: 12px;

    text-align: center;

    border-radius: 22px;

    background:
        linear-gradient(
            135deg,
            rgba(255, 255, 255, 0.16),
            rgba(255, 255, 255, 0.06)
        );

    border: 1px solid rgba(255, 255, 255, 0.22);

    box-shadow:
        0 20px 50px rgba(0, 0, 0, 0.45),
        0 0 35px rgba(124, 58, 237, 0.25);

    backdrop-filter: blur(18px);

    position: relative;

    overflow: hidden;
}


/* Small glowing line on top */

.navbar::before {
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
            #c026d3,
            #ff0099
        );
}


/* =========================================
   LOGO / WELCOME TEXT
========================================= */

.Logo {
    font-size: 30px;

    font-weight: 700;

    letter-spacing: 0.5px;

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

    text-shadow: 0 0 25px rgba(129, 140, 248, 0.25);
}


/* =========================================
   DASHBOARD LINKS
========================================= */

body > a {
    width: 460px;
    max-width: 90%;

    height: 56px;

    display: flex;

    justify-content: center;
    align-items: center;

    border-radius: 15px;

    text-decoration: none;

    color: #ffffff;

    font-size: 16px;

    font-weight: 600;

    letter-spacing: 0.4px;

    background:
        linear-gradient(
            135deg,
            rgba(255, 255, 255, 0.14),
            rgba(255, 255, 255, 0.05)
        );

    border: 1px solid rgba(255, 255, 255, 0.18);

    box-shadow:
        0 10px 25px rgba(0, 0, 0, 0.30);

    backdrop-filter: blur(15px);

    transition:
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background 0.3s ease,
        border-color 0.3s ease;
}


/* =========================================
   LINK HOVER
========================================= */

body > a:hover {
    transform: translateY(-5px) scale(1.02);

    color: #ffffff;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    border-color: rgba(255, 255, 255, 0.45);

    box-shadow:
        0 15px 35px rgba(99, 102, 241, 0.40),
        0 0 25px rgba(236, 72, 153, 0.20);
}


/* =========================================
   CLICK EFFECT
========================================= */

body > a:active {
    transform: translateY(-1px) scale(0.99);
}


/* =========================================
   LOGOUT BUTTON
========================================= */

body > a:last-of-type {
    margin-top: 5px;

    color: #ffe4f4;

    background:
        linear-gradient(
            135deg,
            rgba(190, 24, 93, 0.25),
            rgba(126, 34, 206, 0.25)
        );

    border: 1px solid rgba(244, 114, 182, 0.25);
}


body > a:last-of-type:hover {
    color: #ffffff;

    background:
        linear-gradient(
            90deg,
            #db2777,
            #c026d3,
            #7c3aed
        );

    box-shadow:
        0 15px 35px rgba(219, 39, 119, 0.40),
        0 0 25px rgba(192, 38, 211, 0.25);
}


/* =========================================
   SUCCESS MESSAGE
========================================= */

body > div {
    position: fixed;

    top: 25px;
    left: 50%;

    transform: translateX(-50%);

    padding: 13px 28px;

    border-radius: 12px;

    color: #ffffff;

    font-size: 14px;

    font-weight: 600;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #c026d3
        );

    box-shadow:
        0 10px 30px rgba(99, 102, 241, 0.35);

    z-index: 100;

    backdrop-filter: blur(10px);
}


/* =========================================
   MOBILE RESPONSIVE
========================================= */

@media (max-width: 600px) {

    body {
        padding: 20px;

        gap: 12px;

        overflow-y: auto;
    }

    .navbar {
        width: 95%;

        padding: 24px 18px;
    }

    body > a {
        width: 95%;

        max-width: 380px;

        height: 52px;

        font-size: 15px;
    }

    .Logo {
        font-size: 24px;
    }
}
</style>
</head>
<body>
<%Student s=null;
if(session.getAttribute("Student")!=null){
	s=(Student)session.getAttribute("Student");
}%>
<nav class="navbar">
<div class="Logo">
Welcome <%=s.getSname()%>
</div>
</nav>
<%if(s.getSid()==2){ %>
<a href="viewstudents">View Students</a>
<%} %>
<a href="update.jsp">Update</a>
<a href="profile.jsp">View profile</a>
<a href="logout">Logout	</a>

</body>
</html>