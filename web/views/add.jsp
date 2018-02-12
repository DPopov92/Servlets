<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new book</title>
</head>
<body>
<div class="center"> Add book:
</div>
<div>
    <form method="post">
        <label>Title:
            <input type="text" name="title"><br />
        </label>
        <label>Author:
            <input type="text" name="author"><br />
        </label>
        <%--<label>ISBN:--%>
            <%--<input type="text" name="isbn"><br />--%>
        <%--</label>--%>
        <%--<label>Description:--%>
            <%--<input type="text" name="description"><br />--%>
        <%--</label>--%>
        <%--<label>Year print:--%>
            <%--<input type="text" name="printYear"><br />--%>
        <%--</label>--%>
        <button type="submit">Submit</button>
    </form>
</div>
<div>
    <button onclick="location.href='/'">Back to start page</button>
</div>
<div>
    <button onclick="location.href='/list'">Back to Books list</button>
</div>
</body>
</html>
