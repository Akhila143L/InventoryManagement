<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory Management</title>
</head>
<style>
h1
{
  background-color: #FFE4C4;
 
}
body {
  background-image: url('https://learn.g2.com/hubfs/iStock-1024926532.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<h1 style="font-size:30px;height:40px; text-align:center;"> INVENTORY MANAGEMENT</h1>

<form   method="get" action="AddCustomer.jsp">
<center>
<div style="color:black;"><b> Customer Name :</b><input type="text" name="customerName" size="30" /><br /> </div>
<br/>

<div style="color:black;"><b>Customer PhoneNo :</b><input type="text" name="customerPhoneNo" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>Gender :</b><input type="radio" name="gender" value="MALE"size="30" />MALE
<input type="radio" name="gender" value="FEMALE" size="30" />FEMALE<br/></div>
<br/>
<div style="color:black;"><b>Address 1:</b><input type="text" name="address1" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>Address 2:</b><input type="text" name="address2" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>ZipCode :</b>
<input type="text" name="zipcode" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>City :</b>
<input type="text" name="city" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>User Name :</b>
<input type="text" name="userName" size="30" /><br /> </div>
<br/>
<div style="color:black;"><b>Pass Code :</b>
<input type="text" name="passCode" size="30" /><br /> </div>
<br/>
<div class="Back">
<input type="button" name="Back" value="Back" onclick="window.location='MenuPage.jsp'">
</div><br/>
<div class="Show">
<input type="button" name="Show" value="Show" onclick="window.location='ShowCustomer.jsp'">
</div><br/><br/>
<input type="submit"  value="SUBMIT"><br/><br/>
</form>

<c:if test="${param.customerid!= null }">
Customer Name :
<input type="text" name="customerName" ><br/><br/>
Customer PhoneNo :
<input type="text" name="customerPhoneNo" ><br/><br/>
Gender :
<input type="radio" name="gender" value="MALE">MALE<br/><br/>
<input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
Address 1:
<input type="text" name="address1" ><br/><br/>
Address 2:
<input type="text" name="address2" ><br/><br/>
ZipCode :
<input type="text" name="zipcode" ><br/><br/>
City :
<input type="text" name="city" ><br/><br/>
User Name :
<input type="text" name="userName" /><br /><br/>
Pass Code :
<input type="text" name="passCode" /><br /><br/>
<input type="submit"  value="SUBMIT">
</c:if>
</center>
<c:if test="${param.customerName!=null }">
		<jsp:useBean id="customer" class="com.infinite.inventory.Customer"/>
		<jsp:useBean id="beanDAO" class="com.infinite.inventory.InventoryDAO"/>
				<jsp:setProperty property="customerName" name="customer"/>		
				<jsp:setProperty property="customerPhoneNo" name="customer"/>
				<jsp:setProperty property="gender" name="customer"/>
				<jsp:setProperty property="address1" name="customer"/>
				<jsp:setProperty property="address2" name="customer"/>
				<jsp:setProperty property="zipcode" name="customer"/>
			    <jsp:setProperty property="city" name="customer"/>			
			    <jsp:setProperty property="userName" name="customer"/>				
			    <jsp:setProperty property="passCode" name="customer"/>				
				<jsp:setProperty property="*" name="customer"/>				
		<c:out value="${beanDAO.addCustomer(customer)}"/>
	</c:if>
</body>
</html>