<%@include file="header.html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

img{
width:100%;
height:800px;
}
.footer {
      background-color: #ffffff;
      padding: 30px;
      text-align: center;
      font-size: 18px;
      color: #444;
      box-shadow: 0 -2px 12px rgba(0, 0, 0, 0.05);
    }
</style>
</head>
<body>

<div style="max-width:100%">
  <img class="mySlides"  src="White and Green Simple World Environment Day 2025 Banner Horizontal (1).png" >
  <img class="mySlides"  src="2706868.jpg">
   <img class="mySlides"  src="coronavirus-assortment-with-blood-samples-vaccine.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

<!-- FOOTER -->
<div class="footer">
  All Rights Reserved :: 2025
</div>
</body>
</html>