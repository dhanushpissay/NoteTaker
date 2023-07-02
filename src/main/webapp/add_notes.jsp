<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="alljs_css.jsp" %>
<title>Add Notes</title>

</head>
<body>

	<div class="container-fluid p-0 m-0">
   		<%@include file="navbar.jsp" %>
   		
   		<br>
   	</div>
   	
   	<div class="container p-5">
   		
   		<h1 class="font"> Note Details</h1>
   		<br>
   		<!-- This is add form -->
   		
   		
   		<form action="SaveNoteServlet" method="post">
   		
		  <div class="form-group">
		    <label for="title" class="font">Note Title</label>
		    <input 
		    	name = "title"
		    	required
		    	type="text"  
		    	class="form-control" 
		    	id="title" 
		    	aria-describedby="emailHelp" 
		    	placeholder="Enter here"/>
		  </div>
		  
		  <div class="form-group">
		    <label for="content" class="font">Note Content</label>
		 	<textarea 
		 		required
		 		name = "content"
		 		id="content"
		 		placeholder="Enter your content here"
		 		class="form-control"
		 		style="height:200px"	
		 	></textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Add</button>
		  </div>
		  
		</form>
   		
   		
   	</div>

	


</body>
</html>