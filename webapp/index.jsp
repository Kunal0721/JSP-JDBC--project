<!DOCTYPE html>
<html>
<head>
  <title>User Management</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.10/dist/sweetalert2.min.css">
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
  
    .container {
      text-align: center;
    }
  
    form {
      align-items: center;
    }
  
    input[type="submit"] {
      background-color: navy;
      color: white;
      padding: 10px 20px;
      border-radius: 5px;
      border: none;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>User Management</h1>
    
    <form action="UserController.jsp" method="post">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" required><br><br>
  
      <label for="lastName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" required><br><br>
  
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required><br><br>
  
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required><br><br>
  
      <input type="submit" value="Add User">
    </form>
  </div>

  <%-- JavaScript code to handle SweetAlert notifications --%>
  <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
      %>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.10/dist/sweetalert2.all.min.js"></script>
      <script>
        Swal.fire({
          icon: 'success',
          title: 'Success!',
          text: '<%= message %>',
          timer: 2000,
          showConfirmButton: false
        });
      </script>
      <%
    }
  %>
</body>
</html>