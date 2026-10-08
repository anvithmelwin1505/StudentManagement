<%@page import="com.StudentApp.dto.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
```css
/* =========================================
   RESET
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
    padding: 45px 30px;

    font-family: "Segoe UI", "Poppins", Arial, sans-serif;

    text-align: center;

    background:
        radial-gradient(
            circle at 8% 15%,
            rgba(0, 229, 255, 0.35),
            transparent 28%
        ),
        radial-gradient(
            circle at 92% 20%,
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
   MAIN PAGE TITLE
========================================= */

body::before {
    content: "Student Management System";

    display: block;

    margin-bottom: 8px;

    font-size: 31px;
    font-weight: 800;
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
}


/* =========================================
   SUB TITLE
========================================= */

body::after {
    content: "Student Details";

    display: block;

    margin-bottom: 32px;

    color: rgba(255, 255, 255, 0.82);

    font-size: 16px;
    font-weight: 500;
    letter-spacing: 1px;
}


/* =========================================
   TABLE
========================================= */

table {
    width: 100%;
    max-width: 1200px;

    margin: 0 auto;

    border-collapse: separate;
    border-spacing: 0;

    background: rgba(255, 255, 255, 0.97);

    border: 1px solid rgba(255, 255, 255, 0.25);

    border-radius: 20px;

    overflow: hidden;

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.50),
        0 0 30px rgba(99, 102, 241, 0.18);
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
}


th {
    padding: 18px 15px;

    color: #ffffff;

    font-size: 15px;
    font-weight: 750;

    text-align: center;

    letter-spacing: 0.4px;

    border: none;

    text-shadow:
        0 1px 3px rgba(0, 0, 0, 0.25);
}


/* =========================================
   TABLE DATA
========================================= */

td {
    padding: 16px 13px;

    color: #1e293b;

    font-size: 14px;
    font-weight: 500;

    text-align: center;

    background: #ffffff;

    border-bottom: 1px solid #e5e7eb;

    transition:
        background 0.3s ease,
        transform 0.3s ease;
}


/* =========================================
   ALTERNATE ROW COLORS
========================================= */

tr:nth-child(even) td {
    background: #f7f5ff;
}

tr:nth-child(odd) td {
    background: #ffffff;
}


/* =========================================
   ROW HOVER
========================================= */

table tr:hover td {
    background: #eef2ff !important;
}


/* =========================================
   STUDENT ID
========================================= */

td:first-child {
    color: #6366f1;

    font-weight: 800;
}


/* =========================================
   STUDENT NAME
========================================= */

td:nth-child(2) {
    color: #111827;

    font-weight: 700;
}


/* =========================================
   PHONE
========================================= */

td:nth-child(3) {
    color: #334155;

    font-weight: 500;
}


/* =========================================
   EMAIL
========================================= */

td:nth-child(4) {
    color: #2563eb;

    font-weight: 600;
}


/* =========================================
   LOCATION
========================================= */

td:nth-child(5) {
    color: #475569;
}


/* =========================================
   BRANCH
========================================= */

td:nth-child(6) {
    color: #7c3aed;

    font-weight: 750;
}


/* =========================================
   ACTION COLUMN
========================================= */

td:last-child {
    white-space: nowrap;
}


/* =========================================
   DELETE BUTTON
========================================= */

td:last-child a {
    display: inline-block;

    min-width: 85px;

    padding: 9px 17px;

    border-radius: 9px;

    background:
        linear-gradient(
            90deg,
            #6366f1,
            #8b5cf6,
            #ec4899
        );

    color: #ffffff;

    font-size: 13px;
    font-weight: 700;

    text-decoration: none;

    box-shadow:
        0 5px 15px rgba(124, 58, 237, 0.30);

    transition:
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background 0.3s ease;
}


/* =========================================
   DELETE HOVER
========================================= */

td:last-child a:hover {
    transform: translateY(-3px);

    background:
        linear-gradient(
            90deg,
            #00e5ff,
            #6366f1,
            #c026d3,
            #ff0099
        );

    box-shadow:
        0 9px 25px rgba(236, 72, 153, 0.40);
}


/* =========================================
   BACK TO DASHBOARD
========================================= */

body > a {
    display: inline-block;

    margin-top: 28px;

    padding: 13px 30px;

    border-radius: 11px;

    background:
        linear-gradient(
            90deg,
            #06b6d4,
            #6366f1,
            #a855f7,
            #ec4899
        );

    color: #ffffff;

    font-size: 15px;
    font-weight: 750;

    text-decoration: none;

    letter-spacing: 0.2px;

    box-shadow:
        0 8px 22px rgba(99, 102, 241, 0.35);

    transition:
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background 0.3s ease;
}


/* =========================================
   BACK BUTTON HOVER
========================================= */

body > a:hover {
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
        0 12px 30px rgba(236, 72, 153, 0.40);
}


/* =========================================
   MESSAGE INSIDE TABLE
========================================= */

table > *:first-child {
    color: #334155;
}


/* =========================================
   TABLE TOP GLOW
========================================= */

table::before {
    content: "";
    display: block;

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
   TABLE RESPONSIVE
========================================= */

@media (max-width: 1000px) {

    body {
        padding: 35px 15px;
    }

    body::before {
        font-size: 27px;
    }

    table {
        display: block;

        overflow-x: auto;

        white-space: nowrap;

        border-radius: 16px;
    }

    th {
        padding: 15px 13px;

        font-size: 14px;
    }

    td {
        padding: 14px 12px;

        font-size: 13px;
    }
}


/* =========================================
   MOBILE
========================================= */

@media (max-width: 600px) {

    body {
        padding: 28px 10px;
    }

    body::before {
        font-size: 23px;
    }

    body::after {
        margin-bottom: 25px;

        font-size: 13px;
    }

    table {
        border-radius: 14px;
    }

    th {
        padding: 13px 11px;

        font-size: 12px;
    }

    td {
        padding: 12px 10px;

        font-size: 12px;
    }

    td:last-child a {
        min-width: 70px;

        padding: 8px 12px;

        font-size: 11px;
    }

    body > a {
        width: 90%;

        padding: 12px 20px;

        font-size: 14px;
    }
}
```
</style>
</head>
<body>
<%ArrayList<Student> list=null; %>
<%if(request.getAttribute("stdlist")!=null){ %>
<%list=(ArrayList)request.getAttribute("stdlist"); %>
<%} %>
<table>
<%if(request.getParameter("message")!=null){ %>
<%=request.getParameter("message") %>
<%} %>
<thead>
<tr>
<th>Sid</th>
<th>Name</th>
<th>Phone</th>
<th>Email</th>
<th>Location</th>
<th>Branch</th>
<th>Action</th>
</tr>
<%for(Student st:list){ %>
<tr>
<td><%=st.getSid()%></td>
<td><%=st.getSname()%></td>
<td><%=st.getPhone()%></td>
<td><%=st.getEmail()%></td>
<td><%=st.getLocation()%></td>
<td><%=st.getBranch()%></td>
<td><a href="delete?sid=<%=st.getSid()%>">Delete</a></td>
</tr>
<%} %>
</thead>
</table>
<a href="dashboard.jsp" type="submit">Back to DashBoard</a>
</body>
</html>