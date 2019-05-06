<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");   
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    System.out.println(userName);
    System.out.println(password);
    System.out.println(email);
    System.out.println(lastName);
    System.out.println(firstName);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password) values ('" + firstName + "','"
    + lastName + "','" + email + "','" + userName + "','" + password);
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>