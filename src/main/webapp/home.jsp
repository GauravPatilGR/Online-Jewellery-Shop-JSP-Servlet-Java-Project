<%@ include file="header.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="project.Connetion_provider"%>
<%@page import="java.sql.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
   <!-- slider section -->
    <section class=" slider_section position-relative">
      <div class="design-box">
        <img src="images/design-1.png" alt="">
      </div>
      <div class="slider_number-container d-none d-md-block">
        <div class="number-box">
          <span>
            
          </span>
          <hr>
          <span class="jwel">
            J <br>
            e <br>
            w <br>
            e <br>
            l <br>
            l <br>
            e <br>
            r <br>
            y
          </span>
          <hr>
          <span>
            
          </span>
        </div>
      </div>
      <div class="container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Jewellery
                    </h1>
                    <p>
                      "Discover elegance and craftsmanship in our jewelry collection. From classic to contemporary, our pieces reflect your unique style and life's special moments. Find radiance in every piece."
                    </p>
                    <div>
                      <a href="">Shop Now</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Jewellery
                    </h1>
                    <p>
                      "Elevate your style with our exquisite jewelry collection. Each piece is a timeless expression of beauty and craftsmanship, perfect for celebrating life's moments or simply adding a touch of elegance to your everyday. Explore our curated selection and discover the artistry of jewelry."
                    </p>
                    <div>
                      <a href="">Shop Now</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img2.png" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Jewellery
                    </h1>
                    <p>
                      "Adorn your life with our stunning jewelry pieces. From classic to contemporary, each creation reflects elegance and craftsmanship. Discover timeless beauty for every moment."
                    </p>
                    <div>
                      <a href="">Shop Now</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img3.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  <!-- item section -->
  
 
                    		
  
  

  <div class="item_section layout_padding2">
    <div class="container">
      <div class="item_container">
        <div class="box">
          <div class="price">
            <h6>
              Best PRICE
            </h6>
          </div>
          <div class="img-box">
            <img src="images/i-1.png" alt="">
          </div>
          <div class="name">
            <h5>
              Bracelet
            </h5>
          </div>
        </div>
        
        
        <div class="box">
          <div class="price">
            <h6>
              Best PRICE
            </h6>
          </div>
          <div class="img-box">
            <img src="images/i-2.png" alt="">
          </div>
          <div class="name">
            <h5>
              Wedding Ring
            </h5>
          </div>
        </div>
        <div class="box">
          <div class="price">
            <h6>
              Best PRICE
            </h6>
          </div>
          <div class="img-box">
            <img src="images/i-3.png" alt="">
          </div>
          <div class="name">
            <h5>
              Earings
            </h5>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- end item section -->

  <!-- about section -->

  <section class="about_section layout_padding2-top layout_padding-bottom">
    <div class="design-box">
      <img src="images/design-2.png" alt="">
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Us
              </h2>
            </div>
            <p>
              Welcome to Eternal Gems Gallery, where we marry timeless elegance with contemporary style. With a passion for jewelry, we curate a collection that's more than adornment; it's an experience. Backed by years of industry expertise, we're committed to craftsmanship, quality, and your satisfaction.  Our friendly and knowledgeable team is here to guide you in finding that perfect piece. At Eternal Gems Gallery, we believe in making your jewelry shopping journey memorable and personal. Thank you for choosing us as your destination for jewelry. Explore our collection and let our pieces inspire your story.            </p>
            <div>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- price section -->
  
  <div class="heading_container">
    
        <h2>
          Our Jewellery And Price
        </h2>
      </div>	 
      
       <center>
              <%
              
              String msg=request.getParameter("msg");
              if("exist".equals(msg))
              {
              %>
            	  <h5>Prodcut alredy exist Added one More Time</h5>
              
              <%  }%>
              
              
              
             <%
             if("added".equals(msg))
             {
             %>
            	 
            	 <h5>Product Added Successfully</h5>
             <% }%>
             
              <%
             if("invalid".equals(msg))
             {
             %>
            	 
            	 <h5>Something Went Wrong</h5>
             <% }%>
   </center>
  
   <%Connection con=Connetion_provider.getcon();
                    		  
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from product where active='yes'");
   while( rs.next())
   {%>
   
   


	   
 
 <tr>
  <section class="price_section layout_padding" >
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
            <h6><%=rs.getString(3) %></h6>
            <h5>
              RS<span> <%=rs.getString(4)%></span>
            </h5>
          
            </td>
            <a href="addTocartAction.jsp?id=<%=rs.getString(1)%>">
              Add to Cart
            </a>
          </div>
          
        </div>
       
        
       
    
    </div>
     </div>
  </section>
  
   </tr>
   
   
   
   
   
   
   
   
   
   
  
<%}%>
  <!-- end price section -->

  <!-- ring section -->

 
  
  <!-- end ring section -->

  <!-- client section -->

  <section class="client_section">
    <div class="container">
      <div class="heading_container">
        <h2>
          Testimonial
        </h2>
      </div>
      <h4 class="secondary_heading">
        What is says our customer
      </h4>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="client_container">
              <div class="client-id">
                <div class="img-box">
                  <img src="images/client.png" alt="">
                </div>
                <div class="name">
                  <h5>
                    Rohit
                  </h5>
                  <h6>
                    India
                  </h6>
                </div>
              </div>
              <div class="detail-box">
                <p>
                  "My jewelry from Eternal Gems Gallery is simply stunning! The craftsmanship and gemstone quality are exceptional. I always receive compliments when I wear it. Highly recommended!"
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="client_container">
              <div class="client-id">
                <div class="img-box">
                  <img src="images/client.png" alt="">
                </div>
                <div class="name">
                  <h5>
                    Gaurav 
                  </h5>
                  <h6>
                    USA
                  </h6>
                </div>
              </div>
              <div class="detail-box">
                <p>
                  I can't express how delighted I am with my recent experience shopping at Eternal Gems Gallery, the online jewelry store. This hidden gem on the internet has quickly become my favorite go-to place for all things sparkling and elegant.
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="client_container">
              <div class="client-id">
                <div class="img-box">
                  <img src="images/client.png" alt="">
                </div>
                <div class="name">
                  <h5>
                    Prajwal
                  </h5>
                  <h6>
                    Nepal
                  </h6>
                </div>
              </div>
              <div class="detail-box">
                <p>
                  The customer service provided by Eternal Gems Gallery's online team is top-notch. They're responsive, knowledgeable, and always ready to assist. Their passion for jewelry is evident in the quality of their product descriptions and the helpful advice they provide.
                </p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

    </div>
  </section>

  <!-- end client section -->

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="design-box">
      <img src="images/design-2.png" alt="">
    </div>
    <div class="container ">
      <div class="">
        <h2 class="">
          Contact Us
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <form action="">
            <div>
              <input type="text" placeholder="Name" />
            </div>
            <div>
              <input type="email" placeholder="Email" />
            </div>
            <div>
              <input type="text" placeholder="Phone" />
            </div>
            <div>
              <input type="text" class="message-box" placeholder="Message" />
            </div>
            <div class="d-flex ">
              <button>
                SEND
              </button>
            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="map_container">
            <div class="map-responsive">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.09434251054!2d75.57317507499951!3d20.98885503914845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd90ef8f336c3a3%3A0xd664656d6be3edce!2sRameshwar%20Colony%2C%20Tambapura%2C%20Jalgaon%2C%20Maharashtra%20425001!5e0!3m2!1sen!2sin!4v1698992717073!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="info_container">
        <div class="row">
          <div class="col-md-3">
            <div class="info_logo">
              <a href="">
                <img src="images/logo.png" alt="">
                <span>
                  Eternal 
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/location.png" alt="">
                <span>
                  Address
                  Pune,Maharashtra
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/phone.png" alt="">
                <span>
                 9834583904
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/mail.png" alt="">
                <span>
                  gauravpatil@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="info_form">
          <div class="d-flex justify-content-center">
            <h5 class="info_heading">
              Newsletter
            </h5>
          </div>
          <form action="">
            <div class="email_box">
              <label for="email2">Enter Your Email</label>
              <input type="text" id="email2" placeholder="Email">
            </div>
            <div>
              <button>
                subscribe
              </button>
            </div>
          </form>
        </div>
        <div class="info_social">
          <div class="d-flex justify-content-center">
            <h5 class="info_heading">
              Follow Us
            </h5>
          </div>
          <div class="social_box">
            <a href="https://www.facebook.com/GauravpatilGR/">
              <img src="images/fb.png" alt="">
            </a>
            <a href="https://twitter.com/GauravPatilGR">
              <img src="images/twitter.png" alt="">
            </a>
            <a href="https://www.linkedin.com/in/gaurav-patil-038860269/">
              <img src="images/linkedin.png" alt="">
            </a>
            <a href="https://www.instagram.com/gauravpatil_13/">
              <img src="images/insta.png" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info_section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      &copy; <span id="displayYear"></span> All Rights Reserved By
      <a href="https://html.design/">Gaurav Patil</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>

</body>
</html>