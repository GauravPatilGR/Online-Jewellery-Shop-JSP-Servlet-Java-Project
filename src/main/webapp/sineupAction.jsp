<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>

<%


String name,email,number,sq,answer,password,address,city,state,country;

name=request.getParameter("name");
email=request.getParameter("email");
number=request.getParameter("number");
sq=request.getParameter("sq");
answer=request.getParameter("answer");
password=request.getParameter("password");
address="";
city="";
state="";
country="";

try{
	
	Connection con=Connetion_provider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into users values('"+name+"' , '"+email+"' ,'"+number+"' , '"+sq+"' ,'"+answer+"' ,'"+password+"')");
	ps.executeUpdate();
	
	response.sendRedirect("signup.jsp?msg=true");
	
	
}

catch(Exception e){
	out.println(e);
	response.sendRedirect("signup.jsp?msg=false");
	
	
}









%>