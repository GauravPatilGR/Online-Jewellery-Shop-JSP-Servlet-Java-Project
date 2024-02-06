<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>

<%




   String id;

  id=request.getParameter("id");
  
  String email=session.getAttribute("email").toString();

  Connection con=Connetion_provider.getcon();
  Statement ps=con.createStatement();
  ps.executeUpdate("delete from cart where product_id='"+id+"' and email='"+email+"' and address is NULL");
  response.sendRedirect("myCart.jsp?msg=removed");
  
  
   










%>

