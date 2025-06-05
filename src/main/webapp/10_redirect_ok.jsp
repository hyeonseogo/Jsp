<%--
  Created by IntelliJ IDEA.
  User: 김선미
  Date: 25. 6. 5.
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userid = request.getParameter("userid");
//    request.setAttribute("userid", userid); // 적용 안됨!
//    response.sendRedirect("10_redirect_result.jsp");
%>
<html>
<head>
    <title>Title</title>
    <script>
        window.onload=function (){
            document.getElementById("hiddenValue").value = "<%=userid%>"
            document.getElementById("redirectForm").submit();
        }

        //location.href = '10_redirect_result.jsp?userid=' + "userid" // get
    </script>
</head>
<body>
<form id="redirectForm" method="post" action="10_redirect_result.jsp">
    <input type="hidden" id="hiddenValue" name="userid" value="<%=userid%>">
</form>
</body>
</html>
