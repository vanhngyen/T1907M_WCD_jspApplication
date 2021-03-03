<%@ page import="com.example.bean.DBconnection" %><%--
  Created by IntelliJ IDEA.
  User: vanhv
  Date: 2/24/2021
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>JSP jstl application</title>
</head>
<body>
<%--&lt;%&ndash;jsp tag&ndash;%&gt;--%>
<%--<jsp:useBean id="myJavaBean" class="com.example.bean.DBconnection"></jsp:useBean>--%>
<%--    &lt;%&ndash;  <c:forEach var="row" items="${result.rows}">&ndash;%&gt;--%>


<%--    &lt;%&ndash;  </c:forEach>&ndash;%&gt;--%>
<%--<%--%>
<%--    //Scriptlet--%>
<%--    DBconnection dBconnection = new DBconnection();--%>

<%--%>--%>
<%--&lt;%&ndash;jstl&ndash;%&gt;--%>
<%--<sql:query var=""/>--%>

    <sql:setDataSource var="myDataSource" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://127.0.0.1:3306/t1907m"
                       user="root"
                       password=""/>


    <sql:update var="result" dataSource="${myDataSource}">
        INSERT INTO student VALUES(33,'NGUYEN','VAN ANH','HOAI DUC');
    </sql:update>

<%--    <c:set var="studentId" value="1"/>--%>
<%--    <sql:update var="result" dataSource="${myDataSource}">--%>
<%--        DELETE FROM student WHERE id = ?--%>
<%--        <sql:param value="${studentId}"/>--%>
<%--    </sql:update>--%>

    <sql:query var="result" dataSource="${myDataSource}">
        SELECT * FROM student ;

    </sql:query>

    <table border="1" width="50%">
        <tr>
            <th>Student Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.firstname}"/></td>
                <td><c:out value="${row.lastname}"/></td>
                <td><c:out value=" ${row.address}"/></td>
            </tr>
        </c:forEach>
    </table>

<%--               <c:forEach var="row" items="${result.rows}">--%>
<%--                   ${row.id}--%>
<%--                   ${row.firstname}--%>
<%--                   ${row.lastname}--%>
<%--                   ${row.address}--%>
<%--               </c:forEach>--%>
</body>
</html>
