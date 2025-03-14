<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Step 1: Enter Plot Dimensions</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Enter Plot Dimensions</h1>
        <form method="post" action="step2.jsp">
            <label for="height">Enter Height (in sq ft):</label>
            <input type="number" name="height" id="height" min="1" required>
            <br><br>
            <label for="width">Enter Width (in sq ft):</label>
            <input type="number" name="width" id="width" min="1" required>
            <br><br>
            <button type="submit">Next</button>
        </form>
    </div>
</body>
</html>
