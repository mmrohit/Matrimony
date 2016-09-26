
<%@ page import="Bean.ProfileBean" %>





<html>
<head><title>Profile Viewer </title></head>
<body background="ProfileBG.jpg">

<hr size=10 color=BLACK>
<center><%@ include file="Header.jsp" %></center>
<hr size=10 color=BLACK>

<% ProfileBean obj=new ProfileBean(request.getParameter("uname").toString()); %>
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">

<center>
<% if(obj.getPhoto()==1){ %>
<img src="ProfileImages/${param.uname}.jpg" border=5 height=200 width=200>
<%}// if for useruploaded image 

else
{
	if(obj.getGender().equals("male")){
	%>
	<img  src="ProfileImages/male.gif" border=5 height=200 width=200>
    <%}//if male gender check
    else
    {%>
    	<img  src="ProfileImages/female.gif" border=5 height=200 width=200>
    <%}// else for female
}//else for default image
	%>
	<br><br>
<table style="float:center;" border=5 bordercolor=BLACK cellspacing=10 >
<tr><th>First Name:</th><td><%= obj.getFname() %></td></tr>
<tr><th>Middle Name:</th><td><%= obj.getMname() %></td></tr>
<tr><th>Last Name:</th><td><%= obj.getLname() %></td></tr>
<tr><th>Gender:</th><td><%= obj.getGender() %></td></tr>
<tr><th>Age:</th><td><%= obj.getAge() %></td></tr>
<tr><th>Date Of Birth:</th><td><%= obj.getDob() %></td></tr>
<tr><th>State:</th><td><%= obj.getState() %></td></tr>
<tr><th>Mother Tounge:</th><td><%= obj.getMt() %></td></tr>
<tr><th>Matratial Status:</th><td><%= obj.getMs() %></td></tr>
<tr><th>Religion:</th><td><%= obj.getReligion()%></td></tr>
<tr><th>Zodiac:</th><td><%= obj.getZodiac() %></td></tr>
<tr><th>Height (in cm):</th><td><%= obj.getHeight() %></td></tr>
<tr><th>Weight (in kg):</th><td><%= obj.getWeight() %></td></tr>
<tr><th>E-mail:</th><td><%= obj.getEmail() %> </td></tr>
<tr><th>Contact No:</th><td><%= obj.getMobile() %></td></tr>
</table>

</center>

</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>
</html>