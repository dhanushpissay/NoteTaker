<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="alljs_css.jsp"%>
<title>All Notes:Note Taker</title>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">This is edit page</h1>

		<%
				
			int id = Integer.parseInt(request.getParameter("noteID").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note n = (Note)	s.get(Note.class, id);
		
		%>
		
		<form action="UpdateServlet" method="post">
   		
   		<input value="<%=n.getId()%>" name="noteID" type="hidden" >
   		
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input 
		    	name = "title"
		    	required
		    	type="text"  
		    	class="form-control" 
		    	id="title" 
		    	aria-describedby="emailHelp" 
		    	placeholder="Enter here"
		    	value="<%=n.getTitle() %>"
		    	/>
		    	
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		 	<textarea 
		 		required
		 		name = "content"
		 		id="content"
		 		placeholder="Enter your content here"
		 		class="form-control"
		 		style="height:200px"><%=n.getContent()%></textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Save</button>
		  </div>
		  
		</form>
		
	</div>




</body>
</html>