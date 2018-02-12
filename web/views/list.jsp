<%@ page import="java.util.List" %>
<%@ page import="main.java.entities.Book" %><%--
  Created by IntelliJ IDEA.
  User: Denis
  Date: 11.02.2018
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book list</title>
</head>
<body>
Books Title:
<div>
    <%
        List<String> books = (List<String>) request.getAttribute("titleList");

        if (books != null && !books.isEmpty()) {
            out.println("<ui>");
            for (String s : books) {
                out.println("<li>" + s + "</li>");
            }
            out.println("</ui>");
        } else out.println("<p>There are no books yet!</p>");
    %>
</div>
Books Author:
<div class="left-container">
<%
    List<String> authors = (List<String>) request.getAttribute("authorList");

    if (authors != null && !authors.isEmpty()) {
        out.println("<ui>");
        for (String s : authors) {
            out.println("<li>" + s + "</li>");
        }
        out.println("</ui>");
    }
%>
</div>
<div>
    <button onclick="location.href='/'">Back to start page</button>

</div>
</body>
</html>
