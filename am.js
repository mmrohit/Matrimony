
function change()
{
	document.form2.questionv.value=document.form2.question.value;
	
	}
	

	
	function validate1(){
		
		var reg= new RegExp(/\s/);
		
		if((x=document.form1.newpass.value)=="" || x.length<5 || reg.test(x))
			{
			window.alert("Enter Proper New Pass (Min Length is 5 with No spaces)");
			document.form1.newpass.focus();
			return false;
			}
		if(document.form1.newpass.value != document.form1.newrepass.value)
			{
			window.alert("New Password Mismatch");
			document.form1.newrepass.focus();
			return false;
			}
		if(document.form1.pass.value != "<%= session.getAttribute("pass") %>")
			{
			window.alert("Enter The Correct Old Password" , "Error Bro");
			document.form1.pass.focus();
			return false;
			}
	return true;
	}
	
	function validate2()
	{
		if(document.form2.nanswer.value == "")
			{
			window.alert("Enter New Answer");
			document.form2.nanswer.focus();
			return false;
			}
		if(document.form2.pass.value != "<%= session.getAttribute("pass") %>")
		{
		window.alert("Invalid Password" , "Error Bro");
		document.form2.pass.focus();
		return false;
		}
		
		return true;
	}	
	

