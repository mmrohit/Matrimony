

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href=style.css>
<link rel="shortcut icon" href="Ico.ico">
<script>
function LO()
{
	window.location="LO";
	}

</script>
</head>

<body>

<% 
request.getSession(false);
if(session.getId()!= session.getAttribute("sess"))
	response.sendRedirect("Welcome.html");
	%>
<center>
<ul class="header">
<li><a class="header" href="ProfileView.jsp?uname=${sessionScope.uname}"> Welcome: ${sessionScope.fname}</a></li>
<li><a class="header" href="Home.jsp">Search</a></li>
<li><a class="header" href="ProfileEdit.jsp">Edit Profile</a></li>
<li><a class="header" href="Photo.jsp">Photo Management</a></li>
<li><a class="header" href="AM.jsp">Account Management</a></li>
<li><a class="header" href="LO">LOGOUT</a></li>
</ul>
<br>
</center>
</body>
</html>
