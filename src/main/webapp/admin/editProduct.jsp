<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>
<%@ include file="adminHeader.jsp" %>

<html>
<head>

<title>Edit a Product</title>
</head>
<body>









<%

String id=request.getParameter("id");

try{
	
	
	Connection con=Connetion_provider.getcon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+id+"' ");
	while(rs.next())
	{%>
	
 <form action="editproductAction.jsp"   method="post">
<br><br>

<br><br>
<div class="left-div">

 <input type="hidden" name="id" value="<%=rs.getString(1) %>" required>

<div class="left-div">
 <h3>Edit Product Name</h3>
 <input type="text" name="name" value="<%=rs.getString(2) %>" required>
 
 
<hr>
</div>

<div class="right-div">
<h3>Edit Product Category</h3>
<input type="text" name="category" value="<%=rs.getString(3) %>" required>
 
<hr>
<br>
</div>

<div class="left-div">
<h3>Edit Product Price</h3>
<input type="number" name="price" value="<%=rs.getString(4) %>" required>
 
<hr>
<br>
</div>

<div class="right-div">
<h3>Active</h3>
  <select name="active" id="dropdown"  >
    <option value="yes">Yes</option>
    <option value="no">No</option>
                     
    </select>
   
<hr>
<br>
</div>
  <div class="d-flex  ">
              <button type="submit" class="btn btn-info" style="padding:12px; margin:15px; width:330px">
                Update Info
              </button>
              </div>
 
 
</form>

	    
	
	
	
	

	
	
	<% }
	
}


catch(Exception e){
	
	out.println(e);
}



%>






<%@ include file="../footer.jsp" %>
</body>
<br><br><br>
</body>
</html>