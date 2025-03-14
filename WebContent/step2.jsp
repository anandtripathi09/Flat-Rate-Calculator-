<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Step 2: Enter Rate</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <%
            // Get height and width from Step 1
            String heightStr = request.getParameter("height");
            String widthStr = request.getParameter("width");
            int height = Integer.parseInt(heightStr);
            int width = Integer.parseInt(widthStr);

            // Calculate total area
            int totalSqFt = height * width;
        %>
        <h1>Total Area: <%= totalSqFt %> sq ft</h1>
        <form method="post" action="calculate.jsp">
            <input type="hidden" name="totalSqFt" value="<%= totalSqFt %>">
            <label for="rate">Enter Rate per sq ft:</label>
            <input type="number" name="rate" id="rate" min="1" required>
            <br><br>
            <button type="submit">Calculate Total Cost</button>
        </form>
    </div>
</body>
</html>
