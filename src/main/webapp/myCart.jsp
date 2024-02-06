<%@ include file="header.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style>
h3
{
	color: black;
	text-align: center;
}
body{
background:#ddd;
}

.link-p {
    display: block;
    min-height: 250px;
    height: auto;
    width: 100%;
    max-width: 100%;
    margin-right: auto;
    margin-left: auto;
}

/* TABLES */
.table {
    border-collapse: separate;
}
.table-hover > tbody > tr:hover > td,
.table-hover > tbody > tr:hover > th {
    background-color: #eee;
}
.table thead > tr > th {
	border-bottom: 1px solid #C2C2C2;
	padding-bottom: 0;
}
.table tbody > tr > td {
	font-size: 0.875em;
	background: #f5f5f5;
	border-top: 10px solid #fff;
	vertical-align: middle;
	padding: 12px 8px;
}
.table tbody > tr > td:first-child,
.table thead > tr > th:first-child {
	padding-left: 20px;
}
.table thead > tr > th span {
	border-bottom: 2px solid #C2C2C2;
	display: inline-block;
	padding: 0 5px;
	padding-bottom: 5px;
	font-weight: normal;
}
.table thead > tr > th > a span {
	color: #344644;
}
.table thead > tr > th > a span:after {
	content: "\f0dc";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-left: 5px;
	font-size: 0.75em;
}
.table thead > tr > th > a.asc span:after {
	content: "\f0dd";
}
.table thead > tr > th > a.desc span:after {
	content: "\f0de";
}
.table thead > tr > th > a:hover span {
	text-decoration: none;
	color: #2bb6a3;
	border-color: #2bb6a3;
}
.table.table-hover tbody > tr > td {
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
}
.table tbody tr td .call-type {
	display: block;
	font-size: 0.75em;
	text-align: center;
}
.table tbody tr td .first-line {
	line-height: 1.5;
	font-weight: 400;
	font-size: 1.125em;
}
.table tbody tr td .first-line span {
	font-size: 0.875em;
	color: #969696;
	font-weight: 300;
}
.table tbody tr td .second-line {
	font-size: 0.875em;
	line-height: 1.2;
}
.table a.table-link {
	margin: 0 5px;
	font-size: 1.125em;
}
.table a.table-link:hover {
	text-decoration: none;
	color: #2aa493;
}
.table a.table-link.danger {
	color: #fe635f;
}
.table a.table-link.danger:hover {
	color: #dd504c;
}

.table-products tbody > tr > td {
	background: none;
	border: none;
	border-bottom: 1px solid #ebebeb;
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
	position: relative;
}
.table-products tbody > tr:hover > td {
	text-decoration: none;
	background-color: #f6f6f6;
}
.table-products .name {
	display: block;
	font-weight: 600;
	padding-bottom: 7px;
}
.table-products .price {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}
.table-products .price > i {
	color: #8dc859;
}
.table-products .warranty {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}
.table-products .warranty > i {
	color: #f1c40f;
}
.table tbody > tr.table-line-fb > td {
	background-color: #9daccb;
	color: #262525;
}
.table tbody > tr.table-line-twitter > td {
	background-color: #9fccff;
	color: #262525;
}
.table tbody > tr.table-line-plus > td {
	background-color: #eea59c;
	color: #262525;
}
.table-stats .status-social-icon {
	font-size: 1.9em;
	vertical-align: bottom;
}
.table-stats .table-line-fb .status-social-icon {
	color: #556484;
}
.table-stats .table-line-twitter .status-social-icon {
	color: #5885b8;
}
.table-stats .table-line-plus .status-social-icon {
	color: #a75d54;
}
</style>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>


              <%
              
              String msg=request.getParameter("msg");
              if("notPossible".equals(msg))
              {
              %>
            	 <h3 class="alert">There is only one Quantity! So click on remove!</h3>
              
              <%  }%>
              
              
              
             <%
             if("inc".equals(msg))
             {
             %>
            	 
            	<h3 class="alert">Quantity  Increased Successfully!</h3>
             <% }%>
             
              <%
             if("dec".equals(msg))
             {
             %>
            	 
            	 <h3 class="alert">Quantity  Decreased Successfully!</h3>
             <% }%>
             
               <%
             if("removed".equals(msg))
             {
             %>
            	 
            	<h3 class="alert">Product Successfully Removed!</h3>
             <% }%>
   










<div class="container bootdey">
<div class="row bootstrap snippets">
    <div class="col-lg-3 col-md-3 col-sm-12">
        <!-- Best Seller -->
        <div class="col-lg-12 col-md-12 col-sm-12 hidden-xs">
           
                
                
                    
                            
                        <p></p>
                    </div>
                </div>
        </div>
        <!-- End Best Seller -->
    </div>
    <div class="clearfix visible-sm"></div>

    <!-- Cart -->
    <div class="col-lg-9 col-md-9 col-sm-12">
        <div class="col-lg-12 col-sm-12">
            <span class="title">SHOPPING CART</span>
        </div>
        <div class="col-lg-12 col-sm-12 hero-feature">
            <div class="table-responsive">
            
            <%
            int total=0;
            int sno=0;
            try
            {
            	
            	Connection con=Connetion_provider.getcon();
            	Statement st=con.createStatement();
            	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
            	while(rs1.next())
            	{
            		total=rs1.getInt(1);
            	}
            	
            }
            
            catch(Exception e)
            {
            	System.out.println(e);
            }
            
            
            
            
            
            
            
            %>
            
            
            
            
                <table class="table table-bordered tbl-cart">
                    <thead>
                        <tr>
                            <td>S.No</td>
                            <td>Product Name</td>
                            <td>Categody</td>
                            <td>Price</td>
                            <td class="td-qty">Quantity</td>
                         
                            <td>Sub Total</td>
                            <td>Remove</td>
                        </tr>
                    </thead>
                    
                    <%
                    
                    Connection con=Connetion_provider.getcon();
                	Statement st=con.createStatement();
                	ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and email='"+email+"' and address is NULL");
                	
                	
                	while(rs.next())
                	{  %>
                    
                  
                    
                    
                    
                  
                    
                    
                    
                    
                    
                    <tbody>
                    
                   
                        <tr>
                          <%sno=sno+1;%>
                            <td class="hidden-xs">
                             <% out.println(sno);%>
                            </td>
                            <td>
                                <%=rs.getString(2)%>
                            </td>
                            <td>
                                 <%=rs.getString(3)%>
                            </td>
                            <td>  <%=rs.getString(4)%></td>
                            <td>
                               <a href="incdecquantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"> <div class="input-group bootstrap-touchspin"><span class="input-group-btn"><button class="btn btn-default bootstrap-touchspin-down" type="button">-</button></span><span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span></a><input type="text" name="" value="  <%=rs.getString(8)%>" class="input-qty form-control text-center" style="display: block;"> <a href="incdecquantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span><span class="input-group-btn"><button class="btn btn-default bootstrap-touchspin-up" type="button">+</button></span></a></div>
                            </td>
                            <td class="price">  <%=rs.getString(10)%></td>
                          
                            <td class="text-center">
                                <a href="removefromcart.jsp?id=<%=rs.getString(1)%>" class="remove_cart" rel="2">
                                    <i class="fa fa-trash-o"></i>
                                </a>
                            </td>
                        </tr>
                       
                          
                            </td>
                        </tr>
                    </tbody>
                    <%}%>
                      <td colspan="6" align="right">Total</td>
                      <td class="total" colspan="2"><b><%out.println(total); %></b>
                </table>
            </div>
            <div class="btn-group btns-cart">
               
              <%if(total>0) {%>   <a href="addressPaymentForOrder.jsp"><button type="button" class="btn btn-primary">Proceed to Order <i class="fa fa-arrow-circle-right"></i></button></a> <%} %>
            </div>

        </div>
    </div>
    <!-- End Cart -->


</body>
</html>