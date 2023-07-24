<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/employee";
    String dbUsername = "root";
    String dbPassword = "root";

    try {
        // Connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Insert user data into the database
        String query = "INSERT INTO users (first_name, last_name, username, password) VALUES (?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, firstName);
        pstmt.setString(2, lastName);
        pstmt.setString(3, username);
        pstmt.setString(4, password);
        pstmt.executeUpdate();

        // Close database connection
        pstmt.close();
        conn.close();

        // Redirect back to the main page after successful insertion
        request.setAttribute("message", "Data successfully added!");
        response.sendRedirect("index.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>