<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>

</head>
<body>
    <h1>Login</h1>

    <%
    if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")){
        response.sendRedirect("/profile.jsp"); %>
        <h1>Welcome Admin</h1>
    <%
    } else {%>
        <h1>You're not Admin</h1>
    <%}%>

    <form method="POST" action="/login.jsp">
        Username:<br>
        <input type="text" name="username"><br>
        Password:<br>
        <input type="password" name="password"><br>
        <input type="submit" name="submit" value="Login">
    </form>
    <br>
    <div>
        <p>"username" parameter: <%= request.getParameter("username") %></p>
        <p>"password" parameter: <%= request.getParameter("password") %></p>
    </div>
</body>
</html>