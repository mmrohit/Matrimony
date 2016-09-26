<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To Matrimony</title>
<link rel="shortcut icon" href="Ico.ico">
<script>


function populateAge1()
{
	limit=18;
	for(i=0;i<64;i++)
	document.getElementById('age1').options[i]=new Option(limit,limit++);
	}
	
function populateAge2()
{
	limit=18;
	for(i=0;i<64;i++)
	document.getElementById('age2').options[i]=new Option(limit,limit++);
	}	

function populateHeight1()
{
	limit=55;
	for(i=0;i<220;i++)
	document.getElementById('height1').options[i]=new Option(limit,limit++);
	}
	
function populateHeight2()
{
	limit=55;
	for(i=0;i<220;i++)
	document.getElementById('height2').options[i]=new Option(limit,limit++);
	}	
	
function validate()
{
	if(document.ser.age1.value>document.ser.age2.value)
		{
		window.alert("Enter Proper Range of Age");
		document.ser.age2.focus();
		return false;
		}
	else if( document.ser.height2.value < document.ser.height1.value  ){
		
		window.alert("Enter Proper Range of Height");
		document.ser.height2.focus();
		return false;
	}else if( (x=document.ser.height1.value) > (y=document.ser.height2.value)  ){
		
		window.alert("Enter Proper Range of Height");
		document.ser.height2.focus();
		return false;
	}
	
	return true;
	}

</script>
</head>
<body onLoad="populateAge1(),populateAge2(), populateHeight2(),populateHeight1(), back()">
<hr size=10 color=YELLOW>
<%@ include file="Header.jsp" %>
<hr size=10 color=YELLOW>
<div id="spacer"></div> 
<div id="contentwrap"> 
<div id="content">


<center>
<h1><u>Welcome to Matrimonial Services</u></h1>
<br>
<br>
Search for your patrner
<form action=Search name=ser id=ser method="POST" onsubmit="return validate();">
<table align=center cellspacing=10>
<tr>
<td>
<table border=3 bordercolor=BLACK cellpadding=10 align=center>


<tr><th>*Age:</th>
<td>

From:<select name="age1" id="age1">
 </select> &nbsp;
To:<select name="age2" id="age2">
</select>

</td></tr>

<tr> <th>*Gender:</th>
<td><input type="radio" name="sex" value="male">Male
<input type="radio" name="sex" value="female" checked>Female</td>
</tr>
<tr><th>*Height(in cm)</th><td> From: <select name=height1 id=height1 ></select>
								To:<select name=height2 id=height2 ></select>
								</td></tr>

<tr><th>*Marital Status</th><td><select name=ms>
												<option value="Never-Married" selected>Never Married</option>
												<option value=Divorced>Divorced</option>
												<option value=Widowed>Widowed</option> </select></td></tr>

</table>
</td>
<td>
<table border=3 bordercolor=BLACK cellpadding=10 align=center>
<tr><th>State:</th><td> 

<select name=state>
<option value="" selected>Select</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
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
<tr><th>Mother Tongue:</th><td><select name=mt>
								<option value="" selected>Select</option>
								<option value="Assamese">Assamese</option>
								<option value="Bengali">Bengali</option>
								<option value="Bodo">Bodo</option>
								<option value="Dogri">Dogri</option>
								<option value="Gujarati">Gujarati</option>
								<option value="Hindi">Hindi</option>
								<option value="Kannada">Kannada</option>
								<option value="Konkani">Konkani</option>
								<option value="Maithili">Maithili</option>
								<option value="Malayalam">Malayalam</option>
								<option value="Manipuri">Manipuri</option>
								<option value="Assamese">Assamese</option>
								<option value="Marathi">Marathi</option>
								<option value="Nepali">Nepali</option>
								<option value="Oriya">Oriya</option>
								<option value="Punjabi">Punjabi</option>
								<option value="Santhali">Santhali</option>
								<option value="Sindhi">Sindhi</option>
								<option value="Tamil">Tamil</option>
								<option value="Telugu">Telugu</option>
								<option value="Urdu">Urdu</option>
						</select></td></tr>
								
<tr><th>Religion:</th><td> <select name="religion">
							<option value="" selected>Select</option>
							<option value=Hinduism>Hinduism</option>
							<option value=Christianity>Christianity</option>
							<option value=Islam>Islam</option>
							<option value=Sikhism>Sikhism</option>
							<option value=Buddhism>Buddhism</option>
							<option value=Jainism>Jainism</option>	
							</select></td></tr>

<tr><th>Zodiac:</th><td><select name=zodiac>
<option value="" selected>Select</option>
<option value="Aquarius">Aquarius</option>
<option value="Pisces">Pisces</option>
<option value="Aries">Aries</option>
<option value="Taurus">Taurus</option>
<option value="Gemini">Gemini</option>
<option value="Cancer">Cancer</option>
<option value="Leo">Leo</option>
<option value="Virgo">Virgo</option>
<option value="Libra">Libra</option>
<option value="Scorpio">Scorpio</option>
<option value="Sagittarius">Sagittarius</option>
<option value="Capricorn">Capricorn</option>
</select></td></tr>



</table>
</table>
<center><button type=submit>Search</button></center>
</form>
</center> 
</div><!-- content --> 
</div><!-- contentwrap --> 
<div id="footer"><%@ include file="Footer.html" %></div>
</body>

</html>