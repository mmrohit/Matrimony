function validate()
{
	var re= new RegExp(/\s/);
	if(document.form.answer.value != "<%= request.getAttribute("A") %>")
	{
		window.alert("Security Answer Wrong");
		document.form.answer.focus();
		return false;
		
	}
	if((x=document.form.npass.value) == "" || x.length<5 || re.test(x) )
		{
			window.alert("Enter Proper Password");
			document.form.npass.focus();
			return false;
		
		}
	if(document.form.npass.value != document.form.renpass.value)
		{
		window.alert("Retyped Password Not Same");
		document.form.renpass.focus();
		return false;
		}
		
	return true;
}