 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Page</title>

<style type="text/css">
h1
{
  background-color: #DCDCDC;
 
}
body {
  background-color: #F5F5F5;
  background-repeat: no-repeat;
  background-size: cover;
  text-align:center;
}
.logout
{ margin-top: -20px;  height: 30px;}
.aone    
{ margin-top: 6px; margin-left: 5px; height: 38px; width:850px; color: #D3D3D3;}     
.atwo   
{ margin-top: 4px; margin-left: 10px;height: 30px; width:450px; color: #ADD8E6;}
.athree  
{ margin-top: 4px; margin-left: 10px;height: 30px; width:350px; color: #E6E6FA;}
</style>
</head>
<body>
<h1 style="font-size:20px; text-align:center;"> Inventory Management</h1>
<b>
<c:out value="${sessionScope.user}" />
</b>
<br/>
<br/><br/>
<div class="logout">
<input type="button" name="logout" value="Logout" onclick="window.location='login.html'">
</div><br/><br/>
<div class="aone" style =" background-color:#FFC0CB	 ">
	<div class= "atwo" style =" background-color:#FFFAF0	 ">
	<div class= "athree" style =" background-color:#FFFAF0	 ">
	<a href="AddCustomer.jsp">Add </a> 
	</div>

	<div class="athree"style="background-color:#FFFAF0	;margin-top:-30px;margin-left:170px">
	<a href="SearchCustomer.jsp">Search</a>
	</div>
	
	<div class="athree"style="background-color:#FFFAF0	;margin-top:-30px;margin-left:330px">
	<a href="ShowCustomer.jsp">Show </a>
	</div>
	
	<div class="athree"style="background-color:#FFFAF0;margin-top:-30px;margin-left:490px">
	<a href="deleteCustomer.jsp">Delete </a>
	</div>

</div>
</div>
</body>
</html>