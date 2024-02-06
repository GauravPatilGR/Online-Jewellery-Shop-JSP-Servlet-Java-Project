
<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>

<%

try{
	
	Connection con=Connetion_provider.getcon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(100),answer varchar(100),password varchar(100),address varchar(100),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table product(id int,name varchar(200),category varchar(200),price int,active varchar(10))";
	String q3="create table cart(email varchar(100),product_id int,quantity int, price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobilenumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionid varchar(100),status varchar(10) )";
	//out.println(q1);
	//out.println(q2);
	out.println(q3);
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	out.print("tanle");
	
	
}


catch(Exception e){
	
	out.println(e);
	
}


%>