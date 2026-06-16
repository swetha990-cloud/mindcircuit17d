<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/libs/jsp/libs/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Java Project</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

    <header>
        <h1>Welcome to My Sample Java Application</h1>
    </header>

    <main>
        <section>
            <h2>Application Status</h2>
            <p>The application is running successfully.</p>
            
            <%-- 
              SonarQube Best Practice: 
              Always use <c:out> or expression language with proper escaping to prevent XSS.
              Never use <%= request.getParameter(...) %> directly.
            --%>
            <p>
                Hello, <strong><c:out value="${param.username != null ? param.username : 'Guest'}" /></strong>!
            </p>
        </section>
    </main>

    <footer>
        <p>&copy; ${pageContext.request.contextPath != null ? '2026' : ''} My Java Project. All rights reserved.</p>
    </footer>

    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
