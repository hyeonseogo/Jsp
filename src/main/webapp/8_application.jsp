<%--
  Created by IntelliJ IDEA.
  User: 김선미
  Date: 25. 6. 5.
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int total = 0;

    if(application.getAttribute("total_count") != null){
        total = (int)application.getAttribute("total_count");
    }

    application.setAttribute("menu", Arrays.asList("홈", "등록", "구매", "마이페이지"));
    application.setAttribute("total_count", ++total);
%>
<html>
<head>
    <title>application</title>
</head>
<body>
<p><a href="8_application_home.jsp">다음 페이지로</a></p>
<p>누적된 총계: <%=total%></p>
</body>
</html>
