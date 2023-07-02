<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="alljs_css.jsp" %>
	
    <title>Note Taker</title>
    
    <style type="text/css">
        .leftsection {
            text-decoration:none;
            padding: 12px;
            background-color:#F44336;
            text-transform: uppercase;
            font-color:black;
            font-weight: bold;
            color: white;
            border: none;
            border-radius: 8px;
            box-shadow: 0 6px 20px -8px rgba(0, 0, 0, 01.5);
            font-size: 16px;
            cursor: pointer;
            transition: all 500ms ease;
            font-family: 'Poppins', sans-serif;
        }
    
    </style>
    
  </head>
  <body>
   
   	<div class="container-fluid p-0 m-0">
   		<%@include file="navbar.jsp" %>
   	
   		<br>
   		<div class="container text-center ">
   			<img alt="" class="img-fluid " style="height: 500px; width: 500px"	src="img/notepad.png">
   			<h3 class="text-primary text-uppercase text-center">Start Taking your notes</h3>
   			<button class="leftsection"><a href="add_notes.jsp">Start</a></button>
   		</div>
   	</div>
   
  </body>
</html>