function LoginValidate() 
{ 
	var decimal=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	
	if(document.getElementById('id_password').value.match(decimal)) 
	{ 
		document.getElementById('id_password_validation').innerHTML = "";
		document.getElementById("loginform").submit(); 
	}
	else
	{ 
		document.getElementById('id_password_validation').innerHTML = "Should contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character (length 8 to 15).";
	
	
	}
}

function RegisterValidate() 
{ 
	var decimal=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	var letters = /^[A-Za-z]+$/;
	var nameregex = /^[A-Za-z\ ]+$/;
	
	var trigger1 = false;
	var trigger2 = false;
	
	
	
	if(document.getElementById('id_password').value.match(decimal)) 
	{
		document.getElementById('id_password_validation').innerHTML = "";
		trigger1 = true;
	}
	else
	{ 
		document.getElementById('id_password_validation').innerHTML = "Should contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character (length 8 to 15).";
	}
	
	
	if(document.getElementById('id_Name').value.match(nameregex)) 
	{
		document.getElementById('id_Name_validation').innerHTML = "";
		trigger2 = true;
	}
	else
	{ 
		document.getElementById('id_Name_validation').innerHTML = "Should contain letters and Space only (max length 64).";
	}
	
	
	
	
	
	if(trigger1 && trigger2)
	{
		document.getElementById("registerform").submit(); 
	}
}