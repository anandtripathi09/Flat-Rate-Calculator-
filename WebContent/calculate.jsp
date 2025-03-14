<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Total Cost</title>
    <script>
        function showPopup(totalCost) {
            alert("The total cost of the plot is: Rs" + totalCost);
            window.location.href = "step1.jsp"; // Redirect back to the first step
        }
    </script>
</head>
<body>
    <%
        // Get total square footage and rate from Step 2
        String totalSqFtStr = request.getParameter("totalSqFt");
        String rateStr = request.getParameter("rate");
        int totalSqFt = Integer.parseInt(totalSqFtStr);
        int rate = Integer.parseInt(rateStr);

        // Calculate total cost
        int totalCost = totalSqFt * rate;
    %>
    <script>
        // Display total cost in a popup
        showPopup(<%= totalCost %>);
    </script>
</body>
</html>
