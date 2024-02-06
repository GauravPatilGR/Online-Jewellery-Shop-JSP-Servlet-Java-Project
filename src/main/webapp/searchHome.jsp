<%@ include file="header.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Search Items<i class="fa fa-institution"></i></div>

        
        
        
         <%
         
         int z=0;
         try{
        	 
        	 String search=request.getParameter("search");
         
             Connection con=Connetion_provider.getcon();
                    		  
        Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select *from product where name like '%"+search+"%' or category like '%"+search+"%' and active='yes'");
         while( rs.next())
         {
         
                z++;
   
                %>
    
 <tr>
  <section class="price_section layout_padding">
    <div class="container">
     
      <div class="price_container">
        <div class="box">
          <div class="name">
        <input type="hidden"  value="<%=rs.getString(1)%>" >
            <td><h6>
              <%=rs.getString(2)%>
            </h6></td>
          </div>
          <div class="img-box">
            <img src="images/p-1.png" alt="">
          </div>
          <div class="detail-box">
          <td>
            <h5>
              RS<span> <%=rs.getString(4)%></span>
            </h5>
            <h6><%=rs.getString(3) %></h6>
            </td>
            <a href="addtocart.jsp?id<%=rs.getString(1)%>">
               Add to Cart
            </a>
          </div>
          
        </div>
       
        
       
    
    </div>
  </section>
   </tr>
<%}%>
      
      
      <%}
         
         
         catch(Exception e)
         {%>
        	 
        	out.println(e);
        	 
       <%}%>
       
      
        
        <%
       if(z==0)
       {%>
    	   
    	   <h1 style="color:white; text-align: center;">Nothing to show</h1>
      <%}%>
    	   
       
         
      
      
     
      	
	
	
   
</body>
</html>