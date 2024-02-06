<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Header</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="">
            <span>
              Eternal
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          
          <%String email=session.getAttribute("email").toString(); %>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.html"><%out.println(email);%><span class="sr-only">(current)</span></a>
                </li>
                  <li class="nav-item active">
                  <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="myCart.jsp">My Cart</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="jewellery.html">My Order</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Change Details</a>
                </li>
                 <li class="nav-item">
                  <a class="nav-link" href="contact.html">Message Us</a>
                </li>
                  </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
              </ul>

            </div>
          
       
               <form class="form-inline mr-auto" action="searchHome.jsp" method="post">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" name="search" aria-label="Search">
            <button class="btn blue-gradient btn-rounded btn-sm my-0" type="submit">Search</button>
          </form>
            
            </div>
          </div>
        </nav>
      
    </header>
    </body>