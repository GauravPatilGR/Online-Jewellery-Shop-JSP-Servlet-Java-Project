<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>
<%@ include file="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	
	<h3 class="alert">Product Added Successfully!</h3>
	
<%}%>

<%

if("wrong".equals(msg))
{%>
	
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
	
	
<%}%>








<%

int id=1;
try{
	
	
	Connection con=Connetion_provider.getcon();
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(id) from product");
    while(rs.next())
    {
    	id=rs.getInt(1);
    	id=id+1;
    	
    	
    }
	
}


catch(Exception e){
	
	
}



%>
<form action="addnewProductAction.jsp"   method="post">
<br><br>
<h3 style="color: black;">Product ID:  <%out.print(id);%> </h3>
<input type="hidden" name="id" value=" <%out.print(id);%>">
<br><br>

<div class="left-div">
 <h3>Enter Name</h3>
 <input type="text" name="name" placeholder="Enter Product Name" required>
 
 
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<input type="text" name="category" placeholder="Enter Product Category" required>
 
<hr>
<br>
</div>

<div class="left-div">
<h3>Enter Price</h3>
<input type="number" name="price" placeholder="Enter Product price" required>
 
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
              <button type="submit" class="btn btn-warning" style="padding:12px; margin:15px; width:330px">
                Save item
              </button>
              </div>
 
 
</form>







<%@ include file="../footer.jsp" %>
</body>
<br><br><br>
</body>
</html>