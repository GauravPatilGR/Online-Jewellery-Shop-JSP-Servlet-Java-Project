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

  <title>Password Page</title>

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

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="">
            <span>
              Lodge
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.html"> About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="jewellery.html">Jewellery </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Login</a>
                </li>
              </ul>

            </div>
            <div class="quote_btn-container ">
              <a href="">
                <img src="images/cart.png" alt="">
                <div class="cart_number">
                  0
                </div>
              </a>
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="design-box">
      <img src="images/design-2.png" alt="">
    </div>
    <div class="container ">
      <div class="">
        <h2 class="">
          Recover Your Password
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <form action="forgotpassAction.jsp" method="post">
           
            <div>
              <input type="text" placeholder="Enter your registered Email " name="email"  required/>
            </div>
            
            <div>
              <input type="text" placeholder="Enter your registered Number" name="number" required/>
            </div>
            
             <div class="form-group" id="smth">
                    <label for="securityQuestion">Security Question?</label>
                    <select name="sq" id="dropdown"  >
                        <option value="Where was your mother born?">Where was your mother born?</option>
                        <option value="What was your first car?">What was your first car?</option>
                        <option value="What was the first name of your first pet?">What was the first name of your first pet?</option>
                        <option value="What was your school name?">What was your school name?</option>
                        <option value="Where were you born?">Where were you born?</option>
                        <option value="What model your first smartphone was?">What model your first smartphone was?</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="secQuestAnswer">Type your security question here</label>
                    <input type="text"  name="answer"  placeholder="Answer here" required>
                </div>
                
                <div class="form-group">
                    <label for="secQuestAnswer">Password</label>
                    <input type="password" name="password"   placeholder="Enter a new Password" required>
                </div>
          
            
            <div class="d-flex ">
              <button type="submit">
                Save
              </button>
              </div>
            
             <a href="login.jsp">
            <div class="d-flex">
            <button type="button">
           <span>Login here</span>
           </button>
         </div>
</a>
             
              </form>
              
              <%
              
              String msg=request.getParameter("msg");
              if("done".equals(msg))
              {
              %>
            	  <h5>Password Changed Successfully</h5>
              
              <%  }%>
              
              
              
             <%
             if("invalid".equals(msg))
             {
             %>
            	 
            	 <h5>invalid Details! Plese try again!</h5>
             <% }%>
             
             
            	
            	 
            
               
               
               
            
              
              
              
       

 

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>
</body>

</html>