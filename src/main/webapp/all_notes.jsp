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

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		
	</div>
	
	<div class="container">
			<div class="row">

			<div class="col-12">
				<h1 class="font" >All Notes</h1>
					 <!-- 	This is scriplet tag -->
				   	<%
				   			SessionFactory factory = FactoryProvider.getFactory();
				   			Session session1 = factory.openSession();
				   			Query q = session1.createQuery("from Note");
				   			List<Note> list = q.list();
				   			for(Note n : list)
				   			{		
				   	%>
				   	
						<div class="card mt-3">
							  <img class="card-img-top pl-4 pt-4 mx-auto" style="max-width:80px" src="img/note.png" alt="Card image cap">
							    <div class="card-body px-5">
									    <h5 class="card-title"><%= n.getTitle() %></h5>
									    <p class="card-text"><%= n.getContent() %></p>
									    <p class="text-primary"><b><%= n.getAddedDate() %></b></p>
							    
							    <div class="text-center mt-2">
								  
								    	<a href="editpage.jsp?noteID=<%=n.getId() %>" class="btn btn-danger">Edit</a>
								    	<a href="DeleteServlet?noteID=<%=n.getId() %>" class="btn btn-danger">Delete</a>
							    </div>
							  </div>
						</div>
				   	
				   	<% 			
				   				
				   			}
				   			session1.close();
				   	%>
		
			</div>
		</div>
	
	
	</div>
	
	





</body>
</html>