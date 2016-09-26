<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Editor</title>

<script language="JavaScript" src="editprofile.js"></script>



<link rel="shortcut icon" href="Ico.ico">
</head>
<body onLoad="populateHeight(),populateWeight()">
<center>
<hr color=BLUE>
<%@ include file="Header.jsp" %>
<hr color=BLUE>
<br>
<br>
<br>
<hr color=BLUE>
</center>
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">
<center>

<form name=input action=Update method="post" onSubmit="return validate()">
<br>
<table>
<tr>
<td>
<table>
<tr>
<td>
<tr><th align=right>*First Name:</th><td><input type="text" name="fnamev" value=<%= session.getValue("fname") %> maxlength=15 readonly></td></tr>
<tr><th align=right>Middle Name:</th><td><input type="text" name="mnamev" value="<%= session.getValue("mname") %>" maxlength=15></td></tr>
<tr><th align=right>*Last Name:</th><td><input type="text" name="lnamev" value=<%=session.getValue("lname") %> maxlength=15></td></tr>
<tr><th align=right>*Email:</th><td><input type=text name="emailv" value= <%= session.getValue("email") %> ></td></tr> 
<tr><th align=right>*Mobile No:</th><td>+91<input type=text name=mobilev size=16  value="<%= session.getValue("mobile")%>" maxlength=10> </td></tr>
</table>
</td>
<td>
<table>
<tr><th></th><th>Current Info &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Select To Update </th></tr>
<tr><th align=right>*State:</th><td> 

<input type="text" name=statev value="<%= session.getValue("state") %>" size=30 readonly ><select name=state onChange=stateChange() >

<option value="Andaman and Nicobar Islands" selected>Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
</select></td></tr>
<tr><th align=right>*Marital Status:</th><td><input type="text" name=msv value=<%= session.getValue("ms") %> readonly ><select name=ms onChange=msChange() >
												<option value="Never-Married" selected>Never Married</option>
												<option value=Divorced>Divorced</option>
												<option value=Widowed>Widowed</option> </select></td></tr>
<tr><th align=right>*Height(in cm):</th><td> <input type="text" name=heightv value=<%= session.getValue("height") %> readonly ><select name=height id=height onChange=heightChange()></select></td></tr>
<tr><th align=right>Weight(in kg):</th><td><input type="text" name=weightv value= "<%= session.getValue("weight") %>" readonly ><select name=weight id=weight onChange=weightChange() ><option value=" " selected>Select</option></select></td></tr>





</table>
</td>
</tr>
</table><br>
<table><tr><td>Password:<input type="password" name=pass></td><td><button type="submit"><img src="Update.png"  width=100 height=40></button><td></tr></table>
</form>

</center> 
<hr color=BLUE>
</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>
</html>
