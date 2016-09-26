<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To Matrimonial Services</title>

<script>
function populateYearSelect()
{
    d = new Date();
    curr_year = d.getFullYear();
    curr_year=curr_year-18;
        for(i = 0; i < 62; i++)
    {
        document.getElementById('year').options[i] = new Option(curr_year-i,curr_year-i);
    }
}


function populateHeight()
{
	limit=55;
	for(i=0;i<220;i++)
	document.getElementById('height').options[i]=new Option(limit,limit++);
	}
	
function populateWeight()
{
	limit=30;
	for(i=1;i<123;i++)
	document.getElementById('weight').options[i]=new Option(limit,limit++);
	}


function validate()
{
	re=new RegExp(/[^a-zA-Z]/);
	re1=new RegExp(/^.+@.+\..+$/);
	re2=new RegExp(/\s/);
	re4= new RegExp (/[^0-9]/);
	if((x=document.input.uname.value) == "" || x.length < 5 || re2.test(x)){
		window.alert("Please Enter a Proper Username (Min length is 5 With No Spaces)");
		document.input.uname.focus();
		return false;
		}
	else if( (x=document.input.pass.value) == "" || x.length<5 || re2.test(x)){
		window.alert("Please Enter a Proper Password (Min length is 5 With No Spaces)");
		document.input.pass.focus();
		return false;
	}
		else if(x != document.input.repass.value){
			window.alert("Password did not match");
			document.input.repass.focus();
			return false;
		}
		else if(document.input.fname.value== ""){
			window.alert("First Name can not be Empty");
			document.input.fname.focus();
			return false;
		}	
			else if(re.test(document.input.fname.value)|| re2.test(document.input.fname.value)){
			window.alert("Invalid First name..Please dont have spaces");
			document.input.fname.focus();
			return false; 
			}
			
				else if(re.test(document.input.mname.value)){
				window.alert("Invalid Middle name");
				document.input.mname.focus();
				return false; 
				}
				else if(document.input.lname.value== ""){
					window.alert("Last Name can not be Empty");
					document.input.lname.focus();
					return false;
				}	
					else if(re.test(document.input.lname.value)){
					window.alert("Invalid Last name");
					document.input.lname.focus();
					return false; 
					}
					else if((x=document.input.email.value) == "" || !re1.test(x))
						{
						window.alert("Enter Email")
						document.input.email.focus();
						return false;
						}
					else if((x=document.input.mobile.value)== "" || x.length != 10 ||(re4.test(x))|| re2.test(x))
					{
						window.alert("Enter Proper Mobile No.");
						document.input.mobile.focus();
						return false;
					}
	
					else if(document.input.check.checked == false){
						window.alert("Accept Terms & Conditions");
						document.input.mobile.focus();
						return false;
					}
		return true;
	
	}//validate


</script>

<link rel="shortcut icon" href="Ico.ico">
<link rel="stylesheet" href="style.css">
</head>
<body onLoad="populateYearSelect(),populateHeight(),populateWeight()">
<hr color=green><H2 align=center>*****REGISTER*****</h2>
<hr color=green>

<form name=input action=Insert method="post" onSubmit="return validate()">
<table border=0 align=center cellspacing=10>
<tr>
<td>
<table   border=5 bordercolor=OLIVE cellpadding=10 align=center>
<tr><th>*Username:</th><td><input type="text" name="uname" maxlength=15 > </td></tr>
<tr><th>*Password:</th><td><input type="password" name="pass" maxlength=15></td></tr>
<tr><th>*Retype-Password:</th><td><input type="password" name="repass" maxlength=15 ></td></tr>
<tr><th>*First Name:</th><td><input type="text" name="fname" maxlength=15></td></tr>
<tr><th>Middle Name:</th><td><input type="text" name="mname" maxlength=15></td></tr>
<tr><th>*Last Name:</th><td><input type="text" name="lname"maxlength=15 ></td></tr>
<tr><th>*Date Of Birth:</th>
<td>

<select name="day">

<option value="01" selected>01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>

</select>
<select name="month">
<option value="01" selected>Jan</option>
<option value="02">Feb</option>
<option value="03">March</option>
<option value="04">April</option>
<option value="05">May</option>
<option value="06">June</option>
<option value="07">July</option>
<option value="08">Aug</option>
<option value="09">Sept</option>
<option value="10">Oct</option>
<option value="11">Nov</option>
<option value="12">Dec</option>

</select>

<select name=year id=year > </select>


</td></tr>

<tr> <th>*Gender:</th>
<td><input type="radio" name="sex" value="male" checked>Male
<input type="radio" name="sex" value="female">Female</td>
</tr>
<tr><th>*Email:</th><td><input type=text name="email"></td></tr> 
<tr>	<th>*Security Question:</th>
<td><select name="question">
			<option value="Who is your favourite superhero?" selected>Who is your favourite superhero?</option>
			<option value="What is the name of your first crush?">What is the name of your first crush?</option>
			<option value="Where was your mother born?">Where was your mother born?</option>
			<option value="What was your first school?">What was your first school?</option>

		</select></td>
</table>
</td>
<td>
<table border=5 bordercolor="OLIVE" cellpadding=10 align=center>
<tr><th>*State:</th><td> 

<select name=state>

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
<tr><th>*Mother Tongue:</th><td><select name=mt>
								
								<option value="Assamese" selected>Assamese</option>
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
								
<tr><th>*Religion:</th><td> <select name="re">
							
							<option value=Hinduism selected>Hinduism</option>
							<option value=Christianity>Christianity</option>
							<option value=Islam>Islam</option>
							<option value=Sikhism>Sikhism</option>
							<option value=Buddhism>Buddhism</option>
							<option value=Jainism>Jainism</option>	
							</select></td></tr>
<tr><th>*Marital Status</th><td><select name=ms>
												<option value="Never-Married" selected>Never Married</option>
												<option value=Divorced>Divorced</option>
												<option value=Widowed>Widowed</option> </select></td></tr>
<tr><th>*Zodiac:</th><td><select name=zodiac>

<option value="Aquarius" selected>Aquarius</option>
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
<tr><th>*Height(in cm)</th><td> <select name=height id=height ></select></td></tr>
<tr><th>Weight(in kg)</th><td><select name=weight id=weight ><option value="" selected>Select</option></select></td></tr>

<tr><th>*Mobile No:</th><td>+91<input type=text name=mobile  maxlength=10> </td></tr>
<tr><th>Photo:</th><td>Please Upload After Registration </td></tr>
<tr><th>*Security Answer:</th> <td><input type="password" maxlength=10 name="answer"> (one word answer)</td></tr>

</table>
</table>
<center> 
<input type="checkbox" name=check checked><a href="tc.html" target="_blank">Terms and Conditions</a> <br>
<button>Register</button></form>
</center>
<center>&copy 2012 M-Square</center> 
</body>
</html>
