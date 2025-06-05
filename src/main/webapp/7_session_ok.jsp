<%--
  Created by IntelliJ IDEA.
  User: 김선미
  Date: 25. 6. 5.
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userid = request.getParameter("userid");
    String userpw = request.getParameter("userpw");

    if(userid.equals("admin") && userpw.equals("1234")){
        session.setAttribute("userid", userid);
        response.sendRedirect("7_session_success.jsp");
    }else{
        response.sendRedirect("7_session_fail.jsp");
    }
%>
<html>
<head>
    <title>session</title>
</head>
<body>

</body>
</html>
