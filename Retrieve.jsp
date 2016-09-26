
<html>
<head><title>Enter Security Answer </title>
<script language="JavaScript" src="get.js"></script>
<link rel=stylesheet href="style.css">
</head>
<body style="align:center;">

<br><br>

<center>
<h1><u>Enter New Password</u></h1>
<form name="form" action="Retrieve" onsubmit="return validate();" method=POST>
<input type="hidden" name="check" value="retrieve">
<div style="border:2px solid black; width:25%;">
<table>
<tr><th>UserName:</th><td> <input type="text" name=uname value="<%= request.getParameter("userName") %>" readonly></td></tr>
<tr><th>Question:</th> <td><%= request.getAttribute("Q") %></td> </tr> 
<tr><th>Answer:</th> <td> <input type="password" name="answer"></td></tr>
<tr><th>New Password:</th><td> <input type="password" name="npass"></td></tr>
<tr><th>Re-Type Password:</th><td> <input type="password" name="renpass"></td></tr>
</table>
<button type="submit">Set New Password</button>
</form>
</div>
</center>
</body>
</html>
