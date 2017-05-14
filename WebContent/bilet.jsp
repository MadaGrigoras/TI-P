
<!DOCTYPE html>
<html lang="en">
<head>
 
  <title>Pegasus Flights</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.css">
  <link href="style.css" rel="stylesheet" type="text/css">
  <link href="style.css" rel="stylesheet" type="text/css">
  <script src="jquery.js"></script>
  <script src="bootstrap.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  

  div.align1 {
    position: relative;
    min-height: 1px;
    padding-left: 12px;
    padding-right: 12px;
    float: left;
    width: 33.33333333333333%;
  }

  div.alignLeft12 {
    margin-left: 16%;
  }

  div.alignRight12 {
    margin-right: 16%
  }

  .buttonAlign {
    margin-left: 33.33333333333333%;
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
    float: left;
  }
  
  .jumbotron {
      background-color:#07033d;
      color: #fff;
      padding: 90px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #cc3333; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #cc3333 !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
	   background-color:#07033d;
 
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #990703 !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
</head>


<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<!-- NAVBAR SUS -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
      </button>
      <img src="logo.png" alt="Logo" height="110" width="160" >
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
		<li><a href="#tickets">TICKETS</a></li>
        <li><a href="#about">ABOUT US</a></li>
        <!--<li><a href="#services">SERVICES</a></li> -->
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#pricing">OFFERS</a></li>
        <!--<li><a href="#contact">CONTACT</a></li> -->
      </ul>
    </div>
  </div>
</nav>
<!-- NAVBAR SFARSIT -->

<!-- PARTEA DE SUS -->
<div class="jumbotron text-center">
<!-- FINAL PARTEA DE SUS -->
  <h1>Pegasus Flights</h1> 
  <br>
  <p>We specialize in your safe and comfortable flight</p> 
</div>

<div class="align1 alignLeft12" id="tickets">
    <h4 style="text-align:center">One way ticket</h4>
    <hr>
    <!-- one way ticket -->
    <form>
      <fieldset>
          <label class="align1" for="Departure">Departure</label>
          <div>
            <input type="text"  placeholder="Departure" class="form-control" name="Departure" id="Departure">
          </div>
          
          <label class="align1" for="Arrival">Arrival</label>
          <div>
            <input type="text" placeholder="Destination" class="form-control" name="Destination" id="Destination">
          </div>
          
          <label class="align1" for="DepartureDate">Departure Date</label>
          <div>
            <input type="date" placeholder="Date" class="form-control" name="DepartureDate" id="DepartureDate">
          </div>
			<br>
          <div class="buttonAlign">
            <button type="submit" class="btn btn-success">Search</button>
            <button type="reset" class="btn btn-primary">Clear</button>
          </div>
      </fieldset>
    </form>
        
        <!-- one way form ends -->    
  </div>
 
<!-- Container (About Section) -->
<div id="about" class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-8">
      <h2>About PEGASUS FLIGHTS</h2><br>
      <h4>Since February 2017, when we've started with just 5 members, our company kept expanding, bringing a considerable change to the world of air transportation throughout Europe.
            We are here to make your desire to travel easier.</h4><br>
      <p><i>"The moment you doubt whether you can fly, you cease for ever to be able to do it."</i>
― J.M. Barrie, Peter Pan</p>
<p><i>Good things come to those who book flight! Dream high!</i></p>
      <br>
    </div>
  </div>
</div>
<!-- (About Section) Sfarsit   -->


<!-- Container (Portfolio Section) -->  
<div id="portfolio" class="container-fluid text-center">
  <h2>Portfolio</h2><br>
  <h4>Our Gallery</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/1-peisaj.png" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/2-peisaj.png" alt="New York" width="400" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/3-peisaj.png" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
	<div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/4-peisaj.png" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
	<div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/5-peisaj.png" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
	<div class="col-sm-4">
      <div class="thumbnail">
        <img src="photos/6-peisaj.png" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
  </div><br>
  
  <h2>What our customers say :</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>  <!-- ADAUGATA DE MINE -->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the services!"<br><span>Michael Roe, Vice President, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span>John Doe,Professional Security Manager, London</span></h4>
      </div>
      <div class="item">
        <h4>"I love the way it is designed.It's so easy to use, simple and efficient !"<br><span>James Smith, Department Director, Berlin</span></h4>
      </div>
	  <div class="item">
        <h4>"One of the most intuitive interface i've ever used."<br><span>Sarah Ryder, Architect, Leicester</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	  <!--
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span> -->
	  <span class="sr-only">Previous</span>
	  <button class="btn btn-lg">&larr;</button>
	  
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<!--
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span> -->
	  <span class="sr-only">Next</span>
	  <button class="btn btn-lg">&rarr;</button>
    </a>
  </div>
</div>
<!-- (Portfolio Section) Sfarsit -->  

<!-- Container (Pricing(OFFERS) Section) -->
<div id="pricing" class="container-fluid bg-grey"> 
  <div class="text-center">
    <h2>Offers</h2>
    <h4>You can choose from the following monthly offers: </h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Best Deal</h1>
        </div>
        <div class="panel-body">
          <p align="center"><strong>Paris</strong> &rarr; <strong>Bucharest</strong></p>
          <p align="center"><strong>Madrid</strong> &rarr; <strong>Iasi</strong></p>
          <p align="center"><strong>Oslo</strong> &rarr; <strong>Timisoara</strong></p>
          <p align="center"><strong>Dublin</strong> &rarr; <strong>Suceava</strong></p>
          <p align="center"><strong>Moscow</strong> &rarr; <strong>Bacau</strong></p>
        </div>
        <div class="panel-footer">
          <h3>Only 60 &euro;</h3>
          <h4>per ticket</h4>
          <!-- TO BE ROM LATER <button class="btn btn-lg">Sign Up</button> -->
        </div>
      </div>      
    </div>  

	<!-- POZA MIJLOC   -->
	 <div class="col-sm-4">
		  <div class="thumbnail">
			<img src="photos/family.png" alt="Paris" width="400" height="300">
			
		  </div>
	</div>
		
	
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Family Pack</h1>
        </div>
        <div class="panel-body">
          <p><strong>Children under 4 years old </strong> have free tickets </p>
          <p><strong>Children between 4 and 12 years old</strong> have 50% ticket discount</p>
          <p><strong>Children between 12 and 18 years old </strong> have 25% ticket discount </p>
		  <p> .</p>
		  <p> .</p>
          <!--<p><strong>5</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p> -->
        </div>
        <div class="panel-footer">
          <h3>Available THIS WEEK</h3>
          <h4>.</h4>
          <!--  <button class="btn btn-lg">Sign Up</button> -->
        </div>
      </div>   
	
    </div>   

  </div>
  
</div>
<!-- (Pricing(OFFERS) Section) Sfarsit --> 

<!-- Footer -->
<footer class="container-fluid text-center"> 
  <a href="#myPage" title="To Top">
	<button class="btn btn-lg">&uarr; Back To Top</button>
  </a>
  <p> &copy; 2017 Pegasus Flights </p>
  
</footer>
<!-- Footer  Sfarsit-->

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
