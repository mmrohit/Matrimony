function stateChange(){
	document.input.statev.value=document.input.state.value;
}

function heightChange(){
	document.input.heightv.value=document.input.height.value;
}

function weightChange(){
	document.input.weightv.value=document.input.weight.value;
}

function msChange(){
	document.input.msv.value=document.input.ms.value;
}

function populateHeight()
{
	limit=55;
	for(var i=0;i<220;i++)
	document.getElementById('height').options[i]=new Option(limit,limit++);
	}
	
function populateWeight()
{
	limit=30;
	for(var i=1;i<123;i++)
	document.getElementById('weight').options[i]=new Option(limit,limit++);
	}


function validate()
{
	re=new RegExp(/[^a-zA-Z]/);
	re1=new RegExp(/^.+@.+\..+$/);
	re2=new RegExp(/\s/);
	re4= new RegExp (/[^0-9]/);
	
	if(document.input.fnamev.value== ""){
			window.alert("First Name can not be Empty");
			document.input.fnamev.focus();
			return false;
		}	
			else if(re.test(document.input.fnamev.value)|| re2.test(document.input.fnamev.value)){
			window.alert("Invalid First name..Please dont have spaces");
			document.input.fnamev.focus();
			return false; 
			}
			
				else if(re.test(document.input.mnamev.value)){
				window.alert("Invalid Middle name");
				document.input.mnamev.focus();
				return false; 
				}
				else if(document.input.lnamev.value== ""){
					window.alert("Last Name can not be Empty");
					document.input.lnamev.focus();
					return false;
				}	
					else if(re.test(document.input.lnamev.value)){
					window.alert("Invalid Last name");
					document.input.lnamev.focus();
					return false; 
					}
					else if((x=document.input.emailv.value) == "" || !re1.test(x))
						{
						window.alert("Enter Email")
						document.input.emailv.focus();
						return false;
						}
					else if((x=document.input.mobilev.value)== "" || x.length != 10 ||(re4.test(x))|| re2.test(x))
					{
						window.alert("Enter Proper Mobile No.");
						document.input.mobilev.focus();
						return false;
					}
	
					else if(document.input.pass.value != "<%= session.getAttribute("pass") %>" )
						{
						
						window.alert("Enter Correct Password");
						document.input.pass.focus();
					    return false;
		
						}
					
		return true;
	
	}//validate

