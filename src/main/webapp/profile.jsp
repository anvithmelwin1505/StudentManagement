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

    padding: 50px 25px;

    display: flex;
    flex-direction: column;

    justify-content: center;
    align-items: center;

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
   STUDENT TABLE
========================================= */

table {
    width: 100%;

    max-width: 1000px;

    border-collapse: separate;

    border-spacing: 0;

    overflow: hidden;

    border-radius: 20px;

    background:
        rgba(255, 255, 255, 0.96);

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.50),
        0 0 35px rgba(99, 102, 241, 0.18);

    backdrop-filter: blur(15px);

    position: relative;
}


/* =========================================
   TABLE HEADER
========================================= */

thead tr:first-child {

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    color: #ffffff;
}


/* =========================================
   TABLE HEADINGS
========================================= */

th {
    padding: 19px 16px;

    font-size: 15px;

    font-weight: 700;

    text-align: center;

    letter-spacing: 0.4px;

    white-space: nowrap;

    border: none;
}


/* =========================================
   TABLE DATA
========================================= */

td {

    padding: 20px 16px;

    text-align: center;

    font-size: 14px;

    font-weight: 500;

    color: #1e293b;

    background: #ffffff;

    border-bottom: 1px solid #e2e8f0;

    white-space: nowrap;

    transition:
        background 0.3s ease,
        color 0.3s ease;
}


/* =========================================
   ALTERNATE COLUMNS
========================================= */

td:nth-child(odd) {
    background: #f8faff;
}


/* =========================================
   TABLE ROW HOVER
========================================= */

tbody tr:hover td {
    background: #eef2ff;
}


/* =========================================
   SECOND ROW
========================================= */

table tr:nth-child(2) td {

    padding-top: 23px;

    padding-bottom: 23px;

    background:
        linear-gradient(
            90deg,
            #f8faff,
            #ffffff,
            #faf5ff
        );
}


/* =========================================
   DATA TEXT HOVER
========================================= */

table tr:nth-child(2):hover td {

    background:
        linear-gradient(
            90deg,
            #ecfeff,
            #eef2ff,
            #fdf4ff
        );
}


/* =========================================
   TABLE OUTER GLOW
========================================= */

table::before {

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

    z-index: 2;
}


/* =========================================
   BACK TO DASHBOARD BUTTON
========================================= */

a {

    display: block;

    width: 230px;

    padding: 14px 20px;

    margin: 30px auto 0;

    text-align: center;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    color: #ffffff;

    border-radius: 12px;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    font-size: 15px;

    font-weight: 700;

    letter-spacing: 0.3px;

    text-decoration: none;

    box-shadow:
        0 10px 25px rgba(99, 102, 241, 0.35);

    transition:
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background 0.3s ease;
}


/* =========================================
   BUTTON HOVER
========================================= */

a:hover {

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
        0 15px 35px rgba(99, 102, 241, 0.45),
        0 0 25px rgba(236, 72, 153, 0.20);
}


/* =========================================
   BUTTON CLICK
========================================= */

a:active {

    transform: translateY(-1px) scale(0.98);
}


/* =========================================
   MOBILE / TABLET
========================================= */

@media (max-width: 950px) {

    body {

        padding: 35px 15px;

        justify-content: flex-start;

        overflow-x: auto;
    }

    table {

        width: 950px;

        max-width: none;

        margin-top: 30px;
    }

    th {

        padding: 16px 13px;

        font-size: 14px;
    }

    td {

        padding: 17px 13px;

        font-size: 13px;
    }

    a {

        margin-top: 25px;

        width: 220px;
    }
}


/* =========================================
   SMALL MOBILE
========================================= */

@media (max-width: 600px) {

    body {

        padding: 25px 10px;
    }

    table {

        width: 850px;

        margin-top: 20px;

        border-radius: 15px;
    }

    th {

        padding: 14px 10px;

        font-size: 13px;
    }

    td {

        padding: 15px 10px;

        font-size: 12px;
    }

    a {

        width: 210px;

        padding: 12px 16px;

        font-size: 14px;
    }
}
</style>
</head>
<body>
<%Student s=(Student)session.getAttribute("Student"); %>
<table>
<thead>
<tr>
<th>Sid</th>
<th>Name</th>
<th>Phone</th>
<th>Email</th>
<th>Location</th>
<th>Branch</th>
</tr>
<tr>
<td><%=s.getSid()%></td>
<td><%=s.getSname()%></td>
<td><%=s.getPhone()%></td>
<td><%=s.getEmail()%></td>
<td><%=s.getLocation()%></td>
<td><%=s.getBranch()%></td>
</tr>
</thead>
<a href="dashboard.jsp" type="submit">Back to DashBoard</a>
</table>
</body>
</html>