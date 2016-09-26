<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Your Account Settings</title>
<script language="JavaScript" src="am.js"></script>
</head>
<body>
<hr color="GREEN">
<%@include file="Header.jsp" %>
<hr color="GREEN">
<br>
<br>
<br>
<br>


<hr color="GREEN">
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">

<center>

<form name="form1" id="form1" action="AccUpd" onsubmit="return validate1();" method="POST">
<input type="hidden" name="check" value="form1"> 
<table>
<tr><th>Username:</th> <td>&nbsp; ${sessionScope.uname}</td></tr>
<tr><th>*New Password:</th><td><input type="password" name="newpass"></td></tr>
<tr><th>*Retype Password:</th><td><input type="password" name="newrepass"></td></tr>
<tr><th>*Old Password:</th><td><input type="password" name="pass"></td></tr>
</table>
<button type="submit" >Change Password</button>
</form>
<br><br>

<hr color=green>

<form name="form2" id="form2" action="AccUpd" method="POST" onsubmit="return validate2();">
<input type="hidden" name="check" value="form2"> 
<table>
<tr><th>Security Question:</th> <td><input type="text" name="questionv" size=35 value="${sessionScope.question}" readonly></td></tr>

<tr><th>Change Question:</th><td><select name="question" onchange="change()">
			<option value="${sessionScope.question}" selected>Select</option>
			<option value="Who is your favorite superhero?">Who is your favorite superhero?</option>
			<option value="What is the name of your first crush?">What is the name of your first crush?</option>
			<option value="Where was your mother born?">Where was your mother born?</option>
			<option value="What was your first school?">What was your first school?</option>

		</select>
</td>
</tr>
<tr><th>*New Answer:</th><td><input type="password" name="nanswer" id="nanswer" maxlength=10/></td></tr>
<tr><th>*Current Password:</th> <td><input type="password" name="pass" id="pass" maxlength=15/></td></tr>
</table>
<button type="submit">Change Security</button>
</form>
<hr color="GREEN">
</center>

</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>

</html>