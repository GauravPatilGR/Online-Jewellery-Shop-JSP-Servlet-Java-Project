<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>

<%



String id,name,category,price,active;


id=request.getParameter("id");

name=request.getParameter("name");

category=request.getParameter("category");

price=request.getParameter("price");

active=request.getParameter("active");


try{
Connection con=Connetion_provider.getcon();

PreparedStatement ps=con.prepareStatement("insert into product values('"+id+"','"+name+"','"+category+"','"+price+"','"+active+"')");

ps.executeUpdate();

response.sendRedirect("addNewProduct.jsp?msg=done");
}

catch(Exception e){
	
	out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}














%>