<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Student Application With Database</title>
</head>
<body >
<h1 style="text-align: center;color: red;background: #525D76">Student Registration</h1>
<div>
	<form action='save' method='post' onsubmit='return validation(this)'>
	
	 	<fieldset style='margin-left:400px;margin-right:400px;'>
			<legend style='text-align:center'>Store Student Result</legend><br>
 	
 	<table style="text-align: center;">	
		<tr>
			<td>Id</td>
			<td><input type="text" name='id'> <br/><br/></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name='name'> <br/><br/></td>
		</tr>
		<tr>
			<td>Course</td>
			<td><input type="text" name='course'> <br/><br/></td>
		</tr>
		<tr>
			<td>Fee</td>
			<td><input type="number" name="fee"> <br/><br/></td>
		</tr>
		
		<tr>
			<td>M1</td>
			<td> <input type="number" name="m1"> <br/><br/></td>
		</tr>
		<tr>
			<td>M2</td>
			<td> <input type="number" name="m2"> <br/><br/></td>
		</tr>
		<tr>
			<td>M3</td>
			<td> <input type="number" name="m3"> <br/><br/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Genrate Result"></td>
		</tr>	
	</table>
			
		</fieldset>
	</form>
	</div>
	<h1 style="color: red;background: #525D76;text-align: center;">${result}</h1>
	<script type="text/javascript">
	function validation(frm) {
		var m1=frm.m1.value;
		var m2=frm.m2.value;
		var m3=frm.m3.value;
		
		if(m1>100 || m1<0){
			alert("M1 marks must be less then 100 & must be greter then 0");
			frm.m1.focus();
			return false;
		}
		if(m2>100 || m2<0){
			alert("M2 marks must be less then 100 & must be greter then 0");
			frm.m2.focus();
			return false;
		}
		if(m3>100 || m3<0){
			alert("M3 marks must be less then 100 & must be greter then 0");
			frm.m3.focus();
			return false;
		}
		return true;
	}
	</script>
</body>
</html>