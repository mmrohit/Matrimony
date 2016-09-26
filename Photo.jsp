<%@ page import="Bean.ImageBean" %>

<% ImageBean obj=new ImageBean(); 
	obj.setPhoto((String)session.getAttribute("uname"));
	int i=obj.getPhoto();

%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Your Display Pic</title>
<script>
function validate()
{
	
	if(document.photo.image.value == "")
		{
		window.alert("Select An Image To Upload");
		return false;
		}
		return true;
		}
</script>
</head>
<body>
<center>
<hr color="green">
<%@ include file="Header.jsp" %>
<hr color="green">
<br>


</center>
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">
<center>

<table border=5>
<tr><th>Current Image:</th>
<td>
<%
if(i==1){ %> <img src="ProfileImages/${sessionScope.uname}.jpg" height=100 width=100>
<%} else if(i==2){ %> <img src="ProfileImages/male.gif" height=100 width=100>
<%} else if(i==3){ %><img src="ProfileImages/female.gif" height=100 width=100><%} %>
</td>

</table>
<br>
<hr color="green">
<h2><u>Update Image</u></h2>
<div style="border:2px solid; width:30%;" >
<br>
<form name="photo" method=post enctype="multipart/form-data" action="ImageUpdate" onsubmit="return validate()">
<input type="hidden" name=check value="update">
<input type="file" name=image accept="image/*"><br>
<hr style="height:1px; background-color: BLACK;">
<input type="submit" value="Upload New Photo">
</form>
</div>
<br>
<hr color="green">
<h2><u>Remove Image</u></h2>
<form method=post name=remove action="ImageUpdate" enctype="multipart/form-data">
<input type="hidden" name=check value="remove">
<Button type=submit>Remove Photo </Button>
</form>
</div>
</center>
<hr color="green">

</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>
</html>