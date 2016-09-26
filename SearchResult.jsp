<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
<link rel=stylesheet href="style.css"/>
</head>
<body>
<hr size=10 color=YELLOW>
<%@ include file="Header.jsp" %>
<hr size=10 color=YELLOW>
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">


<% if ( Integer.parseInt((String)session.getAttribute("usercount")) == 0 )
{ %> 
<h2 align=center>Sorry, No Profile Matches Found</h2>
<%
}
else
{	
	
	String name[][]=(String [][])session.getAttribute("userlist");
	out.print("<center>");
	for(int i=0; i<(Integer.parseInt((String)session.getAttribute("usercount"))); i++)	
	{
		out.print("<a href=\"ProfileView.jsp?uname="+name[i][0]+"\">");
		if(name[i][5].equals("1"))
	out.print("<table border=3 ><tr><td><img src=ProfileImages/"+name[i][0]+".jpg height=100 width=100 /></td><td><table border=2>");
		else{
			if(name[i][6].equals("male"))
			out.print("<table border=3 ><tr><td><img src=ProfileImages/male.gif height=100 width=100 /></td><td><table border=2>");
			else
				out.print("<table border=3 ><tr><td>  <img src=ProfileImages/female.gif height=100 width=100 /></td><td><table border=2>");
		}
	for(int j=1; j<5; j++) {
	if(j==1)
	out.print("<tr><td>First Name:"+name[i][j]+"</td></tr>");
	if(j==2)
		out.print("<tr><td>Last Name:"+name[i][j]+"</td></tr>");
		if(j==3)
			out.print("<tr><td>Age:"+name[i][j]+"</td></tr>");
			if(j==4)
				out.print("<tr><td>State:"+name[i][j]+"</td></tr>");

							}
	out.print("</table></table></a><hr style=\"height:1px; background-color: #f00;\" >");
	}
	
}%>


</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>
</html>